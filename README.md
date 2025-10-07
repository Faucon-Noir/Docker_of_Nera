# 🐳 Voyagers of Nera - Dedicated Server (Community Docker Image)

![License: PolyForm Noncommercial](https://img.shields.io/badge/License-PolyForm%20NonCommercial-blue.svg)
![Docker Pulls](https://img.shields.io/docker/pulls/tonpseudo/voyagers-dedicated)

This project provides a **Docker image** to run the _Voyagers of Nera_ dedicated server (Steam App ID `3937860`) on Linux using **Wine** and **SteamCMD**.

> ⚠️ This image is licensed for **non-commercial community use only** under the **PolyForm Noncommercial License 1.0.0**.
> Commercial hosting, resale, or integration into paid services is **strictly prohibited**.

## 🚀 Quick Start (Docker Compose)

Clone this repository or copy the `docker-compose.yml` file.  
Create a `.env` file with the following content. It will define the maximum CPU and RAM usage:

```env
# Sufficient enough for 1-4 players
MAX_CPUS=2.0
MAX_MEMORY=8G
```

I recommend to let at least 1 CPU and 2G of RAM for Docker and the OS.  
You can also define the minimum expected spec such as:

```env
# Minimum ressources required - may be unstable, please consider using at least 4G of RAM
RESERVED_CPUS=1.0
RESERVED_MEMORY=2G
```

You will need at least 1 CPU and 2G of RAM for the game server

Then start the server:

```bash
docker compose up -d
```

Check logs:

```bash
docker compose logs -f
```

Stop the server:

```bash
docker compose down
```

Reset everything (delete saved data):

```bash
docker compose down -v
```

## 🧱 Requirements

| Resource | Recommended                | Notes                          |
| -------- | -------------------------- | ------------------------------ |
| CPU      | 2 vCPU (1 reserved)        | Game logic + Wine runtime      |
| RAM      | 6 GB (2 GB minimum)        | Stable for 1–4 players         |
| Storage  | 10–20 GB SSD               | For SteamCMD + updates + saves |
| Network  | 1–5 Mbps                   | Mostly UDP traffic             |
| OS       | Debian 12+ / Ubuntu 22.04+ | Tested base image              |

## 📂 Persistent Data

All server saves and configuration files are stored under:

```
./data/BoatGame/Saved/PersistedData/CustomConfig/
```

Mounting this directory allows you to:

- Keep game settings and save data between restarts
- Back up or version your configs easily
- Share preconfigured servers with the community

## ⚖️ License

**License:** [PolyForm Noncommercial License 1.0.0](https://polyformproject.org/licenses/noncommercial/1.0.0/)  
**Copyright:** © 2025 Athena

You are free to:

- Use this image for **personal or community servers**
- Modify and share it **non-commercially**

You may **not**:

- Sell, rent, or monetize this image
- Host it as part of a paid service
- Redistribute under a commercial brand

## ❤️ Community Use

This project exists for the community of _Voyagers of Nera_ players who want to self-host their servers on Linux.  
Feel free to contribute fixes, improvements, or share your experience in running it!

Pull requests and feedback are welcome.

### 🧩 Credits

- Based on: [SteamCMD](https://developer.valvesoftware.com/wiki/SteamCMD)
- Game: _Voyagers of Nera_ (Steam App ID 3937860)
- Maintainer: Athena — Community Edition
- License: [PolyForm Noncommercial 1.0.0](https://polyformproject.org/licenses/noncommercial/1.0.0/)
