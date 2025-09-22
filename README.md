# First Ever Raid comes to Minecraft
Embark on a threatening adventure into the Abyss where creatures of unknown power await your arrival. Stand up with your 5 friends against 5 challenging bosses and prevent the servants of the void from covering the world in shadows
## Explore Witherhope Necropolis
Traverse the obscure halls of Witherhope Necropolis, the place where the hope is lost. Find out the history of this doomed place and uncover the secrets of the acsendant servants
## Fight against the Void
New raid-unique mechanics will offer you a brand new experience nothing alike in Minecraft. Come with all your wit and patience to try to understand the power of the Void
## Uncover what is behind the curtain
Brace yourself as yet the most challenging bosses in entire vanilla Minecraft await you in Necropolis. Will you be able to withstand their limitless power in place where you have no rule?
# Important technical details
To make your experience as it was intended by the developer, make sure to follow these steps:
- Bring in 5 friends! The raid is designed specifically for 6 people. It it impossible to complete with less people and can become buggy if there are more people than 6 you need
- Set _Brightness_ to maximum
- Set _difficulty_ to Normal
- Use _No Bats_ datapack (_included in save by default_)
- DO NOT change any gamerules!
- Avoid reloading datapack during gameplay at all costs

**And, most importantly...**
- Go completely _blind_. The raid was designed in the way for you to uncover its mysteries via trial-and-error. To enjoy Witherhope Necopolis in its entierty, it is highly recommended to avoid any spoilers regarding the raid

If you just want to see your friends suffer...
- Join _spectator_ team via
```
/gamemode spectator
```
You will be automatically put in spectator gamemode. All raid mechanics won't affect you at this point

# Configuration
To enter the raid, you will need to boot up customized paper mc server with several plugins installed and configurations taken from this repo. You have a few options how to boot up the server:

1. Docker Compose with Makefile (*recommended*)
2. Pure Docker Compose
3. Docker
4. Manual configuration (*not recommended*)

## Docker Compose with Makefile (*recommended*)
This approach is the easiest one and the preferred one: everything needed comes out of the box, (almost) no technical knowledge required. The server comes with pre-configured plugins, saves and encounter configurations

### Requirements
- `make`
- `docker`

### Installation
Follow these steps:

1. Clone the repository
```bash
git clone 
```
2. In the repo direcotry run
```bash
make start
```
3. Wait until the server boots up
4. Check if all components are up (should show healthy status)
```bash
make status
```
5. You can now enter the server via `<server_ip>:25565`

### Upgrading
To upgrade simply enter the directory with the cloned repository and run
```bash
make update
```
or 
```bash
make upgrade
```
both commands do the same. Then wait until the server boots up: check status with `make status`

### Uninstallation
To stop the server run
```bash
make stop
```
To uninstall all components from the system run
```bash
make uninstall
```
You can run uninstall without stopping the server beforehand: the command will do all the steps neccessary to remove all components of the sever

> ![WARNING]
> Running this command will also remove all save data from the machine

## Pure Docker Compose

## Docker

## Manual configuration (*not recommended*)
