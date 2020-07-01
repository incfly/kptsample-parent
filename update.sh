#!/bin/bash

SHA="58870053810126d2ac96f689eba47f706d5f8cc6"

git clone https://github.com/incfly/kptsample-child
pushd kptsample-child
git checkout ${SHA}
rm -rf .git
popd
