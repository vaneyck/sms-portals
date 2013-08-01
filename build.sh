#!/bin/bash

function buildApp {
	local version=$1

	sed -i -e s/com.smssync.portal.million/com.smssync.portal.$version/g AndroidManifest.xml
	sed -i -e s/com.smssync.portal.million/com.smssync.portal.$version/g src/com/smssync/portal/million/SmsSyncPortal.java

	mkdir src/com/smssync/portal/$version
	mv src/com/smssync/portal/million/SmsSyncPortal.java src/com/smssync/portal/$version/SmsSyncPortal.java
	ant debug
}

#for verison in million two three
#do
#	buildApp $version
#	cp bin/SmsSyncPortal-debug.apk ~/Desktop/SmsSyncPortal-$version-debug.apk
#	git reset --hard && git clean -df
#dmillion

buildApp two
