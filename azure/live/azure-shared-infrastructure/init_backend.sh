#!/bin/bash

### Usage
#Example: Create Remote State for Tenant generalhospital in Dev US A
# ./init_backend.sh -t generalhospital -r us -e dev -i a

#Example: Create Remote State for Tenant generalhospital in Prd UK B
# ./init_backend.sh -t generalhospital -r uk -e prd -i b

err=0
declare -A param=(
    [TENANT]=''
    [REGION]=''
    [ENVIRONMENT]=''
    [INSTANCE]='' 
)

while getopts 't:r:e:i:' flag; do
    case "${flag}" in
        t) param[TENANT]="${OPTARG}" ;;
        r) param[REGION]="${OPTARG}" ;;
        e) param[ENVIRONMENT]="${OPTARG}" ;;
        i) param[INSTANCE]="${OPTARG}" ;;
        :) echo "Invalid option: $OPTARG requires an argument" 1>&2 
           exit 1 ;;
        \?) echo "Usage: -t TenantName -r region -e environment -i instance" 1>&2
            echo "Example: ./init_backend.sh -t generalhospital -r us -e dev -i a" 1>&2 
            exit 1 ;;
    esac
done

for var in "${!param[@]}"; do
    if [[ -z ${param[$var]} ]]; then
        echo "error: specify a value for $var with -$(echo $var | tr '[:upper:]' '[:lower:]' | cut -b 1)"
        ((err++))
    fi
done

if [ $err -gt 0 ]; then
    exit 1
fi

terraform.exe init \
    -backend-config="container_name=${param[TENANT]}-${param[REGION]}-${param[ENVIRONMENT]}-${param[INSTANCE]}"