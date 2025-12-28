🎭 One Phone, One Lie

One Phone, One Lie is an offline, in-person social deduction party game built with Flutter.
Friends gather around, share one phone, answer questions out loud — and try to figure out who is lying.

No accounts. No internet. No setup.
Just tension, reactions, and chaos.

✨ Why This Game Exists

Most party games are:

Too complicated to explain

Too repetitive

Too dependent on multiple devices or internet

Overdesigned and under-social

One Phone, One Lie is built around a simple idea:

The phone should support the social interaction — not replace it.

The real game happens between players, not on the screen.

🕹️ Gameplay Overview

One phone is shared between all players

Each round:

One player is secretly chosen as the Liar

A question appears

Everyone answers out loud

Players vote on who they think lied

The truth is revealed

Special rules can modify how rounds behave

Repeat for as many rounds as the group wants

👥 Players: 3–10
📍 Setting: Same room, same phone
📴 Internet: Not required

🧠 Game Design Principles

Zero friction
Start playing in seconds. No accounts, no tutorials.

Psychological tension over mechanics
Body language, hesitation, and confidence matter more than rules.

Short rounds, high replayability
Easy to say “just one more round.”

Offline-first by design
Built for parties, trips, cafés, and living rooms.

🧩 Core Features

🎲 Random liar assignment

🧑‍🤝‍🧑 Single-device, pass-the-phone gameplay

🗂️ Large question database (600+ questions)

🧠 Social deduction & bluffing mechanics

📴 Fully offline

🌙 Dark-mode friendly UI

⚙️ Optional advanced rules:

Silent rounds

Delayed reveals

Persistent consequences for liars

🗂️ Question Categories

All questions are stored locally in a JSON file for easy iteration and expansion.

Current Categories

Personal
Experiences, travel, preferences, memories
(intentionally not invasive or uncomfortable)

Football
Modern football questions with a focus on:

Premier League

La Liga (Real Madrid, Barcelona, Atlético Madrid)

Tactics, players, managers, big-game opinions

Preferences
“This or That” style questions
(e.g. Waffles or pancakes? City trip or beach trip?)

Each category contains 200+ curated questions to ensure replayability.

🛠️ Tech Stack

Flutter

Dart

Local JSON asset loading

No backend

No user accounts

No analytics (by design, for now)

📂 Project Structure
oneline/
├── assets/
│   └── questions.json        # Question database
├── lib/
│   ├── main.dart
│   ├── screens/
│   ├── widgets/
│   └── game_logic/
├── pubspec.yaml
└── README.md

🚀 Getting Started
Prerequisites

Flutter SDK (3.x)

Dart

Android Studio or VS Code

Android emulator or physical device

Installation
git clone https://github.com/your-username/oneline.git
cd oneline
flutter pub get
flutter run

🧪 Project Status

🚧 In active development

Current focus:

UX polish

Real-world playtesting

Improving pacing and reveal moments

Preparing Android-first release

This project is intentionally kept lean to allow fast iteration.

🗺️ Roadmap

 Refine round pacing & reveal animations

 Add rule presets (Casual / Chaos / Psychological)

 Sound effects & haptic feedback

 Improved voting UX

 Internal playtesting builds

 Android Play Store release

 iOS release (later)

🤝 Contributing & Feedback

This is currently a personal side project, but feedback is welcome.

Ways to contribute:

Report bugs or UX confusion

Suggest rule ideas

Share playtesting feedback

Propose improvements via issues

📄 License

All rights reserved.
This project is not open-source at this time.

🧠 Final Note

This game is designed to be:

Easy to start

Hard to master

Fun to argue about

Different every time

If it causes laughter, suspicion, or “okay one more round” — it’s working.
