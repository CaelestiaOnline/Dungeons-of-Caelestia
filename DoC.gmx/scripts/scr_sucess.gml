var script = argument0;
var a1 = argument1;
var a2 = argument2;
var a3 = argument3;
var success = script_execute(script, a1, a2, a3);
if(success) show_debug_message("True");
else show_debug_message("False");
