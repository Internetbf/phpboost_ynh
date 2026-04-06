#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================


ynh_mysql_db_shell_binary-mode() {
    local database=${1:-$db_name}

    local default_character_set=()
    if [[ -n "$database" ]]; then
        default_character_set=(
            --default-character-set
            "$(mysql -B "$database" <<< 'show variables like "character_set_database";' | tail -n1 | cut -f2)"
        )
    fi

    #mysql "${default_character_set[@]}" -B "$database"
	mysql "${default_character_set[@]}" -B "$database" --binary-mode -o 
}