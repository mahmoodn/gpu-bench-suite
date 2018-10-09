#!/bin/bash

nvprof --quiet --concurrent-kernels on --profile-api-trace all --profile-from-start on --system-profiling off --unified-memory-profiling per-process-device --track-memory-allocations off --device-buffer-size 8 --device-cdp-buffer-size 8 --openacc-profiling on --devices 0 --aggregate-mode on --metrics flop_sp_efficiency,flop_count_sp,flop_count_sp_add,flop_count_sp_fma,flop_count_sp_mul,flop_count_sp_special -f -o run1.nvprof  /opt/NAMD_2.13b1_Linux-x86_64-multicore-CUDA/namd2 +p8 2_md.conf 

nvprof --quiet --concurrent-kernels on --profile-api-trace all --profile-from-start on --system-profiling off --unified-memory-profiling per-process-device --track-memory-allocations off --device-buffer-size 8 --device-cdp-buffer-size 8 --openacc-profiling on --devices 0 --aggregate-mode on --metrics flop_count_dp,flop_count_hp,inst_fp_16,inst_fp_64,inst_fp_32 -f -o run2.nvprof  /opt/NAMD_2.13b1_Linux-x86_64-multicore-CUDA/namd2 +p8 2_md.conf 


nvprof --quiet --concurrent-kernels on --profile-api-trace all --profile-from-start on --system-profiling off --unified-memory-profiling per-process-device --track-memory-allocations off --device-buffer-size 8 --device-cdp-buffer-size 8 --openacc-profiling on --devices 0 --aggregate-mode on --metrics inst_compute_ld_st,ldst_issued,ldst_executed -f -o run3.nvprof  /opt/NAMD_2.13b1_Linux-x86_64-multicore-CUDA/namd2 +p8 2_md.conf 


nvprof --quiet --concurrent-kernels on --profile-api-trace all --profile-from-start on --system-profiling off --unified-memory-profiling per-process-device --track-memory-allocations off --device-buffer-size 8 --device-cdp-buffer-size 8 --openacc-profiling on --devices 0 --aggregate-mode on --metrics inst_executed,inst_replay_overhead,inst_issued -f -o run4.nvprof  /opt/NAMD_2.13b1_Linux-x86_64-multicore-CUDA/namd2 +p8 2_md.conf 


nvprof --quiet --concurrent-kernels on --profile-api-trace all --profile-from-start on --system-profiling off --unified-memory-profiling per-process-device --track-memory-allocations off --device-buffer-size 8 --device-cdp-buffer-size 8 --openacc-profiling on --devices 0 --aggregate-mode on --metrics stall_texture,stall_sync,stall_other,stall_constant_memory_dependency,stall_inst_fetch,stall_exec_dependency -f -o run5.nvprof  /opt/NAMD_2.13b1_Linux-x86_64-multicore-CUDA/namd2 +p8 2_md.conf 


nvprof --quiet --concurrent-kernels on --profile-api-trace all --profile-from-start on --system-profiling off --unified-memory-profiling per-process-device --track-memory-allocations off --device-buffer-size 8 --device-cdp-buffer-size 8 --openacc-profiling on --devices 0 --aggregate-mode on --metrics stall_memory_dependency,stall_pipe_busy,inst_misc,stall_memory_throttle,stall_not_selected -f -o run6.nvprof  /opt/NAMD_2.13b1_Linux-x86_64-multicore-CUDA/namd2 +p8 2_md.conf 


nvprof --quiet --concurrent-kernels on --profile-api-trace all --profile-from-start on --system-profiling off --unified-memory-profiling per-process-device --track-memory-allocations off --device-buffer-size 8 --device-cdp-buffer-size 8 --openacc-profiling on --devices 0 --aggregate-mode on --metrics inst_inter_thread_communication,inst_per_warp,inst_integer,inst_bit_convert,inst_control,cf_issued,cf_executed -f -o run7.nvprof  /opt/NAMD_2.13b1_Linux-x86_64-multicore-CUDA/namd2 +p8 2_md.conf 


nvprof --quiet --concurrent-kernels on --profile-api-trace all --profile-from-start on --system-profiling off --unified-memory-profiling per-process-device --track-memory-allocations off --device-buffer-size 8 --device-cdp-buffer-size 8 --openacc-profiling on --devices 0 --aggregate-mode on --metrics dram_read_bytes,dram_read_throughput,dram_utilization,dram_write_bytes,dram_write_throughput -f -o run8.nvprof  /opt/NAMD_2.13b1_Linux-x86_64-multicore-CUDA/namd2 +p8 2_md.conf 


nvprof --quiet --concurrent-kernels on --profile-api-trace all --profile-from-start on --system-profiling off --unified-memory-profiling per-process-device --track-memory-allocations off --device-buffer-size 8 --device-cdp-buffer-size 8 --openacc-profiling on --devices 0 --aggregate-mode on --metrics issued_ipc,executed_ipc,ipc -f -o run9.nvprof  /opt/NAMD_2.13b1_Linux-x86_64-multicore-CUDA/namd2 +p8 2_md.conf 


nvprof --quiet --concurrent-kernels on --profile-api-trace all --profile-from-start on --system-profiling off --unified-memory-profiling per-process-device --track-memory-allocations off --device-buffer-size 8 --device-cdp-buffer-size 8 --openacc-profiling on --devices 0 --aggregate-mode on --metrics tex_cache_hit_rate,tex_utilization,local_hit_rate,tex_cache_throughput -f -o run10.nvprof  /opt/NAMD_2.13b1_Linux-x86_64-multicore-CUDA/namd2 +p8 2_md.conf 


nvprof --quiet --concurrent-kernels on --profile-api-trace all --profile-from-start on --system-profiling off --unified-memory-profiling per-process-device --track-memory-allocations off --device-buffer-size 8 --device-cdp-buffer-size 8 --openacc-profiling on --devices 0 --aggregate-mode on --metrics l2_read_throughput,l2_tex_read_hit_rate,l2_tex_write_hit_rate,l2_utilization -f -o run11.nvprof  /opt/NAMD_2.13b1_Linux-x86_64-multicore-CUDA/namd2 +p8 2_md.conf 


nvprof --quiet --concurrent-kernels on --profile-api-trace all --profile-from-start on --system-profiling off --unified-memory-profiling per-process-device --track-memory-allocations off --device-buffer-size 8 --device-cdp-buffer-size 8 --openacc-profiling on --devices 0 --aggregate-mode on --metrics ldst_fu_utilization,local_memory_overhead -f -o run12.nvprof  /opt/NAMD_2.13b1_Linux-x86_64-multicore-CUDA/namd2 +p8 2_md.conf 


nvprof --quiet --concurrent-kernels on --profile-api-trace all --profile-from-start on --system-profiling off --unified-memory-profiling per-process-device --track-memory-allocations off --device-buffer-size 8 --device-cdp-buffer-size 8 --openacc-profiling on --devices 0 --aggregate-mode on --metrics shared_efficiency,shared_utilization -f -o run13.nvprof  /opt/NAMD_2.13b1_Linux-x86_64-multicore-CUDA/namd2 +p8 2_md.conf 


nvprof --quiet --concurrent-kernels on --profile-api-trace all --profile-from-start on --system-profiling off --unified-memory-profiling per-process-device --track-memory-allocations off --device-buffer-size 8 --device-cdp-buffer-size 8 --openacc-profiling on --devices 0 --aggregate-mode on --metrics sm_efficiency,branch_efficiency,warp_execution_efficiency -f -o run14.nvprof  /opt/NAMD_2.13b1_Linux-x86_64-multicore-CUDA/namd2 +p8 2_md.conf 


nvprof --quiet --concurrent-kernels on --profile-api-trace all --profile-from-start on --system-profiling off --unified-memory-profiling per-process-device --track-memory-allocations off --device-buffer-size 8 --device-cdp-buffer-size 8 --openacc-profiling on --devices 0 --aggregate-mode on --metrics warp_nonpred_execution_efficiency,flop_dp_efficiency,flop_hp_efficiency -f -o run15.nvprof  /opt/NAMD_2.13b1_Linux-x86_64-multicore-CUDA/namd2 +p8 2_md.conf 


nvprof --quiet --concurrent-kernels on --profile-api-trace all --profile-from-start on --system-profiling off --unified-memory-profiling per-process-device --track-memory-allocations off --device-buffer-size 8 --device-cdp-buffer-size 8 --openacc-profiling on --devices 0 --aggregate-mode on --metrics sysmem_read_bytes,sysmem_read_throughput,sysmem_read_utilization,sysmem_utilization -f -o run16.nvprof  /opt/NAMD_2.13b1_Linux-x86_64-multicore-CUDA/namd2 +p8 2_md.conf 


nvprof --quiet --concurrent-kernels on --profile-api-trace all --profile-from-start on --system-profiling off --unified-memory-profiling per-process-device --track-memory-allocations off --device-buffer-size 8 --device-cdp-buffer-size 8 --openacc-profiling on --devices 0 --aggregate-mode on --metrics sysmem_write_bytes,sysmem_write_throughput,sysmem_write_utilization -f -o run17.nvprof  /opt/NAMD_2.13b1_Linux-x86_64-multicore-CUDA/namd2 +p8 2_md.conf 



#1#flop_sp_efficiency,flop_count_sp,flop_count_sp_add,flop_count_sp_fma,flop_count_sp_mul,flop_count_sp_special
#2#flop_count_dp,flop_count_hp,inst_fp_16,inst_fp_64,inst_fp_32
#3#inst_compute_ld_st,ldst_issued,ldst_executed
#4#inst_executed,inst_replay_overhead,inst_issued
#5#stall_texture,stall_sync,stall_other,stall_constant_memory_dependency,stall_inst_fetch,stall_exec_dependency
#6#stall_memory_dependency,stall_pipe_busy,inst_misc,stall_memory_throttle,stall_not_selected
#7#inst_inter_thread_communication,inst_per_warp,inst_integer,inst_bit_convert,inst_control,cf_issued,cf_executed
#8#dram_read_bytes,dram_read_throughput,dram_utilization,dram_write_bytes,dram_write_throughput,
#9#issued_ipc,executed_ipc,ipc
#10#tex_cache_hit_rate,tex_utilization,local_hit_rate,tex_cache_throughput
#11#l2_read_throughput,l2_tex_read_hit_rate,l2_tex_write_hit_rate,l2_utilization
#12#ldst_fu_utilization,local_memory_overhead
#13#shared_efficiency,shared_utilization
#14#sm_efficiency,branch_efficiency,warp_execution_efficiency
#15#warp_nonpred_execution_efficiency,flop_dp_efficiency,flop_hp_efficiency
#16#sysmem_read_bytes,sysmem_read_throughput,sysmem_read_utilization,sysmem_utilization
#17#sysmem_write_bytes,sysmem_write_throughput,sysmem_write_utilization










