unit SimpleLoggingLibrary;

interface

type
  TLogLevel = (llDebug, llInfo, llWarning, llError);

  procedure InitializeLog(const ALogFileName: string = '');
  procedure FinalizeLog;

  procedure Log(const AMessage: string; ALogLevel: TLogLevel = llInfo);
  procedure Debug(const AMessage: string);
  procedure Info(const AMessage: string);
  procedure Warning(const AMessage: string);
  procedure Error(const AMessage: string);

implementation

var
  LogFile: TextFile;
  LogLevel: TLogLevel = llInfo;

procedure InitializeLog(const ALogFileName: string);
begin
  AssignFile(LogFile, ALogFileName);
  Rewrite(LogFile);
end;

procedure FinalizeLog;
begin
  CloseFile(LogFile);
end;

procedure Log(const AMessage: string; ALogLevel: TLogLevel);
begin
  if ALogLevel >= LogLevel then
    Writeln(LogFile, AMessage);
end;

procedure Debug(const AMessage: string);
begin
  Log(AMessage, llDebug);
end;

procedure Info(const AMessage: string);
begin
  Log(AMessage, llInfo);
end;

procedure Warning(const AMessage: string);
begin
  Log(AMessage, llWarning);
end;

procedure Error(const AMessage: string);
begin
  Log(AMessage, llError);
end;

initialization
  InitializeLog('app_log.txt'); // Default log file name

finalization
  FinalizeLog;

end.
