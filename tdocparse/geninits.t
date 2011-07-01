proc DefineGeneratedSymbols (s : ^Scope, out : ^OutputHandler)
  var Config_DisplayFunc : ^Symbol
  new Builtin_Config_Display, Config_DisplayFunc
  Config_DisplayFunc -> create (out)
  s -> define ("Config_Display", Config_DisplayFunc)

  var Config_LangFunc : ^Symbol
  new Builtin_Config_Lang, Config_LangFunc
  Config_LangFunc -> create (out)
  s -> define ("Config_Lang", Config_LangFunc)

  var Config_MachineFunc : ^Symbol
  new Builtin_Config_Machine, Config_MachineFunc
  Config_MachineFunc -> create (out)
  s -> define ("Config_Machine", Config_MachineFunc)

  var Dir_ChangeFunc : ^Symbol
  new Builtin_Dir_Change, Dir_ChangeFunc
  Dir_ChangeFunc -> create (out)
  s -> define ("Dir_Change", Dir_ChangeFunc)

  var Dir_CloseFunc : ^Symbol
  new Builtin_Dir_Close, Dir_CloseFunc
  Dir_CloseFunc -> create (out)
  s -> define ("Dir_Close", Dir_CloseFunc)

  var Dir_CreateFunc : ^Symbol
  new Builtin_Dir_Create, Dir_CreateFunc
  Dir_CreateFunc -> create (out)
  s -> define ("Dir_Create", Dir_CreateFunc)

  var Dir_DeleteFunc : ^Symbol
  new Builtin_Dir_Delete, Dir_DeleteFunc
  Dir_DeleteFunc -> create (out)
  s -> define ("Dir_Delete", Dir_DeleteFunc)

  var Dir_ExistsFunc : ^Symbol
  new Builtin_Dir_Exists, Dir_ExistsFunc
  Dir_ExistsFunc -> create (out)
  s -> define ("Dir_Exists", Dir_ExistsFunc)

  var Dir_GetFunc : ^Symbol
  new Builtin_Dir_Get, Dir_GetFunc
  Dir_GetFunc -> create (out)
  s -> define ("Dir_Get", Dir_GetFunc)

  var Dir_GetLongFunc : ^Symbol
  new Builtin_Dir_GetLong, Dir_GetLongFunc
  Dir_GetLongFunc -> create (out)
  s -> define ("Dir_GetLong", Dir_GetLongFunc)

  var Dir_OpenFunc : ^Symbol
  new Builtin_Dir_Open, Dir_OpenFunc
  Dir_OpenFunc -> create (out)
  s -> define ("Dir_Open", Dir_OpenFunc)

  var Draw_ArcFunc : ^Symbol
  new Builtin_Draw_Arc, Draw_ArcFunc
  Draw_ArcFunc -> create (out)
  s -> define ("Draw_Arc", Draw_ArcFunc)

  var Draw_BoxFunc : ^Symbol
  new Builtin_Draw_Box, Draw_BoxFunc
  Draw_BoxFunc -> create (out)
  s -> define ("Draw_Box", Draw_BoxFunc)

  var Draw_DotFunc : ^Symbol
  new Builtin_Draw_Dot, Draw_DotFunc
  Draw_DotFunc -> create (out)
  s -> define ("Draw_Dot", Draw_DotFunc)

  var Draw_DashedLineFunc : ^Symbol
  new Builtin_Draw_DashedLine, Draw_DashedLineFunc
  Draw_DashedLineFunc -> create (out)
  s -> define ("Draw_DashedLine", Draw_DashedLineFunc)

  var Draw_FillFunc : ^Symbol
  new Builtin_Draw_Fill, Draw_FillFunc
  Draw_FillFunc -> create (out)
  s -> define ("Draw_Fill", Draw_FillFunc)

  var Draw_FillArcFunc : ^Symbol
  new Builtin_Draw_FillArc, Draw_FillArcFunc
  Draw_FillArcFunc -> create (out)
  s -> define ("Draw_FillArc", Draw_FillArcFunc)

  var Draw_FillBoxFunc : ^Symbol
  new Builtin_Draw_FillBox, Draw_FillBoxFunc
  Draw_FillBoxFunc -> create (out)
  s -> define ("Draw_FillBox", Draw_FillBoxFunc)

  var Draw_FillMapleLeafFunc : ^Symbol
  new Builtin_Draw_FillMapleLeaf, Draw_FillMapleLeafFunc
  Draw_FillMapleLeafFunc -> create (out)
  s -> define ("Draw_FillMapleLeaf", Draw_FillMapleLeafFunc)

  var Draw_FillOvalFunc : ^Symbol
  new Builtin_Draw_FillOval, Draw_FillOvalFunc
  Draw_FillOvalFunc -> create (out)
  s -> define ("Draw_FillOval", Draw_FillOvalFunc)

  var Draw_FillStarFunc : ^Symbol
  new Builtin_Draw_FillStar, Draw_FillStarFunc
  Draw_FillStarFunc -> create (out)
  s -> define ("Draw_FillStar", Draw_FillStarFunc)

  var Draw_LineFunc : ^Symbol
  new Builtin_Draw_Line, Draw_LineFunc
  Draw_LineFunc -> create (out)
  s -> define ("Draw_Line", Draw_LineFunc)

  var Draw_MapleLeafFunc : ^Symbol
  new Builtin_Draw_MapleLeaf, Draw_MapleLeafFunc
  Draw_MapleLeafFunc -> create (out)
  s -> define ("Draw_MapleLeaf", Draw_MapleLeafFunc)

  var Draw_OvalFunc : ^Symbol
  new Builtin_Draw_Oval, Draw_OvalFunc
  Draw_OvalFunc -> create (out)
  s -> define ("Draw_Oval", Draw_OvalFunc)

  var Draw_StarFunc : ^Symbol
  new Builtin_Draw_Star, Draw_StarFunc
  Draw_StarFunc -> create (out)
  s -> define ("Draw_Star", Draw_StarFunc)

  var Draw_TextFunc : ^Symbol
  new Builtin_Draw_Text, Draw_TextFunc
  Draw_TextFunc -> create (out)
  s -> define ("Draw_Text", Draw_TextFunc)

  var Draw_ThickLineFunc : ^Symbol
  new Builtin_Draw_ThickLine, Draw_ThickLineFunc
  Draw_ThickLineFunc -> create (out)
  s -> define ("Draw_ThickLine", Draw_ThickLineFunc)

  var File_CopyFunc : ^Symbol
  new Builtin_File_Copy, File_CopyFunc
  File_CopyFunc -> create (out)
  s -> define ("File_Copy", File_CopyFunc)

  var File_DeleteFunc : ^Symbol
  new Builtin_File_Delete, File_DeleteFunc
  File_DeleteFunc -> create (out)
  s -> define ("File_Delete", File_DeleteFunc)

  var File_DiskFreeFunc : ^Symbol
  new Builtin_File_DiskFree, File_DiskFreeFunc
  File_DiskFreeFunc -> create (out)
  s -> define ("File_DiskFree", File_DiskFreeFunc)

  var File_ExistsFunc : ^Symbol
  new Builtin_File_Exists, File_ExistsFunc
  File_ExistsFunc -> create (out)
  s -> define ("File_Exists", File_ExistsFunc)

  var File_FullPathFunc : ^Symbol
  new Builtin_File_FullPath, File_FullPathFunc
  File_FullPathFunc -> create (out)
  s -> define ("File_FullPath", File_FullPathFunc)

  var File_ParentFunc : ^Symbol
  new Builtin_File_Parent, File_ParentFunc
  File_ParentFunc -> create (out)
  s -> define ("File_Parent", File_ParentFunc)

  var File_RenameFunc : ^Symbol
  new Builtin_File_Rename, File_RenameFunc
  File_RenameFunc -> create (out)
  s -> define ("File_Rename", File_RenameFunc)

  var File_StatusFunc : ^Symbol
  new Builtin_File_Status, File_StatusFunc
  File_StatusFunc -> create (out)
  s -> define ("File_Status", File_StatusFunc)

  var Font_DrawFunc : ^Symbol
  new Builtin_Font_Draw, Font_DrawFunc
  Font_DrawFunc -> create (out)
  s -> define ("Font_Draw", Font_DrawFunc)

  var Font_FreeFunc : ^Symbol
  new Builtin_Font_Free, Font_FreeFunc
  Font_FreeFunc -> create (out)
  s -> define ("Font_Free", Font_FreeFunc)

  var Font_GetStyleFunc : ^Symbol
  new Builtin_Font_GetStyle, Font_GetStyleFunc
  Font_GetStyleFunc -> create (out)
  s -> define ("Font_GetStyle", Font_GetStyleFunc)

  var Font_NameFunc : ^Symbol
  new Builtin_Font_Name, Font_NameFunc
  Font_NameFunc -> create (out)
  s -> define ("Font_Name", Font_NameFunc)

  var Font_NewFunc : ^Symbol
  new Builtin_Font_New, Font_NewFunc
  Font_NewFunc -> create (out)
  s -> define ("Font_New", Font_NewFunc)

  var Font_SizesFunc : ^Symbol
  new Builtin_Font_Sizes, Font_SizesFunc
  Font_SizesFunc -> create (out)
  s -> define ("Font_Sizes", Font_SizesFunc)

  var Font_StartSizeFunc : ^Symbol
  new Builtin_Font_StartSize, Font_StartSizeFunc
  Font_StartSizeFunc -> create (out)
  s -> define ("Font_StartSize", Font_StartSizeFunc)

  var Font_WidthFunc : ^Symbol
  new Builtin_Font_Width, Font_WidthFunc
  Font_WidthFunc -> create (out)
  s -> define ("Font_Width", Font_WidthFunc)

  var GUI_AddLineFunc : ^Symbol
  new Builtin_GUI_AddLine, GUI_AddLineFunc
  GUI_AddLineFunc -> create (out)
  s -> define ("GUI_AddLine", GUI_AddLineFunc)

  var GUI_AddTextFunc : ^Symbol
  new Builtin_GUI_AddText, GUI_AddTextFunc
  GUI_AddTextFunc -> create (out)
  s -> define ("GUI_AddText", GUI_AddTextFunc)

  var GUI_ClearTextFunc : ^Symbol
  new Builtin_GUI_ClearText, GUI_ClearTextFunc
  GUI_ClearTextFunc -> create (out)
  s -> define ("GUI_ClearText", GUI_ClearTextFunc)

  var GUI_CloseWindowFunc : ^Symbol
  new Builtin_GUI_CloseWindow, GUI_CloseWindowFunc
  GUI_CloseWindowFunc -> create (out)
  s -> define ("GUI_CloseWindow", GUI_CloseWindowFunc)

  var GUI_CreateCanvasFunc : ^Symbol
  new Builtin_GUI_CreateCanvas, GUI_CreateCanvasFunc
  GUI_CreateCanvasFunc -> create (out)
  s -> define ("GUI_CreateCanvas", GUI_CreateCanvasFunc)

  var GUI_CreateFrameFunc : ^Symbol
  new Builtin_GUI_CreateFrame, GUI_CreateFrameFunc
  GUI_CreateFrameFunc -> create (out)
  s -> define ("GUI_CreateFrame", GUI_CreateFrameFunc)

  var GUI_CreateLabelFunc : ^Symbol
  new Builtin_GUI_CreateLabel, GUI_CreateLabelFunc
  GUI_CreateLabelFunc -> create (out)
  s -> define ("GUI_CreateLabel", GUI_CreateLabelFunc)

  var GUI_CreateLabelFullFunc : ^Symbol
  new Builtin_GUI_CreateLabelFull, GUI_CreateLabelFullFunc
  GUI_CreateLabelFullFunc -> create (out)
  s -> define ("GUI_CreateLabelFull", GUI_CreateLabelFullFunc)

  var GUI_CreateLabelledFrameFunc : ^Symbol
  new Builtin_GUI_CreateLabelledFrame, GUI_CreateLabelledFrameFunc
  GUI_CreateLabelledFrameFunc -> create (out)
  s -> define ("GUI_CreateLabelledFrame", GUI_CreateLabelledFrameFunc)

  var GUI_CreateLineFunc : ^Symbol
  new Builtin_GUI_CreateLine, GUI_CreateLineFunc
  GUI_CreateLineFunc -> create (out)
  s -> define ("GUI_CreateLine", GUI_CreateLineFunc)

  var GUI_CreateMenuFunc : ^Symbol
  new Builtin_GUI_CreateMenu, GUI_CreateMenuFunc
  GUI_CreateMenuFunc -> create (out)
  s -> define ("GUI_CreateMenu", GUI_CreateMenuFunc)

  var GUI_CreatePictureFunc : ^Symbol
  new Builtin_GUI_CreatePicture, GUI_CreatePictureFunc
  GUI_CreatePictureFunc -> create (out)
  s -> define ("GUI_CreatePicture", GUI_CreatePictureFunc)

  var GUI_CreateTextBoxFunc : ^Symbol
  new Builtin_GUI_CreateTextBox, GUI_CreateTextBoxFunc
  GUI_CreateTextBoxFunc -> create (out)
  s -> define ("GUI_CreateTextBox", GUI_CreateTextBoxFunc)

  var GUI_CreateTextBoxFullFunc : ^Symbol
  new Builtin_GUI_CreateTextBoxFull, GUI_CreateTextBoxFullFunc
  GUI_CreateTextBoxFullFunc -> create (out)
  s -> define ("GUI_CreateTextBoxFull", GUI_CreateTextBoxFullFunc)

  var GUI_DisableFunc : ^Symbol
  new Builtin_GUI_Disable, GUI_DisableFunc
  GUI_DisableFunc -> create (out)
  s -> define ("GUI_Disable", GUI_DisableFunc)

  var GUI_DisposeFunc : ^Symbol
  new Builtin_GUI_Dispose, GUI_DisposeFunc
  GUI_DisposeFunc -> create (out)
  s -> define ("GUI_Dispose", GUI_DisposeFunc)

  var GUI_EnableFunc : ^Symbol
  new Builtin_GUI_Enable, GUI_EnableFunc
  GUI_EnableFunc -> create (out)
  s -> define ("GUI_Enable", GUI_EnableFunc)

  var GUI_FontDrawFunc : ^Symbol
  new Builtin_GUI_FontDraw, GUI_FontDrawFunc
  GUI_FontDrawFunc -> create (out)
  s -> define ("GUI_FontDraw", GUI_FontDrawFunc)

  var GUI_GetCheckBoxFunc : ^Symbol
  new Builtin_GUI_GetCheckBox, GUI_GetCheckBoxFunc
  GUI_GetCheckBoxFunc -> create (out)
  s -> define ("GUI_GetCheckBox", GUI_GetCheckBoxFunc)

  var GUI_GetHeightFunc : ^Symbol
  new Builtin_GUI_GetHeight, GUI_GetHeightFunc
  GUI_GetHeightFunc -> create (out)
  s -> define ("GUI_GetHeight", GUI_GetHeightFunc)

  var GUI_GetSliderValueFunc : ^Symbol
  new Builtin_GUI_GetSliderValue, GUI_GetSliderValueFunc
  GUI_GetSliderValueFunc -> create (out)
  s -> define ("GUI_GetSliderValue", GUI_GetSliderValueFunc)

  var GUI_GetTextFunc : ^Symbol
  new Builtin_GUI_GetText, GUI_GetTextFunc
  GUI_GetTextFunc -> create (out)
  s -> define ("GUI_GetText", GUI_GetTextFunc)

  var GUI_GetWidthFunc : ^Symbol
  new Builtin_GUI_GetWidth, GUI_GetWidthFunc
  GUI_GetWidthFunc -> create (out)
  s -> define ("GUI_GetWidth", GUI_GetWidthFunc)

  var GUI_GetXFunc : ^Symbol
  new Builtin_GUI_GetX, GUI_GetXFunc
  GUI_GetXFunc -> create (out)
  s -> define ("GUI_GetX", GUI_GetXFunc)

  var GUI_GetYFunc : ^Symbol
  new Builtin_GUI_GetY, GUI_GetYFunc
  GUI_GetYFunc -> create (out)
  s -> define ("GUI_GetY", GUI_GetYFunc)

  var GUI_HideFunc : ^Symbol
  new Builtin_GUI_Hide, GUI_HideFunc
  GUI_HideFunc -> create (out)
  s -> define ("GUI_Hide", GUI_HideFunc)

  var GUI_SelectRadioFunc : ^Symbol
  new Builtin_GUI_SelectRadio, GUI_SelectRadioFunc
  GUI_SelectRadioFunc -> create (out)
  s -> define ("GUI_SelectRadio", GUI_SelectRadioFunc)

  var GUI_SetActiveFunc : ^Symbol
  new Builtin_GUI_SetActive, GUI_SetActiveFunc
  GUI_SetActiveFunc -> create (out)
  s -> define ("GUI_SetActive", GUI_SetActiveFunc)

  var GUI_SetBackgroundColorFunc : ^Symbol
  new Builtin_GUI_SetBackgroundColor, GUI_SetBackgroundColorFunc
  GUI_SetBackgroundColorFunc -> create (out)
  s -> define ("GUI_SetBackgroundColor", GUI_SetBackgroundColorFunc)

  var GUI_SetCheckBoxFunc : ^Symbol
  new Builtin_GUI_SetCheckBox, GUI_SetCheckBoxFunc
  GUI_SetCheckBoxFunc -> create (out)
  s -> define ("GUI_SetCheckBox", GUI_SetCheckBoxFunc)

  var GUI_SetDefaultFunc : ^Symbol
  new Builtin_GUI_SetDefault, GUI_SetDefaultFunc
  GUI_SetDefaultFunc -> create (out)
  s -> define ("GUI_SetDefault", GUI_SetDefaultFunc)

  var GUI_SetDisplayWhenCreatedFunc : ^Symbol
  new Builtin_GUI_SetDisplayWhenCreated, GUI_SetDisplayWhenCreatedFunc
  GUI_SetDisplayWhenCreatedFunc -> create (out)
  s -> define ("GUI_SetDisplayWhenCreated", GUI_SetDisplayWhenCreatedFunc)

  var GUI_SetLabelFunc : ^Symbol
  new Builtin_GUI_SetLabel, GUI_SetLabelFunc
  GUI_SetLabelFunc -> create (out)
  s -> define ("GUI_SetLabel", GUI_SetLabelFunc)

  var GUI_SetPositionFunc : ^Symbol
  new Builtin_GUI_SetPosition, GUI_SetPositionFunc
  GUI_SetPositionFunc -> create (out)
  s -> define ("GUI_SetPosition", GUI_SetPositionFunc)

  var GUI_SetPositionAndSizeFunc : ^Symbol
  new Builtin_GUI_SetPositionAndSize, GUI_SetPositionAndSizeFunc
  GUI_SetPositionAndSizeFunc -> create (out)
  s -> define ("GUI_SetPositionAndSize", GUI_SetPositionAndSizeFunc)

  var GUI_SetScrollAmountFunc : ^Symbol
  new Builtin_GUI_SetScrollAmount, GUI_SetScrollAmountFunc
  GUI_SetScrollAmountFunc -> create (out)
  s -> define ("GUI_SetScrollAmount", GUI_SetScrollAmountFunc)

  var GUI_SetSelectionFunc : ^Symbol
  new Builtin_GUI_SetSelection, GUI_SetSelectionFunc
  GUI_SetSelectionFunc -> create (out)
  s -> define ("GUI_SetSelection", GUI_SetSelectionFunc)

  var GUI_SetSizeFunc : ^Symbol
  new Builtin_GUI_SetSize, GUI_SetSizeFunc
  GUI_SetSizeFunc -> create (out)
  s -> define ("GUI_SetSize", GUI_SetSizeFunc)

  var GUI_SetSliderMinMaxFunc : ^Symbol
  new Builtin_GUI_SetSliderMinMax, GUI_SetSliderMinMaxFunc
  GUI_SetSliderMinMaxFunc -> create (out)
  s -> define ("GUI_SetSliderMinMax", GUI_SetSliderMinMaxFunc)

  var GUI_SetSliderReverseFunc : ^Symbol
  new Builtin_GUI_SetSliderReverse, GUI_SetSliderReverseFunc
  GUI_SetSliderReverseFunc -> create (out)
  s -> define ("GUI_SetSliderReverse", GUI_SetSliderReverseFunc)

  var GUI_SetSliderSizeFunc : ^Symbol
  new Builtin_GUI_SetSliderSize, GUI_SetSliderSizeFunc
  GUI_SetSliderSizeFunc -> create (out)
  s -> define ("GUI_SetSliderSize", GUI_SetSliderSizeFunc)

  var GUI_SetSliderValueFunc : ^Symbol
  new Builtin_GUI_SetSliderValue, GUI_SetSliderValueFunc
  GUI_SetSliderValueFunc -> create (out)
  s -> define ("GUI_SetSliderValue", GUI_SetSliderValueFunc)

  var GUI_SetTextFunc : ^Symbol
  new Builtin_GUI_SetText, GUI_SetTextFunc
  GUI_SetTextFunc -> create (out)
  s -> define ("GUI_SetText", GUI_SetTextFunc)

  var GUI_SetXORFunc : ^Symbol
  new Builtin_GUI_SetXOR, GUI_SetXORFunc
  GUI_SetXORFunc -> create (out)
  s -> define ("GUI_SetXOR", GUI_SetXORFunc)

  var GUI_ShowFunc : ^Symbol
  new Builtin_GUI_Show, GUI_ShowFunc
  GUI_ShowFunc -> create (out)
  s -> define ("GUI_Show", GUI_ShowFunc)

  var Joystick_GetInfoFunc : ^Symbol
  new Builtin_Joystick_GetInfo, Joystick_GetInfoFunc
  Joystick_GetInfoFunc -> create (out)
  s -> define ("Joystick_GetInfo", Joystick_GetInfoFunc)

  var Math_DistanceFunc : ^Symbol
  new Builtin_Math_Distance, Math_DistanceFunc
  Math_DistanceFunc -> create (out)
  s -> define ("Math_Distance", Math_DistanceFunc)

  var Mouse_ButtonChooseFunc : ^Symbol
  new Builtin_Mouse_ButtonChoose, Mouse_ButtonChooseFunc
  Mouse_ButtonChooseFunc -> create (out)
  s -> define ("Mouse_ButtonChoose", Mouse_ButtonChooseFunc)

  var Mouse_ButtonMovedFunc : ^Symbol
  new Builtin_Mouse_ButtonMoved, Mouse_ButtonMovedFunc
  Mouse_ButtonMovedFunc -> create (out)
  s -> define ("Mouse_ButtonMoved", Mouse_ButtonMovedFunc)

  var Mouse_ButtonWaitFunc : ^Symbol
  new Builtin_Mouse_ButtonWait, Mouse_ButtonWaitFunc
  Mouse_ButtonWaitFunc -> create (out)
  s -> define ("Mouse_ButtonWait", Mouse_ButtonWaitFunc)

  var Mouse_WhereFunc : ^Symbol
  new Builtin_Mouse_Where, Mouse_WhereFunc
  Mouse_WhereFunc -> create (out)
  s -> define ("Mouse_Where", Mouse_WhereFunc)

  var Music_PlayFunc : ^Symbol
  new Builtin_Music_Play, Music_PlayFunc
  Music_PlayFunc -> create (out)
  s -> define ("Music_Play", Music_PlayFunc)

  var Music_PlayFileFunc : ^Symbol
  new Builtin_Music_PlayFile, Music_PlayFileFunc
  Music_PlayFileFunc -> create (out)
  s -> define ("Music_PlayFile", Music_PlayFileFunc)

  var Music_PlayFileLoopFunc : ^Symbol
  new Builtin_Music_PlayFileLoop, Music_PlayFileLoopFunc
  Music_PlayFileLoopFunc -> create (out)
  s -> define ("Music_PlayFileLoop", Music_PlayFileLoopFunc)

  var Music_PlayFileReturnFunc : ^Symbol
  new Builtin_Music_PlayFileReturn, Music_PlayFileReturnFunc
  Music_PlayFileReturnFunc -> create (out)
  s -> define ("Music_PlayFileReturn", Music_PlayFileReturnFunc)

  var Music_PlayFileStopFunc : ^Symbol
  new Builtin_Music_PlayFileStop, Music_PlayFileStopFunc
  Music_PlayFileStopFunc -> create (out)
  s -> define ("Music_PlayFileStop", Music_PlayFileStopFunc)

  var Music_SoundFunc : ^Symbol
  new Builtin_Music_Sound, Music_SoundFunc
  Music_SoundFunc -> create (out)
  s -> define ("Music_Sound", Music_SoundFunc)

  var Music_SoundOffFunc : ^Symbol
  new Builtin_Music_SoundOff, Music_SoundOffFunc
  Music_SoundOffFunc -> create (out)
  s -> define ("Music_SoundOff", Music_SoundOffFunc)

  var Net_BytesAvailableFunc : ^Symbol
  new Builtin_Net_BytesAvailable, Net_BytesAvailableFunc
  Net_BytesAvailableFunc -> create (out)
  s -> define ("Net_BytesAvailable", Net_BytesAvailableFunc)

  var Net_CharAvailableFunc : ^Symbol
  new Builtin_Net_CharAvailable, Net_CharAvailableFunc
  Net_CharAvailableFunc -> create (out)
  s -> define ("Net_CharAvailable", Net_CharAvailableFunc)

  var Net_CloseConnectionFunc : ^Symbol
  new Builtin_Net_CloseConnection, Net_CloseConnectionFunc
  Net_CloseConnectionFunc -> create (out)
  s -> define ("Net_CloseConnection", Net_CloseConnectionFunc)

  var Net_HostAddressFromNameFunc : ^Symbol
  new Builtin_Net_HostAddressFromName, Net_HostAddressFromNameFunc
  Net_HostAddressFromNameFunc -> create (out)
  s -> define ("Net_HostAddressFromName", Net_HostAddressFromNameFunc)

  var Net_HostNameFromAddressFunc : ^Symbol
  new Builtin_Net_HostNameFromAddress, Net_HostNameFromAddressFunc
  Net_HostNameFromAddressFunc -> create (out)
  s -> define ("Net_HostNameFromAddress", Net_HostNameFromAddressFunc)

  var Net_LineAvailableFunc : ^Symbol
  new Builtin_Net_LineAvailable, Net_LineAvailableFunc
  Net_LineAvailableFunc -> create (out)
  s -> define ("Net_LineAvailable", Net_LineAvailableFunc)

  var Net_OpenConnectionFunc : ^Symbol
  new Builtin_Net_OpenConnection, Net_OpenConnectionFunc
  Net_OpenConnectionFunc -> create (out)
  s -> define ("Net_OpenConnection", Net_OpenConnectionFunc)

  var Net_OpenURLConnectionFunc : ^Symbol
  new Builtin_Net_OpenURLConnection, Net_OpenURLConnectionFunc
  Net_OpenURLConnectionFunc -> create (out)
  s -> define ("Net_OpenURLConnection", Net_OpenURLConnectionFunc)

  var Net_TokenAvailableFunc : ^Symbol
  new Builtin_Net_TokenAvailable, Net_TokenAvailableFunc
  Net_TokenAvailableFunc -> create (out)
  s -> define ("Net_TokenAvailable", Net_TokenAvailableFunc)

  var Net_WaitForConnectionFunc : ^Symbol
  new Builtin_Net_WaitForConnection, Net_WaitForConnectionFunc
  Net_WaitForConnectionFunc -> create (out)
  s -> define ("Net_WaitForConnection", Net_WaitForConnectionFunc)

  var PC_ParallelPutFunc : ^Symbol
  new Builtin_PC_ParallelPut, PC_ParallelPutFunc
  PC_ParallelPutFunc -> create (out)
  s -> define ("PC_ParallelPut", PC_ParallelPutFunc)

  var Pic_BlendFunc : ^Symbol
  new Builtin_Pic_Blend, Pic_BlendFunc
  Pic_BlendFunc -> create (out)
  s -> define ("Pic_Blend", Pic_BlendFunc)

  var Pic_BlurFunc : ^Symbol
  new Builtin_Pic_Blur, Pic_BlurFunc
  Pic_BlurFunc -> create (out)
  s -> define ("Pic_Blur", Pic_BlurFunc)

  var Pic_DrawFunc : ^Symbol
  new Builtin_Pic_Draw, Pic_DrawFunc
  Pic_DrawFunc -> create (out)
  s -> define ("Pic_Draw", Pic_DrawFunc)

  var Pic_DrawSpecialFunc : ^Symbol
  new Builtin_Pic_DrawSpecial, Pic_DrawSpecialFunc
  Pic_DrawSpecialFunc -> create (out)
  s -> define ("Pic_DrawSpecial", Pic_DrawSpecialFunc)

  var Pic_DrawSpecialBackFunc : ^Symbol
  new Builtin_Pic_DrawSpecialBack, Pic_DrawSpecialBackFunc
  Pic_DrawSpecialBackFunc -> create (out)
  s -> define ("Pic_DrawSpecialBack", Pic_DrawSpecialBackFunc)

  var Pic_FileNewFunc : ^Symbol
  new Builtin_Pic_FileNew, Pic_FileNewFunc
  Pic_FileNewFunc -> create (out)
  s -> define ("Pic_FileNew", Pic_FileNewFunc)

  var Pic_FlipFunc : ^Symbol
  new Builtin_Pic_Flip, Pic_FlipFunc
  Pic_FlipFunc -> create (out)
  s -> define ("Pic_Flip", Pic_FlipFunc)

  var Pic_FreeFunc : ^Symbol
  new Builtin_Pic_Free, Pic_FreeFunc
  Pic_FreeFunc -> create (out)
  s -> define ("Pic_Free", Pic_FreeFunc)

  var Pic_HeightFunc : ^Symbol
  new Builtin_Pic_Height, Pic_HeightFunc
  Pic_HeightFunc -> create (out)
  s -> define ("Pic_Height", Pic_HeightFunc)

  var Pic_MirrorFunc : ^Symbol
  new Builtin_Pic_Mirror, Pic_MirrorFunc
  Pic_MirrorFunc -> create (out)
  s -> define ("Pic_Mirror", Pic_MirrorFunc)

  var Pic_NewFunc : ^Symbol
  new Builtin_Pic_New, Pic_NewFunc
  Pic_NewFunc -> create (out)
  s -> define ("Pic_New", Pic_NewFunc)

  var Pic_RotateFunc : ^Symbol
  new Builtin_Pic_Rotate, Pic_RotateFunc
  Pic_RotateFunc -> create (out)
  s -> define ("Pic_Rotate", Pic_RotateFunc)

  var Pic_SaveFunc : ^Symbol
  new Builtin_Pic_Save, Pic_SaveFunc
  Pic_SaveFunc -> create (out)
  s -> define ("Pic_Save", Pic_SaveFunc)

  var Pic_ScaleFunc : ^Symbol
  new Builtin_Pic_Scale, Pic_ScaleFunc
  Pic_ScaleFunc -> create (out)
  s -> define ("Pic_Scale", Pic_ScaleFunc)

  var Pic_ScreenLoadFunc : ^Symbol
  new Builtin_Pic_ScreenLoad, Pic_ScreenLoadFunc
  Pic_ScreenLoadFunc -> create (out)
  s -> define ("Pic_ScreenLoad", Pic_ScreenLoadFunc)

  var Pic_ScreenSaveFunc : ^Symbol
  new Builtin_Pic_ScreenSave, Pic_ScreenSaveFunc
  Pic_ScreenSaveFunc -> create (out)
  s -> define ("Pic_ScreenSave", Pic_ScreenSaveFunc)

  var Pic_WidthFunc : ^Symbol
  new Builtin_Pic_Width, Pic_WidthFunc
  Pic_WidthFunc -> create (out)
  s -> define ("Pic_Width", Pic_WidthFunc)

  var RGB_AddColorFunc : ^Symbol
  new Builtin_RGB_AddColor, RGB_AddColorFunc
  RGB_AddColorFunc -> create (out)
  s -> define ("RGB_AddColor", RGB_AddColorFunc)

  var RGB_AddColourFunc : ^Symbol
  new Builtin_RGB_AddColour, RGB_AddColourFunc
  RGB_AddColourFunc -> create (out)
  s -> define ("RGB_AddColour", RGB_AddColourFunc)

  var RGB_GetColorFunc : ^Symbol
  new Builtin_RGB_GetColor, RGB_GetColorFunc
  RGB_GetColorFunc -> create (out)
  s -> define ("RGB_GetColor", RGB_GetColorFunc)

  var RGB_GetColourFunc : ^Symbol
  new Builtin_RGB_GetColour, RGB_GetColourFunc
  RGB_GetColourFunc -> create (out)
  s -> define ("RGB_GetColour", RGB_GetColourFunc)

  var Rand_IntFunc : ^Symbol
  new Builtin_Rand_Int, Rand_IntFunc
  Rand_IntFunc -> create (out)
  s -> define ("Rand_Int", Rand_IntFunc)

  var Sprite_AnimateFunc : ^Symbol
  new Builtin_Sprite_Animate, Sprite_AnimateFunc
  Sprite_AnimateFunc -> create (out)
  s -> define ("Sprite_Animate", Sprite_AnimateFunc)

  var Sprite_ChangePicFunc : ^Symbol
  new Builtin_Sprite_ChangePic, Sprite_ChangePicFunc
  Sprite_ChangePicFunc -> create (out)
  s -> define ("Sprite_ChangePic", Sprite_ChangePicFunc)

  var Sprite_FreeFunc : ^Symbol
  new Builtin_Sprite_Free, Sprite_FreeFunc
  Sprite_FreeFunc -> create (out)
  s -> define ("Sprite_Free", Sprite_FreeFunc)

  var Sprite_HideFunc : ^Symbol
  new Builtin_Sprite_Hide, Sprite_HideFunc
  Sprite_HideFunc -> create (out)
  s -> define ("Sprite_Hide", Sprite_HideFunc)

  var Sprite_NewFunc : ^Symbol
  new Builtin_Sprite_New, Sprite_NewFunc
  Sprite_NewFunc -> create (out)
  s -> define ("Sprite_New", Sprite_NewFunc)

  var Sprite_SetFrameRateFunc : ^Symbol
  new Builtin_Sprite_SetFrameRate, Sprite_SetFrameRateFunc
  Sprite_SetFrameRateFunc -> create (out)
  s -> define ("Sprite_SetFrameRate", Sprite_SetFrameRateFunc)

  var Sprite_SetHeightFunc : ^Symbol
  new Builtin_Sprite_SetHeight, Sprite_SetHeightFunc
  Sprite_SetHeightFunc -> create (out)
  s -> define ("Sprite_SetHeight", Sprite_SetHeightFunc)

  var Sprite_SetPositionFunc : ^Symbol
  new Builtin_Sprite_SetPosition, Sprite_SetPositionFunc
  Sprite_SetPositionFunc -> create (out)
  s -> define ("Sprite_SetPosition", Sprite_SetPositionFunc)

  var Sprite_ShowFunc : ^Symbol
  new Builtin_Sprite_Show, Sprite_ShowFunc
  Sprite_ShowFunc -> create (out)
  s -> define ("Sprite_Show", Sprite_ShowFunc)

  var Str_LowerFunc : ^Symbol
  new Builtin_Str_Lower, Str_LowerFunc
  Str_LowerFunc -> create (out)
  s -> define ("Str_Lower", Str_LowerFunc)

  var Str_TrimFunc : ^Symbol
  new Builtin_Str_Trim, Str_TrimFunc
  Str_TrimFunc -> create (out)
  s -> define ("Str_Trim", Str_TrimFunc)

  var Str_UpperFunc : ^Symbol
  new Builtin_Str_Upper, Str_UpperFunc
  Str_UpperFunc -> create (out)
  s -> define ("Str_Upper", Str_UpperFunc)

  var Sys_ExecFunc : ^Symbol
  new Builtin_Sys_Exec, Sys_ExecFunc
  Sys_ExecFunc -> create (out)
  s -> define ("Sys_Exec", Sys_ExecFunc)

  var Sys_FetchArgFunc : ^Symbol
  new Builtin_Sys_FetchArg, Sys_FetchArgFunc
  Sys_FetchArgFunc -> create (out)
  s -> define ("Sys_FetchArg", Sys_FetchArgFunc)

  var Sys_GetEnvFunc : ^Symbol
  new Builtin_Sys_GetEnv, Sys_GetEnvFunc
  Sys_GetEnvFunc -> create (out)
  s -> define ("Sys_GetEnv", Sys_GetEnvFunc)

  var Text_ColorFunc : ^Symbol
  new Builtin_Text_Color, Text_ColorFunc
  Text_ColorFunc -> create (out)
  s -> define ("Text_Color", Text_ColorFunc)

  var Text_ColorBackFunc : ^Symbol
  new Builtin_Text_ColorBack, Text_ColorBackFunc
  Text_ColorBackFunc -> create (out)
  s -> define ("Text_ColorBack", Text_ColorBackFunc)

  var Text_ColourFunc : ^Symbol
  new Builtin_Text_Colour, Text_ColourFunc
  Text_ColourFunc -> create (out)
  s -> define ("Text_Colour", Text_ColourFunc)

  var Text_ColourBackFunc : ^Symbol
  new Builtin_Text_ColourBack, Text_ColourBackFunc
  Text_ColourBackFunc -> create (out)
  s -> define ("Text_ColourBack", Text_ColourBackFunc)

  var Text_LocateFunc : ^Symbol
  new Builtin_Text_Locate, Text_LocateFunc
  Text_LocateFunc -> create (out)
  s -> define ("Text_Locate", Text_LocateFunc)

  var Text_LocateXYFunc : ^Symbol
  new Builtin_Text_LocateXY, Text_LocateXYFunc
  Text_LocateXYFunc -> create (out)
  s -> define ("Text_LocateXY", Text_LocateXYFunc)

  var Time_DateSecFunc : ^Symbol
  new Builtin_Time_DateSec, Time_DateSecFunc
  Time_DateSecFunc -> create (out)
  s -> define ("Time_DateSec", Time_DateSecFunc)

  var Time_DelayFunc : ^Symbol
  new Builtin_Time_Delay, Time_DelayFunc
  Time_DelayFunc -> create (out)
  s -> define ("Time_Delay", Time_DelayFunc)

  var Time_DelaySinceLastFunc : ^Symbol
  new Builtin_Time_DelaySinceLast, Time_DelaySinceLastFunc
  Time_DelaySinceLastFunc -> create (out)
  s -> define ("Time_DelaySinceLast", Time_DelaySinceLastFunc)

  var Time_ElapsedFunc : ^Symbol
  new Builtin_Time_Elapsed, Time_ElapsedFunc
  Time_ElapsedFunc -> create (out)
  s -> define ("Time_Elapsed", Time_ElapsedFunc)

  var Time_PartsSecFunc : ^Symbol
  new Builtin_Time_PartsSec, Time_PartsSecFunc
  Time_PartsSecFunc -> create (out)
  s -> define ("Time_PartsSec", Time_PartsSecFunc)

  var Time_SecFunc : ^Symbol
  new Builtin_Time_Sec, Time_SecFunc
  Time_SecFunc -> create (out)
  s -> define ("Time_Sec", Time_SecFunc)

  var Time_SecDateFunc : ^Symbol
  new Builtin_Time_SecDate, Time_SecDateFunc
  Time_SecDateFunc -> create (out)
  s -> define ("Time_SecDate", Time_SecDateFunc)

  var Time_SecPartsFunc : ^Symbol
  new Builtin_Time_SecParts, Time_SecPartsFunc
  Time_SecPartsFunc -> create (out)
  s -> define ("Time_SecParts", Time_SecPartsFunc)

  var Time_SecStrFunc : ^Symbol
  new Builtin_Time_SecStr, Time_SecStrFunc
  Time_SecStrFunc -> create (out)
  s -> define ("Time_SecStr", Time_SecStrFunc)

  var View_ClipAddFunc : ^Symbol
  new Builtin_View_ClipAdd, View_ClipAddFunc
  View_ClipAddFunc -> create (out)
  s -> define ("View_ClipAdd", View_ClipAddFunc)

  var View_ClipAddOvalFunc : ^Symbol
  new Builtin_View_ClipAddOval, View_ClipAddOvalFunc
  View_ClipAddOvalFunc -> create (out)
  s -> define ("View_ClipAddOval", View_ClipAddOvalFunc)

  var View_ClipSetFunc : ^Symbol
  new Builtin_View_ClipSet, View_ClipSetFunc
  View_ClipSetFunc -> create (out)
  s -> define ("View_ClipSet", View_ClipSetFunc)

  var View_SetFunc : ^Symbol
  new Builtin_View_Set, View_SetFunc
  View_SetFunc -> create (out)
  s -> define ("View_Set", View_SetFunc)

  var View_SetTransparentColorFunc : ^Symbol
  new Builtin_View_SetTransparentColor, View_SetTransparentColorFunc
  View_SetTransparentColorFunc -> create (out)
  s -> define ("View_SetTransparentColor", View_SetTransparentColorFunc)

  var View_SetTransparentColourFunc : ^Symbol
  new Builtin_View_SetTransparentColour, View_SetTransparentColourFunc
  View_SetTransparentColourFunc -> create (out)
  s -> define ("View_SetTransparentColour", View_SetTransparentColourFunc)

  var View_UpdateAreaFunc : ^Symbol
  new Builtin_View_UpdateArea, View_UpdateAreaFunc
  View_UpdateAreaFunc -> create (out)
  s -> define ("View_UpdateArea", View_UpdateAreaFunc)

  var View_WhatDotColorFunc : ^Symbol
  new Builtin_View_WhatDotColor, View_WhatDotColorFunc
  View_WhatDotColorFunc -> create (out)
  s -> define ("View_WhatDotColor", View_WhatDotColorFunc)

  var View_WhatDotColourFunc : ^Symbol
  new Builtin_View_WhatDotColour, View_WhatDotColourFunc
  View_WhatDotColourFunc -> create (out)
  s -> define ("View_WhatDotColour", View_WhatDotColourFunc)

  var Window_CloseFunc : ^Symbol
  new Builtin_Window_Close, Window_CloseFunc
  Window_CloseFunc -> create (out)
  s -> define ("Window_Close", Window_CloseFunc)

  var Window_GetPositionFunc : ^Symbol
  new Builtin_Window_GetPosition, Window_GetPositionFunc
  Window_GetPositionFunc -> create (out)
  s -> define ("Window_GetPosition", Window_GetPositionFunc)

  var Window_HideFunc : ^Symbol
  new Builtin_Window_Hide, Window_HideFunc
  Window_HideFunc -> create (out)
  s -> define ("Window_Hide", Window_HideFunc)

  var Window_OpenFunc : ^Symbol
  new Builtin_Window_Open, Window_OpenFunc
  Window_OpenFunc -> create (out)
  s -> define ("Window_Open", Window_OpenFunc)

  var Window_SelectFunc : ^Symbol
  new Builtin_Window_Select, Window_SelectFunc
  Window_SelectFunc -> create (out)
  s -> define ("Window_Select", Window_SelectFunc)

  var Window_SetFunc : ^Symbol
  new Builtin_Window_Set, Window_SetFunc
  Window_SetFunc -> create (out)
  s -> define ("Window_Set", Window_SetFunc)

  var Window_SetPositionFunc : ^Symbol
  new Builtin_Window_SetPosition, Window_SetPositionFunc
  Window_SetPositionFunc -> create (out)
  s -> define ("Window_SetPosition", Window_SetPositionFunc)

  var Window_ShowFunc : ^Symbol
  new Builtin_Window_Show, Window_ShowFunc
  Window_ShowFunc -> create (out)
  s -> define ("Window_Show", Window_ShowFunc)

  var Window_UpdateFunc : ^Symbol
  new Builtin_Window_Update, Window_UpdateFunc
  Window_UpdateFunc -> create (out)
  s -> define ("Window_Update", Window_UpdateFunc)

  var Window_UpdateAreaFunc : ^Symbol
  new Builtin_Window_UpdateArea, Window_UpdateAreaFunc
  Window_UpdateAreaFunc -> create (out)
  s -> define ("Window_UpdateArea", Window_UpdateAreaFunc)

  var absFunc : ^Symbol
  new Builtin_abs, absFunc
  absFunc -> create (out)
  s -> define ("abs", absFunc)

  var arccosFunc : ^Symbol
  new Builtin_arccos, arccosFunc
  arccosFunc -> create (out)
  s -> define ("arccos", arccosFunc)

  var arccosdFunc : ^Symbol
  new Builtin_arccosd, arccosdFunc
  arccosdFunc -> create (out)
  s -> define ("arccosd", arccosdFunc)

  var arcsinFunc : ^Symbol
  new Builtin_arcsin, arcsinFunc
  arcsinFunc -> create (out)
  s -> define ("arcsin", arcsinFunc)

  var arcsindFunc : ^Symbol
  new Builtin_arcsind, arcsindFunc
  arcsindFunc -> create (out)
  s -> define ("arcsind", arcsindFunc)

  var arctanFunc : ^Symbol
  new Builtin_arctan, arctanFunc
  arctanFunc -> create (out)
  s -> define ("arctan", arctanFunc)

  var arctandFunc : ^Symbol
  new Builtin_arctand, arctandFunc
  arctandFunc -> create (out)
  s -> define ("arctand", arctandFunc)

  var buttonchooseFunc : ^Symbol
  new Builtin_buttonchoose, buttonchooseFunc
  buttonchooseFunc -> create (out)
  s -> define ("buttonchoose", buttonchooseFunc)

  var buttonmovedFunc : ^Symbol
  new Builtin_buttonmoved, buttonmovedFunc
  buttonmovedFunc -> create (out)
  s -> define ("buttonmoved", buttonmovedFunc)

  var buttonwaitFunc : ^Symbol
  new Builtin_buttonwait, buttonwaitFunc
  buttonwaitFunc -> create (out)
  s -> define ("buttonwait", buttonwaitFunc)

  var ceilFunc : ^Symbol
  new Builtin_ceil, ceilFunc
  ceilFunc -> create (out)
  s -> define ("ceil", ceilFunc)

  var clockFunc : ^Symbol
  new Builtin_clock, clockFunc
  clockFunc -> create (out)
  s -> define ("clock", clockFunc)

  var clsFunc : ^Symbol
  new Builtin_cls, clsFunc
  clsFunc -> create (out)
  s -> define ("cls", clsFunc)

  var colorFunc : ^Symbol
  new Builtin_color, colorFunc
  colorFunc -> create (out)
  s -> define ("color", colorFunc)

  var colorbackFunc : ^Symbol
  new Builtin_colorback, colorbackFunc
  colorbackFunc -> create (out)
  s -> define ("colorback", colorbackFunc)

  var colourFunc : ^Symbol
  new Builtin_colour, colourFunc
  colourFunc -> create (out)
  s -> define ("colour", colourFunc)

  var colourbackFunc : ^Symbol
  new Builtin_colourback, colourbackFunc
  colourbackFunc -> create (out)
  s -> define ("colourback", colourbackFunc)

  var cosFunc : ^Symbol
  new Builtin_cos, cosFunc
  cosFunc -> create (out)
  s -> define ("cos", cosFunc)

  var cosdFunc : ^Symbol
  new Builtin_cosd, cosdFunc
  cosdFunc -> create (out)
  s -> define ("cosd", cosdFunc)

  var dateFunc : ^Symbol
  new Builtin_date, dateFunc
  dateFunc -> create (out)
  s -> define ("date", dateFunc)

  var delayFunc : ^Symbol
  new Builtin_delay, delayFunc
  delayFunc -> create (out)
  s -> define ("delay", delayFunc)

  var drawarcFunc : ^Symbol
  new Builtin_drawarc, drawarcFunc
  drawarcFunc -> create (out)
  s -> define ("drawarc", drawarcFunc)

  var drawboxFunc : ^Symbol
  new Builtin_drawbox, drawboxFunc
  drawboxFunc -> create (out)
  s -> define ("drawbox", drawboxFunc)

  var drawdotFunc : ^Symbol
  new Builtin_drawdot, drawdotFunc
  drawdotFunc -> create (out)
  s -> define ("drawdot", drawdotFunc)

  var drawfillFunc : ^Symbol
  new Builtin_drawfill, drawfillFunc
  drawfillFunc -> create (out)
  s -> define ("drawfill", drawfillFunc)

  var drawfillarcFunc : ^Symbol
  new Builtin_drawfillarc, drawfillarcFunc
  drawfillarcFunc -> create (out)
  s -> define ("drawfillarc", drawfillarcFunc)

  var drawfillboxFunc : ^Symbol
  new Builtin_drawfillbox, drawfillboxFunc
  drawfillboxFunc -> create (out)
  s -> define ("drawfillbox", drawfillboxFunc)

  var drawfillmapleleafFunc : ^Symbol
  new Builtin_drawfillmapleleaf, drawfillmapleleafFunc
  drawfillmapleleafFunc -> create (out)
  s -> define ("drawfillmapleleaf", drawfillmapleleafFunc)

  var drawfillovalFunc : ^Symbol
  new Builtin_drawfilloval, drawfillovalFunc
  drawfillovalFunc -> create (out)
  s -> define ("drawfilloval", drawfillovalFunc)

  var drawfillstarFunc : ^Symbol
  new Builtin_drawfillstar, drawfillstarFunc
  drawfillstarFunc -> create (out)
  s -> define ("drawfillstar", drawfillstarFunc)

  var drawlineFunc : ^Symbol
  new Builtin_drawline, drawlineFunc
  drawlineFunc -> create (out)
  s -> define ("drawline", drawlineFunc)

  var drawmapleleafFunc : ^Symbol
  new Builtin_drawmapleleaf, drawmapleleafFunc
  drawmapleleafFunc -> create (out)
  s -> define ("drawmapleleaf", drawmapleleafFunc)

  var drawovalFunc : ^Symbol
  new Builtin_drawoval, drawovalFunc
  drawovalFunc -> create (out)
  s -> define ("drawoval", drawovalFunc)

  var drawstarFunc : ^Symbol
  new Builtin_drawstar, drawstarFunc
  drawstarFunc -> create (out)
  s -> define ("drawstar", drawstarFunc)

  var expFunc : ^Symbol
  new Builtin_exp, expFunc
  expFunc -> create (out)
  s -> define ("exp", expFunc)

  var fetchargFunc : ^Symbol
  new Builtin_fetcharg, fetchargFunc
  fetchargFunc -> create (out)
  s -> define ("fetcharg", fetchargFunc)

  var floorFunc : ^Symbol
  new Builtin_floor, floorFunc
  floorFunc -> create (out)
  s -> define ("floor", floorFunc)

  var frealstrFunc : ^Symbol
  new Builtin_frealstr, frealstrFunc
  frealstrFunc -> create (out)
  s -> define ("frealstr", frealstrFunc)

  var getenvFunc : ^Symbol
  new Builtin_getenv, getenvFunc
  getenvFunc -> create (out)
  s -> define ("getenv", getenvFunc)

  var indexFunc : ^Symbol
  new Builtin_index, indexFunc
  indexFunc -> create (out)
  s -> define ("index", indexFunc)

  var intrealFunc : ^Symbol
  new Builtin_intreal, intrealFunc
  intrealFunc -> create (out)
  s -> define ("intreal", intrealFunc)

  var intstrFunc : ^Symbol
  new Builtin_intstr, intstrFunc
  intstrFunc -> create (out)
  s -> define ("intstr", intstrFunc)

  var lengthFunc : ^Symbol
  new Builtin_length, lengthFunc
  lengthFunc -> create (out)
  s -> define ("length", lengthFunc)

  var lnFunc : ^Symbol
  new Builtin_ln, lnFunc
  lnFunc -> create (out)
  s -> define ("ln", lnFunc)

  var locateFunc : ^Symbol
  new Builtin_locate, locateFunc
  locateFunc -> create (out)
  s -> define ("locate", locateFunc)

  var locatexyFunc : ^Symbol
  new Builtin_locatexy, locatexyFunc
  locatexyFunc -> create (out)
  s -> define ("locatexy", locatexyFunc)

  var mousewhereFunc : ^Symbol
  new Builtin_mousewhere, mousewhereFunc
  mousewhereFunc -> create (out)
  s -> define ("mousewhere", mousewhereFunc)

  var parallelputFunc : ^Symbol
  new Builtin_parallelput, parallelputFunc
  parallelputFunc -> create (out)
  s -> define ("parallelput", parallelputFunc)

  var playFunc : ^Symbol
  new Builtin_play, playFunc
  playFunc -> create (out)
  s -> define ("play", playFunc)

  var randFunc : ^Symbol
  new Builtin_rand, randFunc
  randFunc -> create (out)
  s -> define ("rand", randFunc)

  var randintFunc : ^Symbol
  new Builtin_randint, randintFunc
  randintFunc -> create (out)
  s -> define ("randint", randintFunc)

  var realstrFunc : ^Symbol
  new Builtin_realstr, realstrFunc
  realstrFunc -> create (out)
  s -> define ("realstr", realstrFunc)

  var repeatFunc : ^Symbol
  new Builtin_repeat, repeatFunc
  repeatFunc -> create (out)
  s -> define ("repeat", repeatFunc)

  var roundFunc : ^Symbol
  new Builtin_round, roundFunc
  roundFunc -> create (out)
  s -> define ("round", roundFunc)

  var setscreenFunc : ^Symbol
  new Builtin_setscreen, setscreenFunc
  setscreenFunc -> create (out)
  s -> define ("setscreen", setscreenFunc)

  var signFunc : ^Symbol
  new Builtin_sign, signFunc
  signFunc -> create (out)
  s -> define ("sign", signFunc)

  var sinFunc : ^Symbol
  new Builtin_sin, sinFunc
  sinFunc -> create (out)
  s -> define ("sin", sinFunc)

  var sindFunc : ^Symbol
  new Builtin_sind, sindFunc
  sindFunc -> create (out)
  s -> define ("sind", sindFunc)

  var sizepicFunc : ^Symbol
  new Builtin_sizepic, sizepicFunc
  sizepicFunc -> create (out)
  s -> define ("sizepic", sizepicFunc)

  var soundFunc : ^Symbol
  new Builtin_sound, soundFunc
  soundFunc -> create (out)
  s -> define ("sound", soundFunc)

  var sqrtFunc : ^Symbol
  new Builtin_sqrt, sqrtFunc
  sqrtFunc -> create (out)
  s -> define ("sqrt", sqrtFunc)

  var strintFunc : ^Symbol
  new Builtin_strint, strintFunc
  strintFunc -> create (out)
  s -> define ("strint", strintFunc)

  var strintokFunc : ^Symbol
  new Builtin_strintok, strintokFunc
  strintokFunc -> create (out)
  s -> define ("strintok", strintokFunc)

  var strnatokFunc : ^Symbol
  new Builtin_strnatok, strnatokFunc
  strnatokFunc -> create (out)
  s -> define ("strnatok", strnatokFunc)

  var strrealFunc : ^Symbol
  new Builtin_strreal, strrealFunc
  strrealFunc -> create (out)
  s -> define ("strreal", strrealFunc)

  var strrealokFunc : ^Symbol
  new Builtin_strrealok, strrealokFunc
  strrealokFunc -> create (out)
  s -> define ("strrealok", strrealokFunc)

  var sysclockFunc : ^Symbol
  new Builtin_sysclock, sysclockFunc
  sysclockFunc -> create (out)
  s -> define ("sysclock", sysclockFunc)

  var systemFunc : ^Symbol
  new Builtin_system, systemFunc
  systemFunc -> create (out)
  s -> define ("system", systemFunc)

  var tanFunc : ^Symbol
  new Builtin_tan, tanFunc
  tanFunc -> create (out)
  s -> define ("tan", tanFunc)

  var tandFunc : ^Symbol
  new Builtin_tand, tandFunc
  tandFunc -> create (out)
  s -> define ("tand", tandFunc)

  var timeFunc : ^Symbol
  new Builtin_time, timeFunc
  timeFunc -> create (out)
  s -> define ("time", timeFunc)

  var wallclockFunc : ^Symbol
  new Builtin_wallclock, wallclockFunc
  wallclockFunc -> create (out)
  s -> define ("wallclock", wallclockFunc)

  var whatdotcolorFunc : ^Symbol
  new Builtin_whatdotcolor, whatdotcolorFunc
  whatdotcolorFunc -> create (out)
  s -> define ("whatdotcolor", whatdotcolorFunc)

  var whatdotcolourFunc : ^Symbol
  new Builtin_whatdotcolour, whatdotcolourFunc
  whatdotcolourFunc -> create (out)
  s -> define ("whatdotcolour", whatdotcolourFunc)

end DefineGeneratedSymbols
