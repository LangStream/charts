#!/bin/bash
set -e
version=$1
if [ -z "$version" ]; then
  echo "Usage: $0 <version>"
  exit 1
fi
if [[ $version != v* ]]; then
  version="v${version}"
fi


names=(agents.langstream.ai-v1.yml applications.langstream.ai-v1.yml)
for name in "${names[@]}"; do
  url="https://github.com/LangStream/langstream/releases/download/${version}/${name}"
  echo "Getting $url"
  curl -LfsS "$url" -o charts/langstream/crds/${name}
done
echo "Done."
git status


