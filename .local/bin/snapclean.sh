#!/bin/bash

snap list --all | \
	while read snapname ver rev trk pub notes; \
		do [[ $notes = *disabled* ]] && sudo snap remove "$snapname" --revision="$rev"; \
	done
