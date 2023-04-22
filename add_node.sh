#!/bin/bash

# Prompt user for instance name and target IP address
read -p "Enter instance name: " instance
read -p "Enter target IP address: " target_ip

# Append new target to prometheus.yml file
echo "  - job_name: node
    metrics_path: /metrics
    static_configs:
      - targets:
          - ${target_ip}:9100
        labels:
          instance: ${instance}" >> prometheus/prometheus.yml
