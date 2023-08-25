# DFLoggingLibrary

DFLoggingLibrary is a Delphi logging library for logging messages of different severity levels.

## Features

- Supports different log levels: Debug, Info, Warning, Error.
- Easily configurable log file name and location.
- Simplified interface for logging messages of different severity levels.

## Installation

1. Download or clone the DFLoggingLibrary repository.
2. Include the `DFLoggingLibrary.pas` unit in your Delphi project.

## Usage

```delphi
uses
  // ... other units ...
  DFLoggingLibrary;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Debug('This is a debug message.');
  Info('This is an info message.');
  Warning('This is a warning message.');
  Error('This is an error message.');
end;
```

## Log Levels
DFLoggingLibrary provides different log levels that can be used to categorize your log messages:

Debug: Detailed information, useful for debugging purposes.
Info: General information about the application's flow.
Warning: Indicates potential issues or non-critical problems.
Error: Indicates critical errors or failures.
Configuration
The library allows you to configure the log file name and location during initialization:

```delphi
InitializeLog('app_log.txt'); // Default log file name
```
You can also customize the library further to match your specific logging needs.

