#!/bin/bash

echo "$TORQUE_TF_PLAN_PATH"
value=`cat "$TORQUE_TF_PLAN_PATH"`
echo $value

if grep -q "0 to change" $value ; then
  echo "Success: No changed resources."
  exit 0
else
  echo "Error: The plan indicates modified resources"
  exit 1
fi


