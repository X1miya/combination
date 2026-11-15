<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:0D1117,50:00C853,100:00E676&height=180&section=header&text=Комбинация%20(Combination)&fontSize=40&fontColor=ffffff&fontAlignY=40" width="100%" alt="Header" />

[![Minecraft](https://img.shields.io/badge/Minecraft-1.21.11-00FF88?style=for-the-badge&logo=minecraft&logoColor=white)](https://www.minecraft.net/)
[![Version](https://img.shields.io/badge/Map-v1.2.1_(EN_%2B_RU)-blue?style=for-the-badge)](https://github.com/X1miya/combination/releases)
[![CurseForge](https://img.shields.io/badge/CurseForge-Worlds-F16436?style=for-the-badge&logo=curseforge&logoColor=white)](https://www.curseforge.com/minecraft/worlds/combination)
[![GitHub Release](https://img.shields.io/badge/GitHub-Releases-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/X1miya/combination/releases)
[![Minecraft Inside](https://img.shields.io/badge/Minecraft_Inside-RU-brightgreen?style=for-the-badge)](https://minecraft-inside.ru/maps/168088-kombinaciya.html)
[![Genre](https://img.shields.io/badge/Genre-Puzzle_Game-green?style=for-the-badge)](https://github.com/X1miya/combination)
[![Advancements](https://img.shields.io/badge/Custom-Advancements-yellow?style=for-the-badge)](https://github.com/X1miya/combination)
[![Studio](https://img.shields.io/badge/Studio-X1miyaStudio-064E3B?style=for-the-badge)](https://t.me/X1miyaStudio)

<p align="center">
  <b>Датапак для карты-головоломки «Комбинация».</b><br/>
  Запоминайте паттерны, повторяйте последовательности, ставьте рекорды и открывайте достижения!
</p>

</div>

---

### 🧩 Игровой процесс и механики

* 🧠 **Система запоминания комбинаций** — динамическая генерация и проверка введённых паттернов.
* ⏱ **Скорборд-движок** — подсчёт очков, учёт попыток и обработка правильных/ошибочных действий (`correct.mcfunction` / `mistake.mcfunction`).
* ✨ **Интерактивные анимации** — визуальное отображение выбора блоков и таймеров раунда (`an_loop`, `animation`).
* 🏆 **Кастомное древо достижений (Advancements)**:
  * Ветки создателей (`x1miyacoder`, `x1miyabuilder`, `x1miyastudio`, `lord_odik`).
  * Секретные ачивки для игроков (`_mysterioushuman`).
* 📜 **Встроенные правила и титры** — интерактивные tellraw-сообщения со ссылками на ресурсы студии.

---

### 📁 Структура репозитория

```text
├── worlds/
│   ├── EN/                  # Готовый мир карты «Комбинация» на английском языке (Minecraft 1.21.11)
│   └── RU/                  # Готовый мир карты «Комбинация» на русском языке (Minecraft 1.21.11)
├── data/                    # Исходные функции, предикаты и теги датапака Combination
├── pack.mcmeta              # Манифест датапака (pack_format: 94.1 для 1.21.11)
└── spyglass.json            # Настройки подзорной трубы
```

---

### 🚀 Загрузка и установка на карту

* **Готовые миры (Minecraft 1.21.11, EN + RU):**
  * [GitHub Releases (v1.2.1)](https://github.com/X1miya/combination/releases/tag/v1.2.1) — архивы `Combination_v1.2.1_EN.zip` и `Combination_v1.2.1_RU.zip`
  * [CurseForge Worlds](https://www.curseforge.com/minecraft/worlds/combination)
  * [Minecraft Inside (RU)](https://minecraft-inside.ru/maps/168088-kombinaciya.html)

#### Вариант 1. Установка готового мира (рекомендуется)
1. Скачайте архив нужной локализации (`EN` или `RU`) со страницы [GitHub Releases](https://github.com/X1miya/combination/releases/tag/v1.2.1) или скопируйте готовую папку мира из репозитория (`worlds/EN` или `worlds/RU`).
2. Поместите папку мира в директорию сохранений Minecraft:
   ```text
   .minecraft/saves/Combination_EN/
   ```
   *(или `Combination_RU/` для русской версии)*
3. Запустите Minecraft 1.21.11 и выберите мир в списке одиночной игры.

#### Вариант 2. Ручная установка датапака
1. Поместите папку датапака из корня репозитория в папку датапаков вашего мира:
   ```text
   .minecraft/saves/<Ваш_Мир>/datapacks/combination/
   ```
2. Зайдите в мир и перезагрузите данные:
   ```mcfunction
   /reload
   ```
3. Запуск раунда / инициализация:
   ```mcfunction
   /function comb:mechanics/start
   ```

---

### 👥 Команда проекта

* **Логика и код:** [X1miya](https://github.com/X1miya)
* **Билдинг и дизайн:** Lord Odik, X1miyaStudio Team

---

### 🌐 Ссылки и сообщество

<div align="center">

[![YouTube](https://img.shields.io/badge/YouTube-@X1miya-red?style=flat-square&logo=youtube)](https://www.youtube.com/@X1miya/featured)
[![YouTube Studio](https://img.shields.io/badge/YouTube-@X1miyaStudio-red?style=flat-square&logo=youtube)](https://www.youtube.com/@X1miyaStudio)
[![Minecraft Inside](https://img.shields.io/badge/Minecraft_Inside-X1miyaStudio-brightgreen?style=flat-square)](https://minecraft-inside.ru/user/HimijaStudio/)
[![Telegram](https://img.shields.io/badge/Telegram-@X1miyaStudio-blue?style=flat-square&logo=telegram)](https://t.me/X1miyaStudio)
[![Discord](https://img.shields.io/badge/Discord-Сервер-5865F2?style=flat-square&logo=discord&logoColor=white)](https://discord.gg/5XxTSGbHrz)

</div>
