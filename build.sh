#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# CONFIGURATION


env=prod
draft=on




# ------------------------------------------------------------------------------
# SCRIPT


expose="`pwd`/expose/expose.sh"
export site_title="Smallgren Stories"
export theme_dir="theme1-custom"


case "$env" in
    "dev")
        export resourcepath_prefix="/"
        export asset_url_prefix="/"
        export nav_link_prefix="/"
        ;;

    "prod")
        export resourcepath_prefix="https://s3.amazonaws.com/smallgren-stories/"
        export asset_url_prefix="/stories/r/"
        export nav_link_prefix="/stories/"
        ;;

    *)
        echo "Unknown environment: $env"
        exit
        ;;
esac


case "$draft" in
    "on")
        draft_flag="-d"
        ;;

    *)
        draft_flag=""
        ;;
esac


cd src
$expose $draft_flag
