#!/bin/bash
rm -rf README.md
cp readme-template.md README.md
cd charts/langstream
tempfile=$(mktemp)
docker run --rm --volume "$(pwd):/helm-docs" -u $(id -u) jnorwood/helm-docs:latest --dry-run  > temp.md
sed -i '' -e '/insert-ref-here-->/r temp.md' ../../README.md
rm -rf temp.md
echo "DONE"