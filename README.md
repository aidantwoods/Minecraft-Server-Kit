# Minecraft-Server-Kit
A dirt-simple kit to update the minecraft server `.jar`, and retain an archive
of old versions. Also script to mount a folder if you're hosting in virtualbox
but want to let a local backup tool take care or the world backups from outside
virtualbox.

## Usage
### Installation
```bash
git clone https://github.com/aidantwoods/Minecraft-Server-Kit minecraft
cd minecraft
```
### Updating
```bash
./update.sh
```

### Mounting a virtualbox shared folder (named `worlds`) to current user
```bash
./mount.sh
```

### Start the server
```bash
./start.sh
```