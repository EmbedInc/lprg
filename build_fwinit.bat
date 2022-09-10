@echo off
rem
rem   Set up the environment for building firmware from this source directory.
rem
call build_vars

rem   Get assembler "library" include files.  These are left in the SRC/PIC
rem   directory.
rem
call src_get_ins_aspic pic adda
call src_get_ins_aspic pic fwtype
call src_get_ins_aspic pic mulu
call src_get_ins_aspic pic port
call src_get_ins_aspic pic regs
call src_get_ins_aspic pic stack
call src_get_ins_aspic pic std
call src_get_ins_aspic pic std_def
call src_get_ins_aspic pic task
call src_get_ins_aspic pic task_setup
call src_get_ins_aspic pic usb
call src_get_ins_aspic pic usb_setup
call src_get_ins_aspic pic usb0

call src_get_ins_aspic %srcdir% pprog picprg
call src_get_ins_aspic %srcdir% pprog picprg_cmd
call src_get_ins_aspic %srcdir% pprog picprg_core12
call src_get_ins_aspic %srcdir% pprog picprg_f16
call src_get_ins_aspic %srcdir% pprog picprg_f16b
call src_get_ins_aspic %srcdir% pprog picprg_f16e
call src_get_ins_aspic %srcdir% pprog picprg_f18
call src_get_ins_aspic %srcdir% pprog picprg_f30
call src_get_ins_aspic %srcdir% pprog picprg_name
call src_get_ins_aspic %srcdir% pprog picprg_op
call src_get_ins_aspic %srcdir% pprog picprg_prom
call src_get_ins_aspic %srcdir% pprog picprg_sert

call src_ins_aspic %srcdir% %fwname%lib -set make_version
call src_get_ins_aspic %srcdir% %fwname%
call src_get_ins_aspic %srcdir% %fwname%_usb
call src_get_ins_aspic %srcdir% %fwname%_usb0
