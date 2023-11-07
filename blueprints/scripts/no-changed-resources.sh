#!/bin/bash

if grep -q 'Plan: [0-9]* to add, 0 to change, [0-9]* to destroy' "$TORQUE_TF_PLAN_PATH"; then
  echo "Success: No changed resources."
  exit 0
else
  echo "Error: The plan indicates nodified resources"
  exit 1
fi
