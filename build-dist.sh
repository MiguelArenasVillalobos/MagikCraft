#!/bin/sh
echo "Step 1/4: Cleaning build directory..." && \
rm -rf build && \

echo "Step 2/4: Building Java plugin..."
ant -noinput -buildfile build.xml && \

echo "Step 3/4: Building Scriptcraft Modular Architecture patch..." && \
npm run build && \
echo "Step 4/4: Moving built artifacts to build directory..." && \
mkdir -p build/scriptcraft && \
mkdir -p build/plugins && \
cp -r target/js/* build/scriptcraft/  && \
cp -r src/main/js/* build/scriptcraft/ && \
cp -r SMA/sma-bootstrap build/scriptcraft/plugins && \
mkdir -p build/scriptcraft-plugins/__jasmine && \
cp -r SMA/__jasmine/* build/scriptcraft-plugins/__jasmine/ && \
cp SMA/*.md build/ && \
cp target/scriptcraft.jar build/plugins/magik-scriptcraft.jar && \
echo "Built distribution in build directory. Done!"