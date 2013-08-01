#!/bin/bash

function buildApp {
	local version=$1

	sed -i -e s/com.smssync.portal.one/com.smssync.portal.$version/g AndroidManifest.xml
	sed -i -e s/com.smssync.portal.one/com.smssync.portal.$version/g src/com/smssync/portal/one/SmsSyncPortal.java
	sed -i -e s/com.smssync.portal.one/com.smssync.portal.$version/g gen/com/smssync/portal/one/BuildConfig.java
	sed -i -e s/com.smssync.portal.one/com.smssync.portal.$version/g gen/com/smssync/portal/one/R.java

	mkdir src/com/smssync/portal/$version
	mv src/com/smssync/portal/one/SmsSyncPortal.java src/com/smssync/portal/$version/SmsSyncPortal.java
}

for verison in one two three
do
	buildApp $version
	cp bin/SmsSyncPortal-debug.apk ~/Desktop/SmsSyncPortal-$version-debug.apk
	git reset --hard && git clean -df
done
