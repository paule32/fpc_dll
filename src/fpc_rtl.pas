// -----------------------------------------------------------------------
// FPC_RTL.PAS - this file is part of the Objective FPC Runtime.
//
// (c) 2022 by Jens Kallup
// all rights reserved.
//
// only for education, and non-profit use !!!
// -----------------------------------------------------------------------
{$mode delphi}
unit fpc_rtl;

interface

function RTL_IntToStr_LongInt(AValue: LongInt): String;  stdcall; export;
function RTL_IntToStr_Int64  (AValue: Int64  ): String;  stdcall; export;
function RTL_IntToStr_QWord  (AValue: QWord  ): String;  stdcall; export;

function RTL_StrToInt_LongInt(AValue: String ): LongInt; stdcall; export;
function RTL_StrToInt_Int64  (AValue: String ): Int64  ; stdcall; export;
function RTL_StrToInt_QWord  (AValue: String ): QWord  ; stdcall; export;

function RTL_IntToHex_LongInt(AValue: LongInt; digits: Integer): String; stdcall; export;
function RTL_IntToHex_Int64_A(AValue: Int64  ; digits: Integer): String; stdcall; export;
function RTL_IntToHex_QWord  (AValue: QWord  ; digits: Integer): String; stdcall; export;

function RTL_IntToHex_Int8   (AValue: Int8   ): String; stdcall; export;
function RTL_IntToHex_Int16  (AValue: Int16  ): String; stdcall; export;
function RTL_IntToHex_Int32  (AValue: Int32  ): String; stdcall; export;
function RTL_IntToHex_Int64_B(AValue: Int64  ): String; stdcall; export;

function RTL_IntToHex_UInt8  (AValue: UInt8  ): String; stdcall; export;
function RTL_IntToHex_Uint16 (AValue: UInt16 ): String; stdcall; export;
function RTL_IntToHex_Uint32 (AValue: UInt32 ): String; stdcall; export;
function RTL_IntToHex_Uint64 (AValue: UInt64 ): String; stdcall; export;

implementation

uses Classes, SysUtils;

function RTL_IntToStr_LongInt(AValue: LongInt): String;  stdcall; begin result := IntToStr(AValue); end;
function RTL_IntToStr_Int64  (AValue: Int64  ): String;  stdcall; begin result := IntToStr(AValue); end;
function RTL_IntToStr_QWord  (AValue: QWord  ): String;  stdcall; begin result := IntToStr(AValue); end;

function RTL_StrToInt_LongInt(AValue: String ): LongInt; stdcall; begin result := StrToInt(AValue); end;
function RTL_StrToInt_Int64  (AValue: String ): Int64  ; stdcall; begin result := StrToInt(AValue); end;
function RTL_StrToInt_QWord  (AValue: String ): QWord  ; stdcall; begin result := StrToInt(AValue); end;


function RTL_IntToHex_LongInt(AValue: LongInt; digits: Integer): String; stdcall; begin result := IntToHex(AValue, digits); end;
function RTL_IntToHex_Int64_A(AValue: Int64  ; digits: Integer): String; stdcall; begin result := IntToHex(AValue, digits); end;
function RTL_IntToHex_QWord  (AValue: QWord  ; digits: Integer): String; stdcall; begin result := IntToHex(AValue, digits); end;

function RTL_IntToHex_Int8   (AValue: Int8   ): String; stdcall; begin result := IntToHex(AValue,1); end;
function RTL_IntToHex_Int16  (AValue: Int16  ): String; stdcall; begin result := IntToHex(AValue,2); end;
function RTL_IntToHex_Int32  (AValue: Int32  ): String; stdcall; begin result := IntToHex(AValue,4); end;
function RTL_IntToHex_Int64_B(AValue: Int64  ): String; stdcall; begin result := IntToHex(AValue,8); end;

function RTL_IntToHex_UInt8  (AValue: UInt8  ): String; stdcall; begin result := IntToHex(AValue,1); end;
function RTL_IntToHex_Uint16 (AValue: UInt16 ): String; stdcall; begin result := IntToHex(AValue,2); end;
function RTL_IntToHex_Uint32 (AValue: UInt32 ): String; stdcall; begin result := IntToHex(AValue,4); end;
function RTL_IntToHex_Uint64 (AValue: UInt64 ): String; stdcall; begin result := IntToHex(AValue,8); end;

end.
