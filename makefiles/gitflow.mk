gitflow_event:
	@export GIT_HOME=${GIT_HOME} && \
	chmod +x ${GIT_HOME}/scripts/gitflow.sh && \
	${GIT_HOME}/scripts/gitflow.sh script_gitflow_validate_branch_name