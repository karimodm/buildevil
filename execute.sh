#!/bin/bash

mkdir -p .buildkite/hooks/
cat <<EOF >.buildkite/hooks/pre-exit
#!/bin/bash

echo MALIGNO pre-exit
EOF

cat <<EOF >.buildkite/hooks/pre-artifact
#!/bin/bash

echo MALIGNO pre-exit
EOF

chmod +x .buildkite/hooks/*
