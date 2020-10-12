# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions


###Synopsys_License
export SNPSLMD_LICENSE_FILE=27000@Magic
export EDA_HOME=/home/zhlv/synopsys

##SCL
export SCL_HOME=$EDA_HOME/scl
export PATH=$PATH:$EDA_HOME/scl/linux64/bin
alias lmd='/home/zhlv/synopsys/scl/linux64/bin/lmgrd -c /home/zhlv/synopsys/scl//license/Synopsys.dat'

##VCS
export VCS_HOME=$EDA_HOME/vcs
export PATH=$PATH:$EDA_HOME/vcs/bin
export VCS_ARCH_OVERRIDE=linux
export VCS_TARGET_ARCH=amd64

##Verdi
export VERDI_HOME=$EDA_HOME/verdi
export PATH=$PATH:$EDA_HOME/verdi/bin
export NOVAS_HOME=$VERDI_HOME
export LD_LIBRAY_PATH=$VERDI_HOME/share/PLI/lib/LINUX64:$LD_LIBRARY_PATH
export LD_LIBRAY_PATH=$VERDI_HOME/share/PLI/VCS/LINUX64:$LD_LIBRARY_PATH

##DC
export DC_HOME=$EDA_HOME/syn
export PATH=$PATH:$EDA_HOME/syn/bin

#UVM


####iverilog
export PATH=$PATH:/home/zhlv/software/iverilog/bin
