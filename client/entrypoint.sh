#!/bin/sh
set -e

case "${NODE_ENV}" in
    development)
        echo "Running Development Server"
        exec npm dev
        ;;
    test)
        echo "Running Test"
        exec npm test
        ;;
    production)
        echo "Running Production Server"
        exec npm start
        ;;
    *)
        echo "Unknown NODE environment: \"${NODE_ENV}\""
esac
