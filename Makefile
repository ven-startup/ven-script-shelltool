REP_HOME = $(shell pwd | rev | cut -d "/" -f1 | rev)

ifeq ($(REP_HOME),ven-script-shelltool)
GIT_HOME = $(shell echo $(PWD))
else
GIT_HOME = $(shell echo "$(PWD)/.shelltool")
endif

# -include $(GIT_HOME)/makefiles/*.mk
gitflow_event:
	@export GIT_HOME=$(GIT_HOME) && \
	$(GIT_HOME)/scripts/gitflow.sh script_gitflow_validate_branch_name