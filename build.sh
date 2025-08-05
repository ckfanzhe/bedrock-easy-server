#!/bin/bash

# Minecraft Easy Server Build Script
# Used to package single-file releases with embedded frontend files

set -e

echo "🚀 Starting Minecraft Easy Server build..."

# Clean old build files
echo "🧹 Cleaning old build files..."
rm -f minecraft-easyserver-*

# Build current platform version
echo "📦 Building current platform version..."
go build  -o minecraft-easyserver-embedded

# Build Windows version
echo "🪟 Building Windows version..."
GOOS=windows GOARCH=amd64 go build -ldflags "-s -w" -o minecraft-easyserver-windows.exe

# Build Linux version
echo "🐧 Building Linux version..."
GOOS=linux GOARCH=amd64 go build  -o minecraft-easyserver-linux


# Display build results
echo "✅ Build completed! Generated files:"
ls -lh minecraft-easyserver-*

echo ""
echo "📋 Usage:"
echo "  - minecraft-easyserver-embedded: Current platform version"
echo "  - minecraft-easyserver-windows.exe: Windows version"
echo "  - minecraft-easyserver-linux: Linux version"
echo ""
echo "🎉 All versions include complete frontend files and can run independently!"