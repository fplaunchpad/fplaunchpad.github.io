#!/bin/bash

# Link checker script for FP Launchpad website
# Extracts all URLs from markdown files and checks if they're accessible

echo "Checking links in FP Launchpad website..."
echo ""

# Extract URLs from markdown files
urls=$(grep -hoE 'https?://[^)]+' *.md | sort -u)

failed=0
passed=0

for url in $urls; do
    echo -n "Checking $url ... "

    # Use curl to check if URL is accessible (follow redirects, timeout 10s)
    if curl -sSf -L --max-time 10 -o /dev/null "$url" 2>/dev/null; then
        echo "✓ OK"
        ((passed++))
    else
        echo "✗ FAILED"
        ((failed++))
    fi
done

echo ""
echo "Summary: $passed passed, $failed failed"

if [ $failed -gt 0 ]; then
    exit 1
fi
