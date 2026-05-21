# CustomAI.TelegramKit

A developer-first starter kit for building an AI-powered Telegram bot with .NET.

This repository is built as a minimal foundation for a Telegram bot service that can connect to OpenAI and process messages inside a hosted background worker.

---

## 🚀 What this project contains

- `CustomAI.Telegram/CustomAI.Telegram.slnx` — modern XML-based .NET solution container
- `CustomAI.Telegram/CustomAI.Bot/` — worker service shell with bot execution entry points
- `CustomAI.Telegram/CustomAI.Tests/` — unit test project scaffold
- `.editorconfig` — formatting and style guidance for .NET files

The current runtime application is intentionally minimal: the worker loop is the starting place for bot integration, and package references include the key AI + Telegram SDKs.

---

## 🧩 Architecture overview

### CustomAI.Bot

- Host type: `Microsoft.NET.Sdk.Worker`
- Target framework: `net10.0`
- Packages included:
  - `OpenAI` — official OpenAI client for model completions and chat APIs
  - `Telegram.Bot` — Telegram Bot API client for updates, messaging, and webhook/polling handling

### CustomAI.Tests

- `xUnit` — test framework
- `Moq` — mocking support
- `AutoFixture` — fixture and object generation
- `coverlet.collector` — code coverage support

---

## 🛠️ Developer setup

### Requirements

- .NET 10 SDK
- `dotnet` CLI available in your shell
- Optional: Visual Studio 2022+ or Visual Studio Code with C# tooling

### Build and run

```bash
cd CustomAI.Telegram
dotnet build
```

### Run the worker locally

```bash
cd CustomAI.Telegram/CustomAI.Bot
dotnet run
```

> The current implementation uses a simple `BackgroundService` in `Worker.cs`. Replace or extend the loop with Telegram message processing and OpenAI orchestration.

---

## ⚙️ Environment configuration

Add your secrets using one of these approaches:

1. local `UserSecrets`
2. `Environment Variables`
3. root `.env` file loaded by your preferred configuration provider

Example `.env` values:

```env
TELEGRAM_BOT_TOKEN="your_telegram_bot_token"
OPENAI_API_KEY="your_openai_api_key"
```

> Never commit secrets into source control.

---

## 🧪 Tests

Run the full test suite from the solution root:

```bash
cd CustomAI.Telegram
dotnet test
```

The test project currently includes a scaffolded placeholder (`UnitTest1.cs`). Add focused unit coverage for Telegram handlers, OpenAI request flows, and service lifecycles.

---

## 🔧 Recommended extension points

- `CustomAI.Telegram/CustomAI.Bot/Worker.cs`
  - implement bot startup
  - register Telegram update handlers
  - call the OpenAI client

- add additional service classes for:
  - message routing
  - command parsing
  - conversation state
  - OpenAI prompt management

- update `CustomAI.Telegram/CustomAI.Bot/Program.cs` to configure logger, DI, and hosted services cleanly

---

## 📌 Notes for contributors

- Keep the core bot project small and testable
- Prefer dependency injection for external SDKs
- Keep bot tokens out of source control
- Use `dotnet format` or editor settings to enforce style

---

## 💡 Quick commands

```bash
cd CustomAI.Telegram
dotnet build
dotnet test
dotnet run --project CustomAI.Bot/CustomAI.Bot.csproj
```

---

## License

This project includes a `LICENSE` file. Review it before contributing or deploying.
