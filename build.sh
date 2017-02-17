#!/usr/bin/env bash

expose="`pwd`/expose/expose.sh"
export site_title="Photo Essays"
export theme_dir="theme1-custom"
#export resourcepath_prefix="https://s3.amazonaws.com/smallgren-stories/"
#export asset_url_prefix="/stories/r/"
#export nav_link_prefix="/stories/"

cd src
$expose -d
