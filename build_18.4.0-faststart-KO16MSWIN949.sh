#!/usr/bin/env bash
set -euxo pipefail

bash buildContainerImage.sh -v 18.4.0
bash buildContainerImage.sh -v 18.4.0 -x

docker tag acadx0/oracle-xe:18.4.0-faststart acadx0/oracle-xe:18.4.0-faststart-KO16MSWIN949
docker push acadx0/oracle-xe:18.4.0-faststart-KO16MSWIN949

