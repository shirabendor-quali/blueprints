#!/bin/bash

if grep -q 'Plan: [1-9][0-9]* to add, 0 to change, 0 to destroy' "$TORQUE_TF_PLAN_PATH"; then
  echo "Error: The plan indicates new resources"
  exit 1
else
  echo "Success: No new resources added."
  exit 0
fi
