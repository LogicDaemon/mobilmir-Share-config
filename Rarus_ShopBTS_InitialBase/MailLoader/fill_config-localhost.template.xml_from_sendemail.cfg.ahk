﻿;by LogicDaemon <www.logicdaemon.ru>
;This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License <http://creativecommons.org/licenses/by-sa/4.0/deed.ru>.
#NoEnv

ExtFormsDir=d:\1S\Rarus\ShopBTS\ExtForms
sendemailcfg=%ExtFormsDir%\post\sendemail.cfg
configxml=%ExtFormsDir%\MailLoader\config-localhost.xml

If (FileExist(configxml)) {
    FileAppend Файл уже существует: %configxml%`n,*, CP1
    Exit 80
} Else {
    Loop Read, %sendemailcfg%
    {
	If (A_Index==1)
	    username:=A_LoopReadLine
	Else If (A_Index==2)
	    password:=StrReplace(A_LoopReadLine, "&", "&amp;")
	Else
	    break
    }
    
    If (!username)
	username:="{username}"
    If (!password)
	password:="{password}"

    FileAppend,
    (LTrim
    <?xml version="1.0" encoding="UTF-8"?>
    <ConfigData>
	    <Server>127.0.0.1</Server>
	    <Port>110</Port>
	    <Username>%username%</Username>
	    <Password>%password%</Password>
	    <DeleteFromServer>true</DeleteFromServer>
	    <OnlyDownloadOnce>false</OnlyDownloadOnce>
      <SaveMessagesDirectory>%ExtFormsDir%\MailLoader\received</SaveMessagesDirectory>
      <SaveAttachments>false</SaveAttachments>
      <SaveAttachmentsDirectory></SaveAttachmentsDirectory>
    </ConfigData>
    
    ), %configxml%, UTF-8-RAW
    Exit ErrorLevel
}
