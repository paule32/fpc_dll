#!/bin/bash
# -------------------------------------------------------------------
# RTL.PAS - this file is part of the Objective FPC Runtime.
#
# (c) 2022 by Jens Kallup
# all rights reserved.
#
# only for education, and non-profit use !!!
# -------------------------------------------------------------------

# -------------------------------------------------------------------
# absolute path's of used compiler programs "fpc", and "g++"
# -------------------------------------------------------------------
FPC="C:/fpc/3.2.0/bin/i386-win32"
GCC="E:/msys64/mingw64/bin/gcc.exe"
GPP="E:/msys64/mingw64/bin/g++.exe"

rm -rf tmp
mkdir  tmp

    
${FPC}/fpc -Si -CD -CX -D \
    -FE./tmp \
    -Fi./tmp \
	-FiC:/FPC/3.2.0/source/rtl/inc \
	-FiC:/FPC/3.2.0/source/rtl/i386 \
	-FiC:/FPC/3.2.0/source/rtl/win \
	-FiC:/FPC/3.2.0/source/rtl/win32 \
	-FiC:/FPC/3.2.0/source/rtl/objpas/classes \
	-FUtmp rtl.pas
    
${FPC}/fpc -Si -CD -CX -D \
	-FE./tmp \
    -Fi./tmp \
	-FiC:/FPC/3.2.0/source/rtl/inc \
	-FiC:/FPC/3.2.0/source/rtl/i386 \
	-FiC:/FPC/3.2.0/source/rtl/win \
	-FiC:/FPC/3.2.0/source/rtl/win32 \
	-FiC:/FPC/3.2.0/source/rtl/objpas/classes \
	-FUtmp fpc_dll.pas

#gendef fpc_dll.dll
#dlltool.exe -d fpc_dll.def -D fpc_dll.dll -l libfpc_dll.a

#${FPC}/fpc -a -Fl./ -CD -n -FUtmp fpc_rtl.pas
#gendef fpc_rtl.dll
#dlltool.exe -d fpc_rtl.def -D fpc_rtl.dll -l libfpc_rtl.a

${FPC}/fpc -Fl./tmp \
	-FE./tmp \
    -Fi./tmp \
	-FiC:/FPC/3.2.0/source/rtl/inc \
	-FiC:/FPC/3.2.0/source/rtl/i386 \
	-FiC:/FPC/3.2.0/source/rtl/win \
	-FiC:/FPC/3.2.0/source/rtl/win32 \
	-FiC:/FPC/3.2.0/source/rtl/objpas/classes \
	-FUtmp test.pas
