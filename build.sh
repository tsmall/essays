#!/usr/bin/env bash

expose="`pwd`/expose/expose.sh"
export site_title="Photo Essays"
export theme_dir="theme1-custom"

cd src
$expose -d