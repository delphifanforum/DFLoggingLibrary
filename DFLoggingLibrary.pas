unit DFLoggingLibrary;

interface

uses
  DFLogging;

type
  TLogLevel = (llDebug, llInfo, llWarning, llError);

  TDFLogger = class
  private
    FLogger: TLogger;
  public
    constructor Create(const ALogFileName: string = '');
    destructor Destroy; override;

    procedure Log(const AMessage: string; ALogLevel: TLogLevel = llInfo);
    procedure Debug(const AMessage: string);
    procedure Info(const AMessage: string);
    procedure Warning(const AMessage: string);
    procedure Error(const AMessage: string);
  end;

implementation

constructor TDFLogger.Create(const ALogFileName: string);
begin
  inherited Create;
  FLogger := TLogger.Create;
  FLogger.LogFileName := ALogFileName;
  // Additional configuration can be done here
end;

destructor TDFLogger.Destroy;
begin
  FLogger.Free;
  inherited;
end;

procedure TDFLogger.Log(const AMessage: string; ALogLevel: TLogLevel);
begin
  case ALogLevel of
    llDebug: Debug(AMessage);
    llInfo: Info(AMessage);
    llWarning: Warning(AMessage);
    llError: Error(AMessage);
  end;
end;

procedure TDFLogger.Debug(const AMessage: string);
begin
  FLogger.Debug(AMessage);
end;

procedure TDFLogger.Info(const AMessage: string);
begin
  FLogger.Info(AMessage);
end;

procedure TDFLogger.Warning(const AMessage: string);
begin
  FLogger.Warning(AMessage);
end;

procedure TDFLogger.Error(const AMessage: string);
begin
  FLogger.Error(AMessage);
end;

end.
