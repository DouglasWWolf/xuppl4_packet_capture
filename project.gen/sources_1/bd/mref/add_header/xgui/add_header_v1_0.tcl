# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CHANNEL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CLOCK_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FIFO_DEPTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.CHANNEL { PARAM_VALUE.CHANNEL } {
	# Procedure called to update CHANNEL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CHANNEL { PARAM_VALUE.CHANNEL } {
	# Procedure called to validate CHANNEL
	return true
}

proc update_PARAM_VALUE.CLOCK_TYPE { PARAM_VALUE.CLOCK_TYPE } {
	# Procedure called to update CLOCK_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLOCK_TYPE { PARAM_VALUE.CLOCK_TYPE } {
	# Procedure called to validate CLOCK_TYPE
	return true
}

proc update_PARAM_VALUE.DW { PARAM_VALUE.DW } {
	# Procedure called to update DW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DW { PARAM_VALUE.DW } {
	# Procedure called to validate DW
	return true
}

proc update_PARAM_VALUE.FIFO_DEPTH { PARAM_VALUE.FIFO_DEPTH } {
	# Procedure called to update FIFO_DEPTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FIFO_DEPTH { PARAM_VALUE.FIFO_DEPTH } {
	# Procedure called to validate FIFO_DEPTH
	return true
}


proc update_MODELPARAM_VALUE.DW { MODELPARAM_VALUE.DW PARAM_VALUE.DW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DW}] ${MODELPARAM_VALUE.DW}
}

proc update_MODELPARAM_VALUE.FIFO_DEPTH { MODELPARAM_VALUE.FIFO_DEPTH PARAM_VALUE.FIFO_DEPTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FIFO_DEPTH}] ${MODELPARAM_VALUE.FIFO_DEPTH}
}

proc update_MODELPARAM_VALUE.CLOCK_TYPE { MODELPARAM_VALUE.CLOCK_TYPE PARAM_VALUE.CLOCK_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLOCK_TYPE}] ${MODELPARAM_VALUE.CLOCK_TYPE}
}

proc update_MODELPARAM_VALUE.CHANNEL { MODELPARAM_VALUE.CHANNEL PARAM_VALUE.CHANNEL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CHANNEL}] ${MODELPARAM_VALUE.CHANNEL}
}

