# Kubiks Inc Homebrew Tap

This is the official Homebrew tap for [Kubiks CLI](https://github.com/kubiks-inc/kubiks-cli), an AI-powered debugging tool for Next.js applications.

## What is Kubiks CLI?

Kubiks CLI automatically instruments your Next.js applications with OpenTelemetry, captures comprehensive telemetry data (logs, traces, metrics), and integrates with Cursor IDE through MCP (Model Context Protocol) to provide AI-powered debugging with full application context.

## Installation

### Install the CLI

```bash
brew install kubiks-inc/tap/kubiks
```

### Add the tap (optional)

```bash
brew tap kubiks-inc/tap
brew install kubiks
```

## Usage

In your Next.js project directory:

```bash
kubiks
```

This will:
- 🔧 Automatically instrument your Next.js app with zero configuration
- 📊 Capture HTTP requests, SQL queries, AI SDK calls, and logs
- 🤖 Expose telemetry data to Cursor through MCP for AI-powered debugging
- ⚡ Enable you to ask Cursor questions like "Why is my API failing?" with full context

## Features

- **Zero-configuration setup** for Next.js applications
- **Real-time telemetry collection** (logs, metrics, traces)
- **Local SQLite storage** with intelligent querying
- **MCP integration** for seamless AI editor support
- **Cross-platform support** (macOS, Linux, Windows)

## Pro Tip

For the best debugging experience, add this to your `next.config.js`:

```javascript
/** @type {import('next').NextConfig} */
const nextConfig = {
  experimental: {
    // Forward browser logs to the terminal for easier debugging
    browserDebugInfoInTerminal: true,
  },
}

module.exports = nextConfig
```

## Documentation

- [GitHub Repository](https://github.com/kubiks-inc/kubiks-cli)
- [Documentation](https://github.com/kubiks-inc/kubiks-cli#readme)

## Support

- 🐛 [Report issues](https://github.com/kubiks-inc/kubiks-cli/issues)
- 💡 [Request features](https://github.com/kubiks-inc/kubiks-cli/issues)
- 📧 Email: support@kubiks.ai

---

**Made with ❤️ by developers, for developers.** Happy debugging! 🐛✨
