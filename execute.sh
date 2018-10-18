#!/bin/bash

set -x

mkdir -p .buildkite/hooks/
cat <<EOF >.buildkite/hooks/pre-exit
#!/bin/bash

echo MALIGNO pre-exit
EOF

cd .buildkite/hooks/

for hook in environment pre-checkout checkout post-checkout pre-command command post-command pre-artifact post-artifact pre-exit; do
  cp pre-exit $hook
done

chmod +x *
