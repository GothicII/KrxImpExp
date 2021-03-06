///////////////////////////////////////////////////////////////////////////////
// Name:        MetaMaxScript_Function.h
// Purpose:     Macroses to build plugins for 3ds max in MAXScript language
//              with the "Wave" precompiler.
// Author:      Vitaly Baranov
// Created:     January 14, 2009
// Modified by:  
// Licence:     GNU General Public License
///////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////
// Modificators

// REF(type) means variable must be transferred from function by reference.
// In MAXScript, classes and arrays already transferred by reference,
// so REF(type) is defined as (type) below.
#define REF(type)                  type

// Inline specificator - not used in MAXScript
#define INLINE


////////////////////////////////////////////////////////////////
// Global functions

// Function with no arguments
#define GLOBAL_FUNC_0(rettype, funcname) \
	function funcname = (

// Function with 1 argument
#define GLOBAL_FUNC_1(rettype, funcname, argtype1, argname1) \
	function funcname argname1 = (

// Function with 2 arguments
#define GLOBAL_FUNC_2(rettype, funcname, argtype1, argname1, argtype2, argname2) \
	function funcname argname1 argname2 = (

// Function with 3 arguments
#define GLOBAL_FUNC_3(rettype, funcname, argtype1, argname1, argtype2, argname2, argtype3, argname3) \
	function funcname argname1 argname2 argname3 = (

// Function with 4 arguments
#define GLOBAL_FUNC_4(rettype, funcname, argtype1, argname1, argtype2, argname2, argtype3, argname3, argtype4, argname4) \
	function funcname argname1 argname2 argname3 argname4 = (

// Function with 5 arguments
#define GLOBAL_FUNC_5(rettype, funcname, argtype1, argname1, argtype2, argname2, argtype3, argname3, argtype4, argname4, argtype5, argname5) \
	function funcname argname1 argname2 argname3 argname4 argname5 = (

// Function with 6 arguments
#define GLOBAL_FUNC_6(rettype, funcname, argtype1, argname1, argtype2, argname2, argtype3, argname3, argtype4, argname4, argtype5, argname5, argtype6, argname6) \
	function funcname argname1 argname2 argname3 argname4 argname5 argname6 = (

// Function with 7 arguments
#define GLOBAL_FUNC_7(rettype, funcname, argtype1, argname1, argtype2, argname2, argtype3, argname3, argtype4, argname4, argtype5, argname5, argtype6, argname6, argtype7, argname7) \
	function funcname argname1 argname2 argname3 argname4 argname5 argname6 argname7 = (

// Function with 8 arguments
#define GLOBAL_FUNC_8(rettype, funcname, argtype1, argname1, argtype2, argname2, argtype3, argname3, argtype4, argname4, argtype5, argname5, argtype6, argname6, argtype7, argname7, argtype8, argname8) \
	function funcname argname1 argname2 argname3 argname4 argname5 argname6 argname7 argname8 = (
	
// End of function declaration (for any number of arguments)
#define END_GLOBAL_FUNC )

// Return a result (used in function declaration)
#define RETURN_VAL(retval) return (retval)

// Function calling
#define CALLF0(funcname)									(funcname ())
#define CALLF1(funcname, arg1)								(funcname (arg1))
#define CALLF2(funcname, arg1, arg2)						(funcname (arg1) (arg2))
#define CALLF3(funcname, arg1, arg2, arg3)					(funcname (arg1) (arg2) (arg3))
#define CALLF4(funcname, arg1, arg2, arg3, arg4)			(funcname (arg1) (arg2) (arg3) (arg4))
#define CALLF5(funcname, arg1, arg2, arg3, arg4, arg5)				(funcname (arg1) (arg2) (arg3) (arg4) (arg5))
#define CALLF6(funcname, arg1, arg2, arg3, arg4, arg5, arg6)		(funcname (arg1) (arg2) (arg3) (arg4) (arg5) (arg6))
#define CALLF7(funcname, arg1, arg2, arg3, arg4, arg5, arg6, arg7)			(funcname (arg1) (arg2) (arg3) (arg4) (arg5) (arg6) (arg7))
#define CALLF8(funcname, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)	(funcname (arg1) (arg2) (arg3) (arg4) (arg5) (arg6) (arg7) (arg8))


////////////////////////////////////////////////////////////////
// Global procedures

// Procedure with no arguments
#define GLOBAL_PROC_0(procname) \
	function procname = (

// Procedure with 1 argument
#define GLOBAL_PROC_1(procname, argtype1, argname1) \
	function procname argname1 = (

// Procedure with 2 arguments
#define GLOBAL_PROC_2(procname, argtype1, argname1, argtype2, argname2) \
	function procname argname1 argname2 = (

// Procedure with 3 arguments
#define GLOBAL_PROC_3(procname, argtype1, argname1, argtype2, argname2, argtype3, argname3) \
	function procname argname1 argname2 argname3 = (

// Procedure with 4 arguments
#define GLOBAL_PROC_4(procname, argtype1, argname1, argtype2, argname2, argtype3, argname3, argtype4, argname4) \
	function procname argname1 argname2 argname3 argname4 = (

// Procedure with 5 arguments
#define GLOBAL_PROC_5(procname, argtype1, argname1, argtype2, argname2, argtype3, argname3, argtype4, argname4, argtype5, argname5) \
	function procname argname1 argname2 argname3 argname4 argname5 = (

// Procedure with 6 arguments
#define GLOBAL_PROC_6(procname, argtype1, argname1, argtype2, argname2, argtype3, argname3, argtype4, argname4, argtype5, argname5, argtype6, argname6) \
	function procname argname1 argname2 argname3 argname4 argname5 argname6 = (

// Procedure with 7 arguments
#define GLOBAL_PROC_7(procname, argtype1, argname1, argtype2, argname2, argtype3, argname3, argtype4, argname4, argtype5, argname5, argtype6, argname6, argtype7, argname7) \
	function procname argname1 argname2 argname3 argname4 argname5 argname6 argname7 = (

// Procedure with 8 arguments
#define GLOBAL_PROC_8(procname, argtype1, argname1, argtype2, argname2, argtype3, argname3, argtype4, argname4, argtype5, argname5, argtype6, argname6, argtype7, argname7, argtype8, argname8) \
	function procname argname1 argname2 argname3 argname4 argname5 argname6 argname7 argname8 = (
	
// End of function declaration (for any number of arguments)
#define END_GLOBAL_PROC )

// Return from procedure (used in procedure declaration)
#define RETURN return undefined

// Procedure calling
#define CALLP0(procname)									procname()
#define CALLP1(procname, arg1)								procname (arg1)
#define CALLP2(procname, arg1, arg2)						procname (arg1) (arg2)
#define CALLP3(procname, arg1, arg2, arg3)					procname (arg1) (arg2) (arg3)
#define CALLP4(procname, arg1, arg2, arg3, arg4)			procname (arg1) (arg2) (arg3) (arg4)
#define CALLP5(procname, arg1, arg2, arg3, arg4, arg5)				procname (arg1) (arg2) (arg3) (arg4) (arg5)
#define CALLP6(procname, arg1, arg2, arg3, arg4, arg5, arg6)		procname (arg1) (arg2) (arg3) (arg4) (arg5) (arg6)
#define CALLP7(procname, arg1, arg2, arg3, arg4, arg5, arg6, arg7)			procname (arg1) (arg2) (arg3) (arg4) (arg5) (arg6) (arg7)
#define CALLP8(procname, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)	procname (arg1) (arg2) (arg3) (arg4) (arg5) (arg6) (arg7) (arg8)

