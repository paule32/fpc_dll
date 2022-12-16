// -----------------------------------------------------------------------
// FPC_DLL.PAS - this file is part of the Objective FPC Runtime.
//
// (c) 2022 by Jens Kallup
// all rights reserved.
//
// only for education, and non-profit use !!!
// -----------------------------------------------------------------------
{$mode delphi}
library fpc_dll;

uses fpc_rtl;

exports
  RTL_IntToStr_LongInt,
  RTL_IntToStr_Int64,
  RTL_IntToStr_QWord,
  
  RTL_StrToInt_LongInt,
  RTL_StrToInt_Int64,
  RTL_StrToInt_QWord,
  
  RTL_IntToHex_LongInt,
  RTL_IntToHex_Int64_A,
  RTL_IntToHex_QWord  ,

  RTL_IntToHex_Int8   ,
  RTL_IntToHex_Int16  ,
  RTL_IntToHex_Int32  ,
  RTL_IntToHex_Int64_B,

  RTL_IntToHex_UInt8  ,
  RTL_IntToHex_Uint16 ,
  RTL_IntToHex_Uint32 ,
  RTL_IntToHex_Uint64
  ;

begin
end.
