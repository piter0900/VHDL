###################################################################################
# Mentor Graphics Corporation
#
###################################################################################

#################
# Attributes
#################
set_attribute -name PLL_TYPE -value "FAST" -instance -type string u_audio_dac/p1/altpll -design rtl 
set_attribute -name INTENDED_DEVICE_FAMILY -value "Cyclone II" -instance -type string u_audio_dac/p1/altpll -design rtl 
set_attribute -name INCLK0_INPUT_FREQUENCY -value "37037" -instance -type integer u_audio_dac/p1/altpll -design rtl 
set_attribute -name COMPENSATE_CLOCK -value "CLK0" -instance -type string u_audio_dac/p1/altpll -design rtl 
set_attribute -name CLK1_PHASE_SHIFT -value "0" -instance -type string u_audio_dac/p1/altpll -design rtl 
set_attribute -name CLK1_MULTIPLY_BY -value "2" -instance -type integer u_audio_dac/p1/altpll -design rtl 
set_attribute -name CLK1_DUTY_CYCLE -value "50" -instance -type integer u_audio_dac/p1/altpll -design rtl 
set_attribute -name CLK1_DIVIDE_BY -value "3" -instance -type integer u_audio_dac/p1/altpll -design rtl 
set_attribute -name CLK0_PHASE_SHIFT -value "0" -instance -type string u_audio_dac/p1/altpll -design rtl 
set_attribute -name CLK0_MULTIPLY_BY -value "14" -instance -type integer u_audio_dac/p1/altpll -design rtl 
set_attribute -name CLK0_DUTY_CYCLE -value "50" -instance -type integer u_audio_dac/p1/altpll -design rtl 
set_attribute -name CLK0_DIVIDE_BY -value "15" -instance -type integer u_audio_dac/p1/altpll -design rtl 


##################
# Clocks
##################
create_clock { aud_bclk } -domain ClockDomain1 -name aud_bclk -period 4.000000 -waveform { 0.000000 2.000000 } -design rtl 
create_clock { clock_27 } -domain ClockDomain0 -name clock_27 -period 4.000000 -waveform { 0.000000 2.000000 } -design rtl 
create_generated_clock { u_audio_dac/reg_lrck_1x/out } -domain ClockDomain2 -name u_audio_dac_reg_lrck_1x/regout -multiply_by 1  -divide_by 3 -source clock_27 -duty_cycle 50.000000  -design rtl 
create_generated_clock { u_i2c_av_config/reg_m_i2c_ctrl_clk/out } -domain ClockDomain3 -name u_i2c_av_config/reg_m_i2c_ctrl_clk/regout -multiply_by 1  -divide_by 2 -source clock_27 -duty_cycle 50.000000  -design rtl 

