#!/bin/bash

script_gitflow_validate_branch_name() {
  echo -e "\e[32m[INFO]\e[0m Run script_gitflow_validate_branch_name"
  echo -e "\e[38;5;208m[DEBUG]\e[0m Branch name: $GITHUB_HEAD_REF"

  if [[ $GITHUB_HEAD_REF =~ ^feature/.* ]]; then
    echo -e "\e[32m[INFO]\e[0m Correct branch name validation"
  else
    echo -e "\e[31m[ERROR]\e[0m Incorrect branch name validation"
    echo -e "\e[31m[ERROR]\e[0m Branches must start with feature"
    exit 1
  fi
}

"$@"
