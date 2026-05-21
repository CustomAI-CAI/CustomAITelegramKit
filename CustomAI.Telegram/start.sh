#!/bin/bash

echo "1) Starting installing dependencies..."
dotnet add CustomAI.Bot/CustomAI.Bot.csproj package OpenAI
dotnet add CustomAI.Bot/CustomAI.Bot.csproj package Telegram.Bot
dotnet add CustomAI.Bot/CustomAI.Bot.csproj package DotNetEnv

echo "2) Starting linter work..."
dotnet format

echo "3) Verifying buildind... "
dotnet build

