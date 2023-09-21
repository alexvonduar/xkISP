############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_array_partition -type block -factor 4 -dim 1 "edgeenhancement" ee_lines
set_directive_pipeline "edgeenhancement/padding_loop_1"
set_directive_pipeline "edgeenhancement/padding_loop_2"
set_directive_pipeline "edgeenhancement/padding_loop_3"
set_directive_loop_tripcount -min 1080 -max 8192 -avg 4096 "edgeenhancement/row_loop"
set_directive_loop_tripcount -avg 1920 "edgeenhancement/col_loop"
set_directive_unroll "edgeenhancement/block_refresh_loop_out"
set_directive_pipeline "edgeenhancement/col_loop"
set_directive_pipeline -II 1 "edgeenhancement/single_loop"
set_directive_array_partition -type complete -dim 1 "eeprocess" gblock
set_directive_array_partition -type complete -dim 1 "eeprocess" guass_55
set_directive_array_partition -type complete -dim 1 "eeprocess" feq_h
set_directive_array_partition -type complete -dim 1 "eeprocess" feq_l
set_directive_array_partition -type complete -dim 1 "eeprocess" result_v
set_directive_array_partition -type complete -dim 1 "eeprocess" bblock
set_directive_array_partition -type complete -dim 1 "eeprocess" rblock
set_directive_array_partition -type complete -dim 0 "edgeenhancement" ee_block
set_directive_unroll "eeprocess/eeprocess_label0"
set_directive_unroll "eeprocess/eeprocess_label1"
set_directive_unroll "eeprocess/eeprocess_label2"
set_directive_unroll "eeprocess/eeprocess_label3"
set_directive_unroll "eeprocess/eeprocess_label4"
set_directive_unroll "eeprocess/eeprocess_label5"
set_directive_unroll "eeprocess/eeprocess_label6"
set_directive_unroll "edgeenhancement/edgeenhancement_label7"
set_directive_unroll "edgeenhancement/edgeenhancement_label8"
set_directive_loop_merge "edgeenhancement/ee_row"
set_directive_pipeline "edgeenhancement/ee_col"
set_directive_unroll "edgeenhancement/block_refresh_loop_in"
