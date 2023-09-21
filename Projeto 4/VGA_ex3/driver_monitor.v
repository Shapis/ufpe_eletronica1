module driver_monitor(input iclock, input itemperature, input iautor, input imusica, output ovga_r, output ovga_g, output ovga_b, output ohsync, output ovsync);

wire wire_hcount;
wire wire_vcount;
wire wire_hcount_ov;
wire wire_dat_act_h;
wire wire_dat_act_v;


horizontal_sync hsync_inst(
	.clock(iclock),
   .hsync(ohsync),
	.hcount(wire_hcount),
	.hcount_ov(wire_hcount_ov),	
	.dat_act_h(wire_dat_act_h)
);


vertical_sync vsync_inst(
   .clock(iclock),
	.hcount_ov(wire_hcount_ov),
   .vsync(ovsync),
	.vcount(wire_vcount),
	.dat_act_v(wire_dat_act_v)
);

pixel_generator pixel_generator_inst(
   .clock(iclock),   
	.dat_act_h(wire_dat_act_h),
	.dat_act_v(wire_dat_act_v),
	.hcount(wire_hcount),
   .vcount(wire_vcount),
   .vga_r(ovga_r), 
	.vga_g(ovga_g), 
	.vga_b(ovga_b),
);
	 
endmodule