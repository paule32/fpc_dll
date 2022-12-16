// -----------------------------------------------------------------------
// RTL.PAS - this file is part of the Objective FPC Runtime.
//
// (c) 2022 by Jens Kallup
// all rights reserved.
//
// only for education, and non-profit use !!!
// -----------------------------------------------------------------------
{$mode delphi}
{$LinkLib impRTL.a}
unit RTL;

interface

type
  TRTL_FPC = class
  public
    function IntToStr(AValue: LongInt): String;  stdcall; overload;
    function IntToStr(AValue: Int64  ): String;  stdcall; overload;
    function IntToStr(AValue: QWord  ): String;  stdcall; overload;

    function StrToInt(AValue: String ): LongInt; stdcall; overload;
    function StrToInt(AValue: String ): Int64  ; stdcall; overload;
    function StrToInt(AValue: String ): QWord  ; stdcall; overload;


    function IntToHex(AValue: LongInt; digits: LongInt): String; stdcall; overload;
    function IntToHex(AValue: Int64  ; digits: LongInt): String; stdcall; overload;
    function IntToHex(AValue: QWord  ; digits: LongInt): String; stdcall; overload;

    function IntToHex(AValue: Int8   ): String; stdcall; overload;
    function IntToHex(AValue: Int16  ): String; stdcall; overload;
    function IntToHex(AValue: Int32  ): String; stdcall; overload;
    function IntToHex(AValue: Int64  ): String; stdcall; overload;
    
    function IntToHex(AValue: UInt8  ): String; stdcall; overload;
    function IntToHex(AValue: UInt16 ): String; stdcall; overload;
    function IntToHex(AValue: UInt32 ): String; stdcall; overload;
    function IntToHex(AValue: UInt64 ): String; stdcall; overload;
  end;
var
  RTL: TRTL_FPC;

implementation

const fpc_dll = 'fpc_dll.dll';

function RTL_IntToStr_1 (AValue: LongInt): String;  stdcall; external fpc_dll name 'RTL_IntToStr_LongInt';
function RTL_IntToStr_2 (AValue: Int64  ): String;  stdcall; external fpc_dll name 'RTL_IntToStr_Int64'  ;
function RTL_IntToStr_3 (AValue: QWord  ): String;  stdcall; external fpc_dll name 'RTL_IntToStr_QWord'  ;

function RTL_StrToInt_1 (AValue: String ): LongInt; stdcall; external fpc_dll name 'RTL_IntToStr_LongInt';
function RTL_StrToInt_2 (AValue: String ): Int64  ; stdcall; external fpc_dll name 'RTL_IntToStr_Int64'  ;
function RTL_StrToInt_3 (AValue: String ): QWord  ; stdcall; external fpc_dll name 'RTL_IntToStr_QWord'  ;

function RTL_IntToHex_1 (AValue: LongInt; digits: Integer): String; stdcall; external fpc_dll name 'RTL_IntToHex_LongInt';
function RTL_IntToHex_2 (AValue: Int64  ; digits: Integer): String; stdcall; external fpc_dll name 'RTL_IntToHex_Int64_A';
function RTL_IntToHex_3 (AValue: QWord  ; digits: Integer): String; stdcall; external fpc_dll name 'RTL_IntToHex_QWord'  ;

function RTL_IntToHex_4 (AValue: Int8   ): String; stdcall; external fpc_dll name 'RTL_IntToHex_Int8'   ;
function RTL_IntToHex_5 (AValue: Int16  ): String; stdcall; external fpc_dll name 'RTL_IntToHex_Int16'  ;
function RTL_IntToHex_6 (AValue: Int32  ): String; stdcall; external fpc_dll name 'RTL_IntToHex_Int32'  ;
function RTL_IntToHex_B (AValue: Int64  ): String; stdcall; external fpc_dll name 'RTL_IntToHex_Int64_B';

function RTL_IntToHex_8 (AValue: UInt8  ): String; stdcall; external fpc_dll name 'RTL_IntToHex_UInt8'  ;
function RTL_IntToHex_9 (AValue: UInt16 ): String; stdcall; external fpc_dll name 'RTL_IntToHex_UInt16' ;
function RTL_IntToHex_10(AValue: UInt32 ): String; stdcall; external fpc_dll name 'RTL_IntToHex_UInt32' ;
function RTL_IntToHex_11(AValue: UInt64 ): String; stdcall; external fpc_dll name 'RTL_IntToHex_UInt64' ;

// -------------------------------
function TRTL_FPC.IntToStr(AValue: LongInt): String ; begin result := RTL_IntToStr_1(AValue); end;
function TRTL_FPC.IntToStr(AValue: Int64  ): String ; begin result := RTL_IntToStr_2(AValue); end;
function TRTL_FPC.IntToStr(AValue: QWord  ): String ; begin result := RTL_IntToStr_3(AValue); end;

function TRTL_FPC.StrToInt(AValue: String ): LongInt; begin result := RTL_StrToInt_1(AValue); end;
function TRTL_FPC.StrToInt(AValue: String ): Int64  ; begin result := RTL_StrToInt_2(AValue); end;
function TRTL_FPC.StrToInt(AValue: String ): QWord  ; begin result := RTL_StrToInt_3(AValue); end;

function TRTL_FPC.IntToHex(AValue: LongInt; digits: LongInt): String; begin result := RTL_IntToHex_1(AValue, digits); end;
function TRTL_FPC.IntToHex(AValue: Int64  ; digits: LongInt): String; begin result := RTL_IntToHex_2(AValue, digits); end;
function TRTL_FPC.IntToHex(AValue: QWord  ; digits: LongInt): String; begin result := RTL_IntToHex_3(AValue, digits); end;

function TRTL_FPC.IntToHex(AValue: Int8   ): String; begin result := RTL_IntToHex_4 (AValue); end;
function TRTL_FPC.IntToHex(AValue: Int16  ): String; begin result := RTL_IntToHex_5 (AValue); end;
function TRTL_FPC.IntToHex(AValue: Int32  ): String; begin result := RTL_IntToHex_6 (AValue); end;
function TRTL_FPC.IntToHex(AValue: Int64  ): String; begin result := RTL_IntToHex_B (AValue); end;

function TRTL_FPC.IntToHex(AValue: UInt8  ): String; begin result := RTL_IntToHex_8 (AValue); end;
function TRTL_FPC.IntToHex(AValue: UInt16 ): String; begin result := RTL_IntToHex_9 (AValue); end;
function TRTL_FPC.IntToHex(AValue: UInt32 ): String; begin result := RTL_IntToHex_10(AValue); end;
function TRTL_FPC.IntToHex(AValue: UInt64 ): String; begin result := RTL_IntToHex_11(AValue); end;

end.
