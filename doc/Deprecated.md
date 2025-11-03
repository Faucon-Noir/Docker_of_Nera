# ⚠️ **Deprecated**

## Env

> The `.env` (MAX_CPUS, MAX_MEMORY, RESERVED_CPUS, RESERVED_MEMORY) is not supported for now.  
> Will come back later.

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

## Requirement

You will need at least 1 CPU and 2G of RAM for the game server

## 🧱 Requirements (need to be updated with precise real data)

| Resource | Recommended         | Notes                          |
| -------- | ------------------- | ------------------------------ |
| CPU      | 2 vCPU (1 reserved) | Game logic + Wine runtime      |
| RAM      | 6 GB (2 GB minimum) | Stable for 1–4 players         |
| Storage  | 10–20 GB SSD        | For SteamCMD + updates + saves |
| Network  | 1–5 Mbps            | Mostly UDP traffic             |
