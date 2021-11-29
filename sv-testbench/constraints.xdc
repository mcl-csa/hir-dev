create_clock -period 3.330 -name clk -waveform {0.000 1.665} [get_ports -filter { NAME =~  "*clk*" && DIRECTION == "IN" }]

