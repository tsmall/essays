#!/usr/bin/env bash

src_site_path="src/_site"
dest_site_path="$HOME/Projects/smallgren.com/resources/stories"
dest_asset_path="$dest_site_path/public/"

# Copy all of the assets.
cp -v "$src_site_path/"*.css "$dest_asset_path"
cp -v "$src_site_path/"*.js "$dest_asset_path"
cp -vR "$src_site_path/img" "$dest_asset_path"

# Copy the HTML files.
cd "$src_site_path"
for html_path in $(find . -name "index.html")
do
    html_path=$(echo "$html_path" | sed 's/^\.\///')
    html_dir=$(dirname $html_path)
    mkdir -p "$dest_site_path/$html_dir"
    cp -v "$html_path" "$dest_site_path/$html_path"
done
