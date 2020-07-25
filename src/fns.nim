#[
   The code is automatically generated by the genBind tool.
   Author: ying32
   https://github.com/ying32
]#
{.experimental: "codeReordering".}


import lclapi, vcl, types, strutils


proc ShowMessageFmt*(formatstr: string, a: varargs[string, `$`]) =
  ShowMessage(strutils.format(formatstr, a))

proc GetFPStringArrayMember*(p: pointer, index: int): string =
  return $lclapi.DGetStringArrOf(p, index)

proc SelectDirectory*(Directory: var string, Options: TSelectDirOpts, HelpCtx: int32): bool =
  var ps1: cstring = Directory
  result = lclapi.DSelectDirectory1(ps1, Options, HelpCtx)
  if result:
    Directory = $ps1

proc SelectDirectory*(Caption: string, Root: string, AShowHidden: bool, Directory: var string): bool =
  var ps4: cstring = Directory
  result = lclapi.DSelectDirectory2(Caption, Root, AShowHidden, ps4)
  if result:
    Directory = $ps4

proc InputQuery*(ACaption: string, APrompt: string, Value: string, AOut: var string): bool =
  var ps4: cstring = AOut
  result = lclapi.DInputQuery(ACaption, APrompt, Value, ps4)
  if result:
    AOut = $ps4

proc GetLibResourceItem*(AIndex: int32): TResItem =
  lclapi.DGetLibResourceItem(AIndex, result)

proc StringToGUID*(AGUIDStr: string): TGUID =
  lclapi.DStringToGUID(AGUIDStr, result)

proc CreateGUID*(): TGUID =
  lclapi.DCreateGUID(result)

when defined(linux):
  proc GdkWindow_GetXId*(AW: PGdkWindow): TXId =
    lclapi.GdkWindow_GetXId(AW, result)



proc LibStringEncoding*(): TStringEncoding =
  return lclapi.DLibStringEncoding()

proc LibVersion*(): uint32 =
  return lclapi.DLibVersion()

proc SysLocale*(AInfo: var TSysLocale) =
  lclapi.DSysLocale(AInfo)

proc TextToShortCut*(AText: string): TShortCut =
  return lclapi.DTextToShortCut(AText)

proc ShortCutToText*(AVal: TShortCut): string =
  return $lclapi.DShortCutToText(AVal)

when not defined(windows):
  proc SendMessage*(hWd: HWND, msg: uint32, wParam: WPARAM, lParam: LPARAM): LRESULT =
    return lclapi.DSendMessage(hWd, msg, wParam, lParam)

when not defined(windows):
  proc PostMessage*(hWd: HWND, msg: uint32, wParam: WPARAM, lParam: LPARAM): bool =
    return lclapi.DPostMessage(hWd, msg, wParam, lParam)

when not defined(windows):
  proc IsIconic*(hWnd: HWND): bool =
    return lclapi.DIsIconic(hWnd)

when not defined(windows):
  proc IsWindow*(hWnd: HWND): bool =
    return lclapi.DIsWindow(hWnd)

when not defined(windows):
  proc IsZoomed*(hWnd: HWND): bool =
    return lclapi.DIsZoomed(hWnd)

when not defined(windows):
  proc IsWindowVisible*(hWnd: HWND): bool =
    return lclapi.DIsWindowVisible(hWnd)

when not defined(windows):
  proc GetDC*(hWnd: HWND): HDC =
    return lclapi.DGetDC(hWnd)

when not defined(windows):
  proc ReleaseDC*(hWnd: HWND, dc: HDC): int32 =
    return lclapi.DReleaseDC(hWnd, dc)

when not defined(windows):
  proc SetForegroundWindow*(hWnd: HWND): bool =
    return lclapi.DSetForegroundWindow(hWnd)

when not defined(windows):
  proc WindowFromPoint*(point: var TPoint): HWND =
    return lclapi.DWindowFromPoint(point)

proc ShowMessage*(AMsg: string) =
  lclapi.DShowMessage(AMsg)

proc GetMainInstance*(): HINST =
  return lclapi.DGetMainInstance()

proc MessageDlg*(Msg: string, DlgType: TMsgDlgType, Buttons: TMsgDlgButtons, HelpCtx: int32): int32 =
  return lclapi.DMessageDlg(Msg, DlgType, Buttons, HelpCtx)

proc MainThreadId*(): TThreadID =
  return lclapi.DMainThreadId()

proc CurrentThreadId*(): TThreadID =
  return lclapi.DCurrentThreadId()

proc SysOpen*(FileName: string) =
  lclapi.DSysOpen(FileName)

proc ExtractFilePath*(AFileName: string): string =
  return $lclapi.DExtractFilePath(AFileName)

proc FileExists*(AFileName: string): bool =
  return lclapi.DFileExists(AFileName)

proc InputBox*(ACaption: string, APrompt: string, ADefault: string): string =
  return $lclapi.DInputBox(ACaption, APrompt, ADefault)

proc PasswordBox*(ACaption: string, APrompt: string): string =
  return $lclapi.DPasswordBox(ACaption, APrompt)

proc InputCombo*(ACaption: string, APrompt: string, AList: TStrings): int32 =
  return lclapi.DInputCombo(ACaption, APrompt, CheckPtr(AList))

proc InputComboEx*(ACaption: string, APrompt: string, AList: TStrings, AllowCustomText: bool): string =
  return $lclapi.DInputComboEx(ACaption, APrompt, CheckPtr(AList), AllowCustomText)

when defined(windows):
  proc CreateURLShortCut*(ADestPath: string, AShortCutName: string, AURL: string) =
    lclapi.DCreateURLShortCut(ADestPath, AShortCutName, AURL)

when defined(windows):
  proc CreateShortCut*(ADestPath: string, AShortCutName: string, ASrcFileName: string, AIconFileName: string, ADescription: string, ACmdArgs: string): bool =
    return lclapi.DCreateShortCut(ADestPath, AShortCutName, ASrcFileName, AIconFileName, ADescription, ACmdArgs)

proc SetPropertyValue*(Instance: TObject, PropName: string, Value: string) =
  lclapi.DSetPropertyValue(CheckPtr(Instance), PropName, Value)

proc SetPropertySecValue*(Instance: TObject, PropName: string, SecPropName: string, Value: string) =
  lclapi.DSetPropertySecValue(CheckPtr(Instance), PropName, SecPropName, Value)

proc GUIDToString*(AGUID: TGUID): string =
  var ps0 = AGUID
  return $lclapi.DGUIDToString(ps0)

proc LibAbout*(): string =
  return $lclapi.DLibAbout()

proc GetLibResourceCount*(): int32 =
  return lclapi.DGetLibResourceCount()

proc ModifyLibResource*(APtr: pointer, AValue: string) =
  lclapi.DModifyLibResource(APtr, AValue)

proc GetLibType*(): TLibType =
  return lclapi.DGetLibType()

proc InitGoDll*(AMainThreadId: TThreadID) =
  lclapi.DInitGoDll(AMainThreadId)

proc FindControl*(AHandle: HWND): TWinControl =
  return lclapi.DFindControl(AHandle).AsWinControl

proc FindLCLControl*(AScreenPos: TPoint): TControl =
  var ps0 = AScreenPos
  return lclapi.DFindLCLControl(ps0).AsControl

proc FindOwnerControl*(Handle: HWND): TWinControl =
  return lclapi.DFindOwnerControl(Handle).AsWinControl

proc FindControlAtPosition*(APosition: TPoint, AllowDisabled: bool): TControl =
  var ps0 = APosition
  return lclapi.DFindControlAtPosition(ps0, AllowDisabled).AsControl

proc FindLCLWindow*(AScreenPos: TPoint, AllowDisabled: bool): TWinControl =
  var ps0 = AScreenPos
  return lclapi.DFindLCLWindow(ps0, AllowDisabled).AsWinControl

proc FindDragTarget*(APosition: TPoint, AllowDisabled: bool): TControl =
  var ps0 = APosition
  return lclapi.DFindDragTarget(ps0, AllowDisabled).AsControl

when defined(linux):
  proc GtkWidget_GetGtkFixed*(Ah: HWND): PGtkFixed =
    return lclapi.GtkWidget_GetGtkFixed(Ah)

when defined(linux):
  proc GdkWindow_FromForm*(AForm: TForm): PGdkWindow =
    return lclapi.GdkWindow_FromForm(CheckPtr(AForm))

when defined(linux):
  proc GtkWidget_Window*(Ah: HWND): PGdkWindow =
    return lclapi.GtkWidget_Window(Ah)

when defined(macosx):
  proc NSWindow_FromForm*(AForm: TForm): MyNSWindow =
    return lclapi.NSWindow_FromForm(CheckPtr(AForm))

proc ResFormLoadFromResourceName*(AInstance: uint, AResName: string, ARoot: TComponent) =
  lclapi.ResFormLoadFromResourceName(AInstance, AResName, CheckPtr(ARoot))

proc ResFormLoadFromFile*(AFileName: string, ARoot: TComponent) =
  lclapi.ResFormLoadFromFile(AFileName, CheckPtr(ARoot))

proc ResFormLoadFromStream*(AStream: TObject, ARoot: TComponent) =
  lclapi.ResFormLoadFromStream(CheckPtr(AStream), CheckPtr(ARoot))
