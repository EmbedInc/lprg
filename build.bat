@echo off
rem
rem   Build the firmware from this source directory.
rem
setlocal
set srcdir=picprg
set buildname=lprg

call treename_var (cog)source/pic/fwtype.all tnam
if exist "%tnam%" (
  call src_get pic fwtype.all
  )

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
call src_get_ins_aspic pic usb0

call src_ins_aspic %srcdir% %buildname%lib -set make_version
call src_get_ins_aspic %srcdir% %buildname%
call src_get_ins_aspic %srcdir% %buildname%_usb
call src_get_ins_aspic %srcdir% %buildname%_usb0

call src_get_ins_aspic %srcdir% pprog picprg
call src_get_ins_aspic %srcdir% pprog picprg_cmd
call src_get_ins_aspic %srcdir% pprog picprg_core12
call src_get_ins_aspic %srcdir% pprog picprg_f16
call src_get_ins_aspic %srcdir% pprog picprg_f16e
call src_get_ins_aspic %srcdir% pprog picprg_f18
call src_get_ins_aspic %srcdir% pprog picprg_f30
call src_get_ins_aspic %srcdir% pprog picprg_name
call src_get_ins_aspic %srcdir% pprog picprg_op
call src_get_ins_aspic %srcdir% pprog picprg_prom
call src_get_ins_aspic %srcdir% pprog picprg_sert

call src_aspic %srcdir% %buildname%_ad
call src_aspic %srcdir% %buildname%_adda
call src_aspic %srcdir% %buildname%_cmd
call src_aspic %srcdir% %buildname%_core12
call src_aspic %srcdir% %buildname%_f16
call src_aspic %srcdir% %buildname%_f16e
call src_aspic %srcdir% %buildname%_f18
call src_aspic %srcdir% %buildname%_f30
call src_aspic %srcdir% %buildname%_init
call src_aspic %srcdir% %buildname%_intr
call src_aspic %srcdir% %buildname%_led
call src_aspic %srcdir% %buildname%_main
call src_aspic %srcdir% %buildname%_mulu
call src_aspic %srcdir% %buildname%_name
call src_aspic %srcdir% %buildname%_op
call src_aspic %srcdir% %buildname%_opmode
call src_aspic %srcdir% %buildname%_port
call src_aspic %srcdir% %buildname%_prom
call src_aspic %srcdir% %buildname%_regs
call src_aspic %srcdir% %buildname%_sert
call src_aspic %srcdir% %buildname%_stack
call src_aspic %srcdir% %buildname%_task
call src_aspic %srcdir% %buildname%_uart
call src_aspic %srcdir% %buildname%_usb
call src_aspic %srcdir% %buildname%_usb0
call src_aspic %srcdir% %buildname%_vdd
call src_aspic %srcdir% %buildname%_vpp
call src_aspic %srcdir% %buildname%_wait

call src_libpic %srcdir% %buildname%

call src_aspic %srcdir% %buildname%_strt
call src_expic %srcdir% %buildname%
