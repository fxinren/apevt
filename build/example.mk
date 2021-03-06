########################################################
#	Building an example ( release & debug ) 
########################################################	

PROJ_NAME		:= example
########################################################	
# General Configurations:
########################################################	
# Release:
OUT_DIR 		:= ./bin
INT_DIR			:= ./intermediate
TARGET_NAME		:= $(PROJ_NAME)
TARGET_EXT		= $(EXE_EXT)
#static, shared, exe
TARGET_TYPE		:= exe

# Debug:
OUT_DIR_D 		:= $(OUT_DIR)
INT_DIR_D		:= $(INT_DIR)
TARGET_NAME_D	:= $(PROJ_NAME)_d
TARGET_EXT_D	= $(TARGET_EXT)
TARGET_TYPE_D	:= $(TARGET_TYPE)

########################################################	
# Compiler & Linker Configurations: 
########################################################	
# Release:
EXTERN_INC_DIR			:= ../../dev_libs/ape/include
OUTPUT_FILE				= $(OUT_DIR)/$(TARGET_NAME)$(TARGET_EXT)
EXTERN_LIBS_DIR	 		:= ../../dev_libs/ape/libs
EXTERN_LIBS_SHARE		:= libape
EXTERN_LIBS_STATIC		:=

# Debug:
EXTERN_INC_DIR_D		:= $(EXTERN_INC_DIR)
OUTPUT_FILE_D			= $(OUT_DIR_D)/$(TARGET_NAME_D)$(TARGET_EXT_D)
EXTERN_LIBS_DIR_D		:= $(EXTERN_LIBS_DIR)
EXTERN_LIBS_SHARE_D		:= libape_d
EXTERN_LIBS_STATIC_D	:=

# without -l, - only
EXTERN_LIBS_SHARE_2		:=
EXTERN_LIBS_SHARE_D_2	:=
EXTERN_LIBS_STATIC_2	:=
EXTERN_LIBS_STATIC_D_2	:=

ifeq ($(shell uname -s),Linux)
EXTERN_LIBS_SHARE_2		+= pthread
EXTERN_LIBS_SHARE_D_2	+= pthread
endif

########################################################	
# Project Soure Code Configurations: 
########################################################	
INC_DIR		:= ../include

SRC_ROOT	:= ..
SRC_DIR 	= 	$(SRC_ROOT)/example			\
				$(SRC_ROOT)/src

########################################################	
# Define & Flags Configurations: 
########################################################	
# compiling flags
DBG_FLAGS		+=
CFLAGS 			+=
DEFINES			+= 

# linking flags
LFLAGS 			+= 

include makefile.rule
