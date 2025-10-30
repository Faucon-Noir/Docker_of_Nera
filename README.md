# 🐳 Voyagers of Nera - Dedicated Server (Community Docker Image)

![License: PolyForm Noncommercial](https://img.shields.io/badge/License-PolyForm%20NonCommercial-blue.svg)
![Docker Pulls](https://img.shields.io/docker/pulls/tonpseudo/voyagers-dedicated)

This project provides a **Docker image** to run the _Voyagers of Nera_ dedicated server (Steam App ID `3937860`) on Linux using **Wine** and **SteamCMD**.

> ⚠️ This image is licensed for **non-commercial community use only** under the **PolyForm Noncommercial License 1.0.0**.
> Commercial hosting, resale, or integration into paid services is **strictly prohibited**.

## 🚀 Quick Start (Docker Compose)

Clone this repository or copy the `docker-compose.yml` file.  
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

## 📂 Persistent Data

All saves and configuration files are stored under:

```
./docker-of-nera/
```

Mounting this directory allows you to:

- Keep game settings and save data between restarts
- Keep and update the server files in one place
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

This project exists for the community of _Voyagers of Nera_ players who want to self-host their servers on *almost* everything that run Linux or Docker.  
Feel free to contribute fixes, improvements, or share your experience in running it!

Pull requests and feedback are welcome.

### 🧩 Credits

- Based on: [SteamCMD](https://developer.valvesoftware.com/wiki/SteamCMD)
- Game: _Voyagers of Nera_ (Steam App ID 3937860)
- Maintainer: Athena — Community Edition
- License: [PolyForm Noncommercial 1.0.0](https://polyformproject.org/licenses/noncommercial/1.0.0/)
