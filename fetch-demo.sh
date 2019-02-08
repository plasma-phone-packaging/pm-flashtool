#!/bin/sh

set -e

output_tar=$1

rm -rf fetch-demo-data
git clone https://anongit.kde.org/scratch/apol/fetch-demo-data.git

rm -rf OUTPUT
mkdir OUTPUT
for i in fetch-demo-data/*.sh; do
    sh $i OUTPUT
done

pushd OUTPUT
tar cvf ../$output_tar .
popd
