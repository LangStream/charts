#!/bin/bash
docker run --rm -v "$(pwd)/readme-template.md:/template" -v "$(pwd)/charts/langstream:/helm-docs" -u $(id -u) jnorwood/helm-docs:latest --dry-run --template-files /template > README.md
echo "DONE"