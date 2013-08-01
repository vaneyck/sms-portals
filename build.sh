#!/bin/bash

version=$1

sed -i -e s/com.smssync.portal.one/com.smssync.portal.$version/g AndroidManifest.xml
sed -i -e s/com.smssync.portal.one/com.smssync.portal.$version/g src/com/smssync/portal/one/SmsSyncPortal.java
sed -i -e s/com.smssync.portal.one/com.smssync.portal.$version/g gen/com/smssync/portal/one/BuildConfig.java
sed -i -e s/com.smssync.portal.one/com.smssync.portal.$version/g gen/com/smssync/portal/one/R.java
