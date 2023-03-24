REP_HOME = $(shell pwd | rev | cut -d "/" -f1 | rev)

ifeq ($(REP_HOME),ven-script-shelltool)
SHELLTOOL_LOCATION = $(shell echo $(PWD))
else
SHELLTOOL_LOCATION = $(shell echo "$(PWD)/.shelltool")
endif

# -include $(SHELLTOOL_LOCATION)/makefiles/*.mk
gitflow_event:
	@export SHELLTOOL_LOCATION=$(SHELLTOOL_LOCATION) && \
	$(SHELLTOOL_LOCATION)/scripts/gitflow.sh script_gitflow_validate_branch_name