## Mupen64plus emulator for GameShell OS 0.3

### WARNING: This is a work in progress. Operation is not guaranteed.

### How to download

1- Connect through ssh to your GameShell and run the following command:

```bash
git clone https://github.com/ruverav/mupen64plus-cpi-gsos03.git

```

2- Now go to the cloned repository:

```bash
cd mupen64plus-cpi-gsos03
```

### How to install

1- Add execution permission to install script (only the fist time):

```bash
chmod +x install.sh
```

2- Now run the script:

```bash
./install.sh
```

3- Reload the launcher (`Reload UI` option).

4- Put your roms with `.z64` extension inside `/home/cpi/games/N64`.

5- Go to "Retro Games" and you will see a new option "N64". Go inside.

6- Select your ROM file and press A.

### How to uninstall:

1- Add execution permission to uninstall script (only the first time):

```bash
chmod +x uninstall.sh
```

2- Now run the script:

```bash
./uninstall.sh
```

