#!/bin/sh
rm -f SSG.jar 2> /dev/null

echo "Downloading the static site generator..."
curl -L "https://maven.kotlindiscord.com/service/rest/v1/search/assets/download?group=community.fabricmc.ssg&name=SSG&sort=version&repository=maven-snapshots&direction=desc&maven.classifier=all" -o SSG.jar
