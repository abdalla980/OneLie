One Phone, One Lie 🎭

One Phone, One Lie is an offline, in-person social deduction party game built with Flutter.
Players share a single phone, answer questions out loud, and try to uncover who is lying — using nothing but intuition, reactions, and social pressure.

No accounts. No internet. One phone. One lie.

Table of Contents

Overview

How It Works

Core Features

Game Design Principles

Question Categories

Tech Stack

Project Structure

Getting Started

Running the App

Current Status

Roadmap

Contributing

License

Overview

One Phone, One Lie is designed for real-life group play.
Friends sit together and pass one phone around. Each round, one player is secretly chosen as the liar. Everyone answers the same question — except the liar, who must blend in.

The fun comes from:

Reading body language

Overthinking simple answers

Accusing friends

Watching reactions when the truth is revealed

The game is optimized for parties, trips, and casual hangouts.

How It Works

Players gather around and share one phone

The game secretly assigns a Liar

A question appears

Everyone answers out loud

Players vote on who they think lied

The liar is revealed

Special rules or consequences may apply

Next round begins

Supports 3–10 players.

Core Features

🎲 Random role assignment (liar / truth-teller)

🧠 Social deduction gameplay

🗂️ Multiple question categories

🔁 High replayability with large question pool

📴 Fully offline (no internet required)

📱 Single-device, pass-the-phone design

🌙 Dark-mode friendly UI for low-light environments

🧩 Optional advanced rule modes:

Silent rounds

Delayed reveals

Persistent liar consequences

Game Design Principles

Zero friction
No sign-ups, no setup, no explanations longer than a few seconds.

Real social interaction first
The phone supports the game — it doesn’t replace the players.

Short rounds, strong tension
Each round should feel fast, uncomfortable (in a fun way), and memorable.

Offline by design
Built for rooms, not servers.

Question Categories

The game uses a large, curated JSON-based question system.

Current categories include:

Personal
Travel, experiences, preferences, goals (safe, not invasive)

Football
Modern football questions focused on:

Premier League

La Liga (Real Madrid, Barcelona, Atlético Madrid)

Tactics, players, managers, big-game opinions

Preferences
“This or That” style questions
(e.g. Waffles or pancakes? City trip or beach trip?)

Each category contains 200+ questions to ensure replayability.

Tech Stack

Flutter

Dart

Local JSON asset loading

No backend

No analytics (for now)

Project Structure
oneline/
├── assets/
│   └── questions.json      # All game questions
├── lib/
│   ├── main.dart
│   ├── screens/
│   ├── widgets/
│   └── game_logic/
├── pubspec.yaml
└── README.md

Getting Started
Prerequisites

Flutter SDK (3.x)

Dart

Android Studio / VS Code

Android emulator or physical device

Running the App

Clone the repository:

git clone https://github.com/your-username/oneline.git


Install dependencies:

flutter pub get


Run the app:

flutter run

Current Status

🚧 In active development

Core game flow implemented

Question system integrated

UX testing with real players ongoing

Preparing Android-first release

The project is intentionally kept lean to support fast iteration.

Roadmap

 Polish UI animations and transitions

 Add rule presets (Casual / Chaos / Psychological)

 Improve voting & reveal pacing

 Add sound & haptic feedback

 Internal playtesting rounds

 Android release

 iOS release (later)

Contributing

This is currently a personal side project, but feedback is welcome.

If you want to contribute:

Open an issue for bugs or suggestions

Share playtesting feedback

Propose improvements to game flow or UX

License

All rights reserved
This project is not open-source at this time.
