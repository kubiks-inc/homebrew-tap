# Manual Release Process for Kubiks

This document describes how to manually release a new version of kubiks with binary distribution.

## Steps

### 1. Build the Darwin (macOS) Binary

In the kubiks-cli repository:

```bash
# Install dependencies
cd instrumentation
npm install
npm run build
cd ..

# Build for macOS (both architectures)
CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 go build -ldflags="-s -w" -o kubiks-amd64 .
CGO_ENABLED=0 GOOS=darwin GOARCH=arm64 go build -ldflags="-s -w" -o kubiks-arm64 .

# Create universal binary
lipo -create -output kubiks kubiks-amd64 kubiks-arm64
rm kubiks-amd64 kubiks-arm64

# Create tarball
tar -czf kubiks-darwin.tar.gz kubiks

# Calculate SHA256
shasum -a 256 kubiks-darwin.tar.gz
```

### 2. Create GitHub Release in tap repository

1. Go to https://github.com/kubiks-inc/tap/releases
2. Click "Create a new release"
3. Tag version: `v1.0.5` (or your version)
4. Release title: `Kubiks v1.0.5`
5. Upload `kubiks-darwin.tar.gz`
6. Publish release

### 3. Update Formula

Edit `Formula/kubiks.rb`:

1. Update the URL to point to the new release:
   ```ruby
   url "https://github.com/kubiks-inc/tap/releases/download/v1.0.5/kubiks-darwin.tar.gz"
   ```

2. Update the SHA256 with the value from step 1:
   ```ruby
   sha256 "your_calculated_sha256_here"
   ```

3. Commit and push:
   ```bash
   git add Formula/kubiks.rb
   git commit -m "Update kubiks to v1.0.5"
   git push
   ```

### 4. Test Installation

```bash
# Update homebrew
brew update

# Test installation
brew install kubiks-inc/tap/kubiks
# or if already installed
brew upgrade kubiks

# Verify
kubiks --version
```

## Notes

- The binary is now hosted in the tap repository's releases
- Users don't need Go installed
- Installation is much faster
- The formula is simpler and doesn't require building from source