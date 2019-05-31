# Define custom utilities
# Test for OSX with [ -n "$IS_OSX" ]

function pre_build {
    # Any stuff that you need to do before you start building the wheels
    # Runs in the root directory of this repository.
    echo "pre build"
    build_pcre
    echo "force gcc"
    if [ -n "$IS_OSX" ]; then
        export CC=gcc;
        export CXX=g++;
    fi
}

function run_tests {
    # Runs tests on installed distribution from an empty directory
    python --version
    python -c "import vaex.strings"
}
