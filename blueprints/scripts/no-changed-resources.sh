#!/bin/bash

if grep -q '0 to change' $(<"$TORQUE_TF_PLAN_PATH") ; then
  echo "Success: No changed resources."
  exit 0
else
  echo "Error: The plan indicates modified resources"
  exit 1
fi


