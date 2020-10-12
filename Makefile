# Makefile for simulate the full_adder.v
#
run: clean compile simulate

vcs:
	vcs \
	-full64 \
	-f filelist.f \
	-debug_all \
	+define+DUMP_FSDB \
	-P 

compile:
	vcs -debug_acc+all -debug_region+cell+encrypt -kdb -f filelist.f -l com.log

simulate:
	#./simv -gui=verdi -l sim.log
	./simv -l sim.log

wave:
	dve vcdplus.vpd &

run_cov: compile_coverage simulate_coverage

compile_coverage:
	vcs -full64 -debug_all -cm line+cond+fsm+tgl+branch -lca timescale.v full_adder.v full_adder_tb.v -l com.log

simulate_coverage:
	./simv -cm line+cond+fsm+tgl+branch -lca -cm_log cm.log sim.log

report_cov:
	urg -dir simv.vdb -format both -report coverage

dve_cov:
	dve -cov -covdir simv.vdb -lca

clean:
	rm -rf *.log csrc simv simv.daidir ucli.key vcdplus.vpd DVEfiles coverage simv.vdb

