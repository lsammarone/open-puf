# lc_shell_gen_db.tcl
# generate db file from lib file

read_lib analog.lib
write_lib "[get_object_name [get_libs]]" -format db -output analog.db
exit
