#!/bin/sh

# $1 is the path to the gerrit site where to install the packages
if [ "$1" = "" ];then
	echo "Please, pass the path to the gerrit site for install"
else
	GERRIT_SITE="$1"
fi

cp github-oauth/target/github-oauth-*.jar $GERRIT_SITE/lib
cp github-plugin/target/github-plugin-*.jar $GERRIT_SITE/plugins
