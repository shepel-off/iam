#!/bin/bash
git commit $@ -m "$(wget -o /dev/null -O - http://whatthecommit.com | grep -e '<p>' | sed -e s/'<p>'//)"
