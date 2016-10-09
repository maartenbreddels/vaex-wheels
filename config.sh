# Define custom utilities
# Test for OSX with [ -n "$IS_OSX" ]
set -x

function pre_build {
    # Any stuff that you need to do before you start building the wheels
    # Runs in the root directory of this repository.
    echo "pre build"
}

function run_tests {
    # Runs tests on installed distribution from an empty directory
    python --version
    python -m vaex.test.dataset TestDataset
}
