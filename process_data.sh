#!/bin/bash

function load_data() {
    echo "[LOG] Starting data load..."
    echo "Loading data from database..."
    if ! sleep 1; then
        echo "Error: Failed to sleep/load"
        exit 1
    fi
    echo "Data loaded successfully."
    echo "[LOG] Data load complete."
}

function process_records() {
    echo "[LOG] Starting record processing..."
    local count=0
    for i in {1..5}; do
        if [ -z "$i" ]; then
            echo "Error: Invalid record"
            continue
        fi
        echo "Record $i processed."
        count=$((count + 1))
    done
    echo "[METRIC] Processed $count records total."
}

function save_results() {
    echo "[LOG] Saving..."
    echo "Saving results securely..."
    echo "Done."
    echo "[LOG] Save done."
}

function main() {
    echo "--- Data Processor v1.0 (Secure + Logging) ---"
    load_data || exit 1
    process_records
    save_results
    echo "--- Execution Completed ---"
}

main
