unit MainFrm;

interface
uses
  System.Classes,
  Vcl.ComCtrls,
  Vcl.Controls,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.StdCtrls,

  X2Log.Intf;

  
type
  TMainForm = class(TForm)
    btnClose: TButton;
    btnVerbose: TButton;
    edtMessage: TEdit;
    GroupBox1: TGroupBox;
    lblMessage: TLabel;
    mmoEvent: TMemo;
    pcObservers: TPageControl;
    pnlButtons: TPanel;
    tsEvent: TTabSheet;
    tsFile: TTabSheet;
    lblException: TLabel;
    edtException: TEdit;
    btnException: TButton;
    tsNamedPipe: TTabSheet;
    btnMonitorForm: TButton;
    btnInfo: TButton;
    btnWarning: TButton;
    btnError: TButton;
    
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure pcObserversChange(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnLogClick(Sender: TObject);
    procedure edtExceptionKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtMessageKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnExceptionClick(Sender: TObject);
    procedure btnMonitorFormClick(Sender: TObject);
  private
    FLog: IX2Log;
    FObserver: IX2LogObserver;
  protected
    procedure InitObserver;

    procedure DoLog(Sender: TObject; Level: TX2LogLevel; const Msg, Details: string);
  end;


implementation
uses
  System.SysUtils,
  Winapi.Windows,

  X2Log,
  X2Log.Constants,
  X2Log.Exception.madExcept,
  X2Log.Observer.Event,
  X2Log.Observer.LogFile,
  X2Log.Observer.MonitorForm,
  X2Log.Observer.NamedPipe;


{$R *.dfm}


{ TMainForm }
procedure TMainForm.FormCreate(Sender: TObject);
begin
  { Testing the localization (Dutch) }
  SetLogResourceString(@LogLevelVerbose, 'Uitgebreid');
  SetLogResourceString(@LogLevelInfo, 'Informatie');
  SetLogResourceString(@LogLevelWarning, 'Waarschuwing');
  SetLogResourceString(@LogLevelError, 'Fout');

  SetLogResourceString(@LogMonitorFormColumnTime, 'Tijd');
  SetLogResourceString(@LogMonitorFormColumnMessage, 'Melding');

  SetLogResourceString(@LogMonitorFormButtonClear, 'Wissen');
  SetLogResourceString(@LogMonitorFormButtonCopyDetails, 'Kopieren');
  SetLogResourceString(@LogMonitorFormButtonSaveDetails, 'Opslaan');
  SetLogResourceString(@LogMonitorFormStatusPaused, 'Gepauseerd: %d melding(en) overgeslagen');

  FLog := TX2Log.Create;
  FLog.SetExceptionStrategy(TX2LogmadExceptExceptionStrategy.Create);

  pcObservers.ActivePageIndex := 0;
  InitObserver;
end;


procedure TMainForm.FormDestroy(Sender: TObject);
begin
  FLog := nil;
end;


procedure TMainForm.InitObserver;
var
  activePage: TTabSheet;

begin
  if Assigned(FObserver) then
  begin
    FLog.Detach(FObserver);
    FObserver := nil;
  end;

  activePage := pcObservers.ActivePage;

  if activePage = tsEvent then
    FObserver := TX2LogEventObserver.Create(DoLog)
  else if activePage = tsFile then
    FObserver := TX2LogFileObserver.CreateInProgramData('X2LogTest\Test.log');

  if activePage = tsNamedPipe then
  begin
    FObserver := TX2LogNamedPipeObserver.Create('X2LogTest');
  end else
  begin

  end;

  if Assigned(FObserver) then
    FLog.Attach(FObserver);
end;


procedure TMainForm.DoLog(Sender: TObject; Level: TX2LogLevel; const Msg, Details: string);
begin
  mmoEvent.Lines.Add(GetLogLevelText(Level) + ': ' + Msg + ' (' + Details + ')');
end;


procedure TMainForm.edtMessageKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    btnException.Click;
    Key := 0;
  end;
end;


procedure TMainForm.edtExceptionKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    btnException.Click;
    Key := 0;
  end;
end;

procedure TMainForm.pcObserversChange(Sender: TObject);
begin
  InitObserver;
end;


procedure TMainForm.btnCloseClick(Sender: TObject);
begin
  Close;
end;


procedure TMainForm.btnLogClick(Sender: TObject);
begin
  if Sender = btnVerbose then
    FLog.Verbose(edtMessage.Text)
  else if Sender = btnInfo then
    FLog.Info(edtMessage.Text)
  else if Sender = btnWarning then
    FLog.Warning(edtMessage.Text)
  else if Sender = btnError then
    FLog.Error(edtMessage.Text);
end;


procedure TMainForm.btnExceptionClick(Sender: TObject);
begin
  try
    { Throw an actual exception, don't just create it, to allow
      strategies like madExcept to do their stack trace }
    raise EAbort.Create(edtException.Text);
  except
    on E:Exception do
      FLog.Exception(E);
  end;
end;


procedure TMainForm.btnMonitorFormClick(Sender: TObject);
begin
  TX2LogObserverMonitorForm.ShowInstance(FLog);
end;

end.
