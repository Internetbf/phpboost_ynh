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

phpboost_cli_install() {

cd $install_dir

#Exec PHPBoost CLI with PHP
php phpboost
php phpboost install # read current conf 
php phpboost install --db-pwd $db_pwd --db-user $db_user --db-schema $db_name --ws-server https://$domain --ws-path $path --u-login $phpboost_admin --u-pwd $phpboost_pwd

ynh_safe_rm $install_dir/install

}