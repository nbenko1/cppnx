######################################################################
# Automatically generated by qmake (2.01a) Thu Jun 20 12:15:51 2013
######################################################################

TEMPLATE = app
TARGET = cppn-x

QMAKE_CFLAGS_X86_64 -= -mmacosx-version-min=10.5
QMAKE_CFLAGS_X86_64 += -mmacosx-version-min=10.7
QMAKE_CXXFLAGS_X86_64 = $$QMAKE_CFLAGS_X86_64

DEPENDPATH += . \
              zlib \
              cppn-x/include \
              cppn-x/src \
              JGTL/include \
              libzip-0.11.1/lib

INCLUDEPATH += . \
               zlib \
               cppn-x/include \
               JGTL/include \
               libzip-0.11.1/lib \
               libzip-0.11.1/xcode \
               libzip-0.11.1/src

#LIBS += -liconv 
LIBS += -lm 
#LIBS += -lbz2 
#LIBS += -lz 

# Requied for some C99 defines
DEFINES += __STDC_CONSTANT_MACROS        

# Input
HEADERS += zlib/crc32.h \
           zlib/deflate.h \
           zlib/inffast.h \
           zlib/inffixed.h \
           zlib/inflate.h \
           zlib/inftrees.h \
           zlib/trees.h \
           zlib/zconf.h \
           zlib/zconf.in.h \
           zlib/zlib.h \
           zlib/zutil.h \
           cppn-x/include/CE_ActivationFunctions.h \
           cppn-x/include/CE_LabelWidget.h \
           cppn-x/include/CE_Cppn.h \
           cppn-x/include/CE_CppnParser.h \
           cppn-x/include/CE_CppnWidget.h \
           cppn-x/include/CE_CppnWriter.h \
           cppn-x/include/CE_Defines.h \
           cppn-x/include/CE_Edge.h \
           cppn-x/include/CE_FinalNodeView.h \
           cppn-x/include/CE_Node.h \
           cppn-x/include/CE_NodeView.h \
           cppn-x/include/CE_Util.h \
           cppn-x/include/CE_Window.h \
           cppn-x/include/CE_Xml.h \
           libzip-0.11.1/lib/zip.h \
           libzip-0.11.1/lib/zipconf.h \
           libzip-0.11.1/lib/zipint.h
SOURCES += zlib/adler32.c \
           zlib/compress.c \
           zlib/crc32.c \
           zlib/deflate.c \
           zlib/gzio.c \
           zlib/infback.c \
           zlib/inffast.c \
           zlib/inflate.c \
           zlib/inftrees.c \
           zlib/trees.c \
           zlib/uncompr.c \
           zlib/zutil.c \
           cppn-x/src/CE_ActivationFunctions.cpp \
           cppn-x/src/CE_LabelWidget.cpp \
           cppn-x/src/CE_LabelableObject.cpp \
           cppn-x/src/CE_Cppn.cpp \
           cppn-x/src/CE_CppnParser.cpp \
           cppn-x/src/CE_CppnWidget.cpp \
           cppn-x/src/CE_CppnWriter.cpp \
           cppn-x/src/CE_Edge.cpp \
           cppn-x/src/CE_FinalNodeView.cpp \
           cppn-x/src/CE_Main.cpp \
           cppn-x/src/CE_Node.cpp \
           cppn-x/src/CE_NodeView.cpp \
           cppn-x/src/CE_Window.cpp \
           cppn-x/src/CE_VerticalScrollArea.cpp \
           cppn-x/src/CE_CommandLabelObject.cpp \
           cppn-x/src/CE_CommandSetWeight.cpp \
           cppn-x/src/CE_CommandAddLabel.cpp \
           cppn-x/src/CE_CommandNodeView.cpp \
           libzip-0.11.1/lib/mkstemp.c \
           libzip-0.11.1/lib/zip_add.c \
           libzip-0.11.1/lib/zip_add_dir.c \
           libzip-0.11.1/lib/zip_add_entry.c \
           libzip-0.11.1/lib/zip_close.c \
           libzip-0.11.1/lib/zip_delete.c \
           libzip-0.11.1/lib/zip_dir_add.c \
           libzip-0.11.1/lib/zip_dirent.c \
           libzip-0.11.1/lib/zip_discard.c \
           libzip-0.11.1/lib/zip_entry.c \
           libzip-0.11.1/lib/zip_err_str.c \
           libzip-0.11.1/lib/zip_error.c \
           libzip-0.11.1/lib/zip_error_clear.c \
           libzip-0.11.1/lib/zip_error_get.c \
           libzip-0.11.1/lib/zip_error_get_sys_type.c \
           libzip-0.11.1/lib/zip_error_strerror.c \
           libzip-0.11.1/lib/zip_error_to_str.c \
           libzip-0.11.1/lib/zip_extra_field.c \
           libzip-0.11.1/lib/zip_extra_field_api.c \
           libzip-0.11.1/lib/zip_fclose.c \
           libzip-0.11.1/lib/zip_fdopen.c \
           libzip-0.11.1/lib/zip_file_add.c \
           libzip-0.11.1/lib/zip_file_error_clear.c \
           libzip-0.11.1/lib/zip_file_error_get.c \
           libzip-0.11.1/lib/zip_file_get_comment.c \
           libzip-0.11.1/lib/zip_file_get_offset.c \
           libzip-0.11.1/lib/zip_file_rename.c \
           libzip-0.11.1/lib/zip_file_replace.c \
           libzip-0.11.1/lib/zip_file_set_comment.c \
           libzip-0.11.1/lib/zip_file_strerror.c \
           libzip-0.11.1/lib/zip_filerange_crc.c \
           libzip-0.11.1/lib/zip_fopen.c \
           libzip-0.11.1/lib/zip_fopen_encrypted.c \
           libzip-0.11.1/lib/zip_fopen_index.c \
           libzip-0.11.1/lib/zip_fopen_index_encrypted.c \
           libzip-0.11.1/lib/zip_fread.c \
           libzip-0.11.1/lib/zip_get_archive_comment.c \
           libzip-0.11.1/lib/zip_get_archive_flag.c \
           libzip-0.11.1/lib/zip_get_compression_implementation.c \
           libzip-0.11.1/lib/zip_get_encryption_implementation.c \
           libzip-0.11.1/lib/zip_get_file_comment.c \
           libzip-0.11.1/lib/zip_get_name.c \
           libzip-0.11.1/lib/zip_get_num_entries.c \
           libzip-0.11.1/lib/zip_get_num_files.c \
           libzip-0.11.1/lib/zip_memdup.c \
           libzip-0.11.1/lib/zip_name_locate.c \
           libzip-0.11.1/lib/zip_new.c \
           libzip-0.11.1/lib/zip_open.c \
           libzip-0.11.1/lib/zip_rename.c \
           libzip-0.11.1/lib/zip_replace.c \
           libzip-0.11.1/lib/zip_set_archive_comment.c \
           libzip-0.11.1/lib/zip_set_archive_flag.c \
           libzip-0.11.1/lib/zip_set_default_password.c \
           libzip-0.11.1/lib/zip_set_file_comment.c \
           libzip-0.11.1/lib/zip_set_file_compression.c \
           libzip-0.11.1/lib/zip_set_name.c \
           libzip-0.11.1/lib/zip_source_buffer.c \
           libzip-0.11.1/lib/zip_source_close.c \
           libzip-0.11.1/lib/zip_source_crc.c \
           libzip-0.11.1/lib/zip_source_deflate.c \
           libzip-0.11.1/lib/zip_source_error.c \
           libzip-0.11.1/lib/zip_source_file.c \
           libzip-0.11.1/lib/zip_source_filep.c \
           libzip-0.11.1/lib/zip_source_free.c \
           libzip-0.11.1/lib/zip_source_function.c \
           libzip-0.11.1/lib/zip_source_layered.c \
           libzip-0.11.1/lib/zip_source_open.c \
           libzip-0.11.1/lib/zip_source_pkware.c \
           libzip-0.11.1/lib/zip_source_pop.c \
           libzip-0.11.1/lib/zip_source_read.c \
           libzip-0.11.1/lib/zip_source_stat.c \
           libzip-0.11.1/lib/zip_source_window.c \
           libzip-0.11.1/lib/zip_source_zip.c \
           libzip-0.11.1/lib/zip_source_zip_new.c \
           libzip-0.11.1/lib/zip_stat.c \
           libzip-0.11.1/lib/zip_stat_index.c \
           libzip-0.11.1/lib/zip_stat_init.c \
           libzip-0.11.1/lib/zip_strerror.c \
           libzip-0.11.1/lib/zip_string.c \
           libzip-0.11.1/lib/zip_unchange.c \
           libzip-0.11.1/lib/zip_unchange_all.c \
           libzip-0.11.1/lib/zip_unchange_archive.c \
           libzip-0.11.1/lib/zip_unchange_data.c \
           libzip-0.11.1/lib/zip_utf-8.c 
