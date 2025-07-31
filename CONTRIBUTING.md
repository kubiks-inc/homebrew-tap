# Contributing to Kubiks Homebrew Tap

Thank you for your interest in contributing to the Kubiks Homebrew Tap!

## Formula Updates

The Homebrew formula is automatically updated when new releases are published to the [kubiks-cli repository](https://github.com/kubiks-inc/kubiks-cli) through GitHub Actions.

### Automatic Updates

When a new release is created in the kubiks-cli repository:

1. A GitHub Actions workflow calculates the SHA256 checksum of the source tarball
2. Updates the formula with the new version, URL, and checksum
3. Creates a pull request with the changes
4. The PR is automatically merged after validation

### Manual Updates

If manual updates are needed:

1. Fork this repository
2. Update the formula in `Formula/kubiks.rb`:
   - Change the `url` to point to the new release tarball
   - Update the `sha256` with the checksum of the new tarball
   - Update the `version` field
3. Test the formula locally:
   ```bash
   brew install --build-from-source ./Formula/kubiks.rb
   brew test kubiks
   ```
4. Create a pull request with your changes

### Testing

Before submitting changes, ensure the formula works correctly:

```bash
# Install from local formula
brew install --build-from-source ./Formula/kubiks.rb

# Test the installation
brew test kubiks

# Verify the binary works
kubiks --help

# Clean up
brew uninstall kubiks
```

### Requirements

- Formula changes should follow [Homebrew's formula standards](https://docs.brew.sh/Formula-Cookbook)
- All dependencies should be declared
- The formula should build successfully on macOS
- Include appropriate test cases

## Reporting Issues

If you encounter issues with the Homebrew formula:

1. Check if the issue exists in the [kubiks-cli repository](https://github.com/kubiks-inc/kubiks-cli/issues)
2. If it's tap-specific, create an issue in this repository
3. Include:
   - Your macOS version
   - Homebrew version (`brew --version`)
   - The exact error message
   - Steps to reproduce

## Contact

For questions or support:
- 📧 Email: support@kubiks.ai
- 🐛 [Report issues](https://github.com/kubiks-inc/tap/issues)

Thank you for contributing! 🎉