# Minecraft 1.14.3 - 1.17.1
This repo contains
- Build script to fetch and compile code required to run Minecraft 1.14.3 - 1.17.1
- Self-contained launcher script for Minecraft client

Dependencies are 
- https://github.com/CRKatri/lwjgl3

### Instructions

Step 1
Read through the `build.sh` script. Install binary dependencies if necessary. 

Step 2
Execute `./build.sh`

When build is complete, set `ROOT` in `minecraft-runtime` to this folder

From the Minecraft launcher, edit your profile and change the executable to 
`<absolute-path-to-this-folder>/minecraft-runtime`

Or in MultiMC set your java runtime to 
`<absolute-path-to-this-folder>/minecraft-runtime`
