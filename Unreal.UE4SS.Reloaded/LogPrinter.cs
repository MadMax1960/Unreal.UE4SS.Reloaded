using System;
using System.IO;
using System.Text;
using System.Threading;
using Reloaded.Mod.Interfaces;

namespace UE4SSReloaded;

internal sealed class LogPrinter : IDisposable
{
    private const int PollIntervalMilliseconds = 500;

    private readonly ILogger _logger;
    private readonly string _logFilePath;
    private readonly string _logPrefix;
    private readonly object _lock = new();

    private Timer? _timer;
    private long _lastPosition;
    private bool _logFileMissingNotified;

    public LogPrinter(ILogger logger, string logDirectory, string logPrefix)
    {
        _logger = logger;
        _logPrefix = logPrefix;
        _logFilePath = Path.Combine(logDirectory, "UE4SS.log");
    }

    public void SetEnabled(bool enabled)
    {
        lock (_lock)
        {
            if (enabled)
            {
                if (_timer != null)
                {
                    return;
                }

                _logFileMissingNotified = false;
                _timer = new Timer(ReadLogCallback, null, TimeSpan.Zero, TimeSpan.FromMilliseconds(PollIntervalMilliseconds));
            }
            else
            {
                _timer?.Dispose();
                _timer = null;
            }
        }
    }

    private void ReadLogCallback(object? state)
    {
        lock (_lock)
        {
            if (_timer == null)
            {
                return;
            }

            try
            {
                if (!File.Exists(_logFilePath))
                {
                    if (!_logFileMissingNotified)
                    {
                        _logger.WriteLine($"[{_logPrefix}] UE4SS.log not found at '{_logFilePath}'. Waiting for the file to be created...");
                        _logFileMissingNotified = true;
                    }

                    return;
                }

                _logFileMissingNotified = false;

                using var stream = new FileStream(_logFilePath, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
                if (_lastPosition > stream.Length)
                {
                    _lastPosition = 0;
                }

                stream.Seek(_lastPosition, SeekOrigin.Begin);

                using var reader = new StreamReader(stream, Encoding.UTF8, detectEncodingFromByteOrderMarks: true);
                string? line;
                while ((line = reader.ReadLine()) != null)
                {
                    if (line.Length == 0)
                    {
                        _logger.WriteLine(string.Empty);
                    }
                    else
                    {
                        _logger.WriteLine(line);
                    }
                }

                _lastPosition = stream.Position;
            }
            catch (Exception ex)
            {
                _logger.WriteLine($"[{_logPrefix}] Failed to read UE4SS.log: {ex.Message}");
            }
        }
    }

    public void Dispose()
    {
        lock (_lock)
        {
            _timer?.Dispose();
            _timer = null;
        }
    }
}