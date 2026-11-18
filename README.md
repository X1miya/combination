<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:0D1117,50:00C853,100:00E676&height=180&section=header&text=Combination&fontSize=42&fontColor=ffffff&fontAlignY=40" width="100%" alt="Header" />

<p align="center">
  <img src="https://img.shields.io/badge/Language-English-00FF88?style=flat-square" alt="English" />
  <a href="README_RU.md">
    <img src="https://img.shields.io/badge/%D0%AF%D0%B7%D1%8B%D0%BA-%D0%A0%D1%83%D1%81%D1%81%D0%BA%D0%B8%D0%B9-0D1117?style=flat-square&logo=googletranslate&logoColor=white" alt="Русская версия" />
  </a>
</p>

[![Minecraft](https://img.shields.io/badge/Minecraft-1.21.11-00FF88?style=for-the-badge&logo=minecraft&logoColor=white)](https://www.minecraft.net/)
[![Version](https://img.shields.io/badge/Map-v1.2.1_(EN_%2B_RU)-blue?style=for-the-badge)](https://github.com/X1miya/combination/releases)
[![CurseForge](https://img.shields.io/badge/CurseForge-Worlds-F16436?style=for-the-badge&logo=curseforge&logoColor=white)](https://www.curseforge.com/minecraft/worlds/combination)
[![GitHub Release](https://img.shields.io/badge/GitHub-Releases-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/X1miya/combination/releases)
[![Minecraft Inside](https://img.shields.io/badge/Minecraft_Inside-RU-brightgreen?style=for-the-badge)](https://minecraft-inside.ru/maps/168088-kombinaciya.html)
[![Genre](https://img.shields.io/badge/Genre-Puzzle_Game-green?style=for-the-badge)](https://github.com/X1miya/combination)
[![Advancements](https://img.shields.io/badge/Custom-Advancements-yellow?style=for-the-badge)](https://github.com/X1miya/combination)
[![Studio](https://img.shields.io/badge/Studio-X1miyaStudio-064E3B?style=for-the-badge)](https://t.me/X1miyaStudio)

<p align="center">
  <b>Datapack and playable puzzle world for the "Combination" memory-sequence map.</b><br/>
  Memorize patterns, repeat sequences under pressure, set high scores, and unlock custom advancements!
</p>

</div>

---

### 🧩 Gameplay & Mechanics

* 🧠 **Pattern Memory System** — dynamic generation and validation of randomized color/block sequences.
* ⏱ **Scoreboard Engine** — score tracking, attempt handling, and pass/fail feedback (`correct.mcfunction` / `mistake.mcfunction`).
* ✨ **Interactive Animations** — visual highlights for block selections and round timers (`an_loop`, `animation`).
* 🏆 **Custom Advancement Tree**:
  * Creator branches (`x1miyacoder`, `x1miyabuilder`, `x1miyastudio`, `lord_odik`).
  * Secret player achievements (`_mysterioushuman`).
* 📜 **In-Game Rules & Credits** — interactive `tellraw` messages with studio links.

---

### 📁 Repository Structure

```text
├── worlds/
│   ├── EN/                  # Ready-to-play English world save (Minecraft 1.21.11)
│   └── RU/                  # Ready-to-play Russian world save (Minecraft 1.21.11)
├── data/                    # Combination datapack functions, predicates, and tags
├── pack.mcmeta              # Datapack manifest (pack_format: 94.1 for 1.21.11)
└── spyglass.json            # Spyglass configuration
```

---

### 🚀 Download & Installation

* **Ready-to-play worlds (Minecraft 1.21.11, EN + RU):**
  * [GitHub Releases (v1.2.1)](https://github.com/X1miya/combination/releases/tag/v1.2.1) — `Combination_v1.2.1_EN.zip` & `Combination_v1.2.1_RU.zip`
  * [CurseForge Worlds](https://www.curseforge.com/minecraft/worlds/combination)
  * [Minecraft Inside (RU)](https://minecraft-inside.ru/maps/168088-kombinaciya.html)

#### Option 1: Install the Ready World (Recommended)
1. Download the archive for your preferred language (`EN` or `RU`) from [GitHub Releases](https://github.com/X1miya/combination/releases/tag/v1.2.1) or copy the world folder directly from `worlds/EN` or `worlds/RU`.
2. Extract it into your Minecraft saves directory:
   ```text
   .minecraft/saves/Combination_EN/
   ```
   *(or `Combination_RU/` for the Russian edition)*
3. Launch Minecraft **1.21.11** and open the world in Singleplayer.

#### Option 2: Manual Datapack Installation
1. Copy the datapack root contents into your world's datapacks folder:
   ```text
   .minecraft/saves/<Your_World>/datapacks/combination/
   ```
2. Load the world and run:
   ```mcfunction
   /reload
   ```
3. Start or initialize a round:
   ```mcfunction
   /function comb:mechanics/start
   ```

---

### 👥 Team

* **Logic & Programming:** [X1miya](https://github.com/X1miya)
* **Building & Design:** Lord Odik, X1miyaStudio Team

---

### 🌐 Community & Links

<div align="center">

[![YouTube](https://img.shields.io/badge/YouTube-@X1miya-red?style=flat-square&logo=youtube)](https://www.youtube.com/@X1miya/featured)
[![YouTube Studio](https://img.shields.io/badge/YouTube-@X1miyaStudio-red?style=flat-square&logo=youtube)](https://www.youtube.com/@X1miyaStudio)
[![Minecraft Inside](https://img.shields.io/badge/Minecraft_Inside-X1miyaStudio-brightgreen?style=flat-square)](https://minecraft-inside.ru/user/HimijaStudio/)
[![Telegram](https://img.shields.io/badge/Telegram-@X1miyaStudio-blue?style=flat-square&logo=telegram)](https://t.me/X1miyaStudio)
[![Discord](https://img.shields.io/badge/Discord-Server-5865F2?style=flat-square&logo=discord&logoColor=white)](https://discord.gg/5XxTSGbHrz)

</div>
