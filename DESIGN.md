# SFSequel: Japan Branch — Design Document

## Overview

A sequel/redesign of SFSequel set in the **Japan branch** of the same company. Core mechanics carry over from the original (daily progression, lunch feeding mini-game, weight stages, economy, mystery investigation), with expanded systems for character-to-character interactions and a multi-branch structure. Built in GameMaker Studio, reusing original GML architecture as a foundation.

---

## Setting

The player transfers to the company's **Japan office branch** — a modern mid-rise building in Tokyo. The staff are yokai and monster women adapted to office life. The workplace mystery this time is internal: someone on the floor is feeding *themselves* to others (or others to themselves), and branch performance metrics are mysteriously spiking right as headcount drops.

---

## Characters

Names marked **[TBD]** — placeholder monster type used until named.

| Codename | Monster Type | Appearance | Personality (draft) |
|---|---|---|---|
| **[TBD]** | Demon | Dark horns, navel mark, pink crop top + black blazer | Casual, a little reckless, makes herself at home |
| **[TBD]** | Skeleton | Long black hair, bony hands, elegant purple office wear | Poised and formal, dry humor, hides warmth |
| **[TBD]** | Tengu / Harpy | Black wings, rollerskates, smokes, carries notepad | Blunt manager-type, no-nonsense but secretly soft |
| **[TBD]** | Zombie / Ghoul | Stitched arms, pink accents, scar, gray-green skin | Clumsy but earnest, easily flustered |
| **[TBD]** | Lamia / Naga | Snake lower body, dark hair, black blazer + purple blouse | Cool and slow to warm up, perceptive |
| **[TBD]** | Kitsune (silver, 9-tail) | Silver-purple hair, fox ears, multiple tails, purple vest | Wise and mischievous, senior staff, knows more than she says |
| **[TBD]** | Fox girl (orange, 1-tail) | Orange fur/hair, brown vest, bow tie, dark skirt | Energetic and friendly, eager to please, newest hire |

The **player character** is a transferee from the original branch (establishing continuity). Possibly nameable.

---

## Core Mechanics (inherited)

### Daily Progression
- Game spans **Days 1–N** (exact count TBD, target ~12–16 days)
- Each day: morning navigation → lunch mini-game → afternoon event → end of day
- Story flags gate events to specific days

### Lunch Mini-Game (Feeding)
- Conveyor-belt food service, same as original
- Feed a chosen character dishes to increase their **weight stage**
- Dishes have different costs and stage-advancement values
- Kitchen equipment upgrades unlock higher-tier dishes

### Weight Stages
The primary progression metric, replacing the "trust level" framing. Each character has **N stages** (exact count TBD, suggest 5–6) with visual changes per stage.

| Stage | Description |
|---|---|
| 0 | Starting — baseline appearance |
| 1 | Slightly fuller, first scene unlocked |
| 2 | Noticeably rounder, new dialogue |
| 3 | Significantly larger, character-specific event triggers |
| 4 | Very heavy, major story scene unlocks |
| 5 | Max — endgame-tier scene, affects mystery outcome |

Weight stages persist across days (unlike the original's partial resets).

### Economy
- Earn **gold** each day from branch performance metrics
- Spend at the vending machine / shop to buy food items and kitchen equipment
- Equipment unlocks higher-tier dishes → faster stage progression
- Budget pressure early game; ramps up mid-game

### Investigation
- Navigate branch rooms to find clues, witness incidents, trigger dialogue
- Incident flags per department track the mystery's progression
- Day-gated accusation sequence near the end

---

## New / Expanded Mechanics

### 1. Branch Structure
The building has multiple **floors/branches**, each themed:
- **Japan Branch** (main) — this game's primary setting
- Other branches could be hinted at or briefly visited (future game seeds)
- Within the branch, departments map to characters: each character "owns" a room

### 2. Girl-on-Girl Interactions
Characters have relationships with *each other* independent of the player:
- Each pair of characters has a **relationship score** that changes based on events
- High relationship → characters share meals, interact during lunch, trigger paired scenes
- Certain pairings unlock exclusive joint story scenes (e.g., Kitsune + Fox Girl senior/junior dynamic; Lamia + Skeleton; Tengu + Demon)
- Some characters may feed *each other* off-screen, advancing their weight stages without player input — a mechanic the player can encourage or disrupt
- These interactions are tracked with a `pair_grid` (ds_grid, character A × character B)

### 3. Weight Stage Visibility
- Each character's stage is visible in the stat display (same `statgrid` system)
- Room sprites update to reflect character stages (heavier characters shown differently in their department)
- Some rooms have capacity/layout notes when a character reaches higher stages

---

## Rooms / Locations

| Room | Character | Notes |
|---|---|---|
| Lobby / Reception | Fox Girl | First room visited each day, orientation hub |
| Management Office | Tengu | Can't enter freely — must be invited or sneak in |
| Records / Archive | Skeleton | Quiet, dimly lit, full of filing cabinets |
| IT / Systems | Kitsune | Multiple screens, mystical tech aesthetic |
| Break Room | Demon | Vending machine here; hangout zone |
| Maintenance | Zombie/Ghoul | Cluttered, she's always fixing something |
| Exec Floor / Lounge | Lamia | Restricted access early game |
| Kitchen / Canteen | Player-operated | Lunch mini-game room |
| Home | — | End-of-day resource management, shop |

---

## Story Structure (Draft)

**Act 1 (Days 1–4):** Intro to the branch. Meet each character. Establish normal workplace dynamics. First incident: someone's lunch goes missing from the break room fridge.

**Act 2 (Days 5–10):** Incidents escalate per department. Character relationships deepen. Girl-on-girl feeding scenes begin triggering for high-relationship pairs. Clues accumulate about who's responsible and why.

**Act 3 (Days 11–end):** Accusation window opens. Player must have enough evidence + correct relationship flags to reach the true ending. Multiple endings based on which characters you fed, which pairs you cultivated, and whether you investigated or ignored incidents.

**Mystery hook:** The Kitsune has been here far longer than records show. The Fox Girl was hired by her specifically. Whether that's protective or predatory is up to the player to determine.

---

## Event Flag System (inherited + extended)

Reusing the original `ds_map`-based global flag system. New flags:

```
// Branch / story
global.daynum              // current day
global.branchEvent[0..N]   // per-day event flags

// Per-character weight stages
global.stage_demon
global.stage_skeleton
global.stage_tengu
global.stage_zombie
global.stage_lamia
global.stage_kitsune
global.stage_fox

// Character pair relationships
// pair_grid[charA, charB] = relationship score

// Scene tracking (prevent replays)
global.seen_[charname]_[sceneid]

// Incidents
global.incident_lobby
global.incident_archive
global.incident_it
global.incident_breakroom
global.incident_maintenance
global.incident_exec

// Accusation / ending
global.accusetime
global.guilty_char
global.evidence_count
```

---

## Technical Notes (GMS Implementation)

### Reused Systems
- `game_manager` — day tracking, economy, global flag init
- `scene_manager` — dialogue/cutscene sequencer
- `incident_manager` — random + scripted incident triggers
- `statgrid` ds_grid — extend columns for new characters
- `pair_grid` ds_grid — new, tracks inter-character relationships
- `txtbox`, `namebox`, `choicebox` — reuse as-is
- `inventory` / `dishgrid` — reuse with new dish data

### New Objects Needed
- `pair_manager` — evaluates pair relationship scores daily, triggers pair scenes
- `branch_manager` — handles room unlocking and branch-level events
- `stage_display` — visual weight stage indicator per character (update room sprites)

### Room Sprite Strategy
Each department room has **5–6 sprite variants** (one per weight stage of its character). Swap active sprite based on `global.stage_[char]` at room start.

### Dialogue / Scene Format
Same scene-script approach as original. Scene scripts named:
`scr_[charname]_day[N]`, `scr_[charname]_stage[N]`, `scr_pair_[charA]_[charB]_[id]`

---

## Open Questions

- [ ] Character names (all 7 TBD)
- [ ] Exact number of weight stages per character (suggest 5 or 6)
- [ ] Number of days (suggest 14)
- [ ] Player character name / customization?
- [ ] Which character pairs get dedicated joint scenes?
- [ ] Ending count (suggest 3: bad / neutral / true)
- [ ] Does the Tengu carry over from the original as a Stacy analog, or fully new character?
- [ ] Any male characters, or all-female cast this time?
- [ ] Music/audio direction (original BGM, new, licensed-free?)
