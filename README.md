# Minecraft-Server-Kit
A dirt-simple kit to update to the latest minecraft server `.jar`, and run in
a Docker container.

## Usage
### Requirements

* Docker

### Installation

```bash
git clone https://github.com/aidantwoods/Minecraft-Server-Kit mc-server
docker build -t mc-server mc-server/
```

### Updating
The minecraft server executable is downloaded as part of the image build process.
To update simply rebuild the image (ignoring the cache from the previous build).

```bash
docker build --no-cache -t mc-server mc-server/
```

### Start the server
Mount your minecraft world folder into `/world` and map the desired port
(minecraft default is `25565`).

Assuming you have a minecraft world in `~/minecraft-world`, then you would use
the following:

```bash
docker run --rm -it -v ~/minecraft-world:/world -p 25565:25565 mc-server
```

If you want to start a new world, you need to include the file `eula.txt` with
contents `eula=true` in the (empty) world folder to accept the [minecraft EULA].

[minecraft EULA]: https://account.mojang.com/documents/minecraft_eula

Remember that when mounting folders into a Docker container, the fully qualified
path (not relative) must be given. You may need to use `$(pwd)` in your path to
substitute the current working directory when using the `docker run` command.
