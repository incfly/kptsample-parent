#!/bin/bash

SHA=${SHA:-52630e6b4743e50d357833f284a7695967160ce9}

git clone https://github.com/incfly/kptsample-child
pushd kptsample-child
git checkout ${SHA}
rm -rf .git
popd
