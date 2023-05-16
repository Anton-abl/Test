#!/bin/bash

pom_file="Test/pom.xml"
backup_dir="back"
backup_file="$backup_dir/pom.xml.bak"
debug_file="$backup_dir/debug.log"

# Enable debug mode and redirect output to debug file
exec 5>"$debug_file"
BASH_XTRACEFD="5"
set -x

if [ -f "$pom_file" ]; then
    mkdir -p "$backup_dir"
    cp "$pom_file" "$backup_file"

    xml ed -L -N x="http://maven.apache.org/POM/4.0.0" \
         -u "//x:pluginManagement/x:plugins/x:plugin[x:artifactId='maven-jar-plugin']/x:version" -v "1.0.1" "$pom_file"

    echo "Changes applied successfully."
else
    echo "pom.xml file not found."
fi

# Disable debug mode and close debug file
set +x
exec 5>&-
