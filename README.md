# venv-install

**venv-install** helps you install python cli tools into a venv and still be able to comfortably
use them from your terminal without constantly entering/exiting and otherwise managing the venvs.

Example using the `homeassistant-cli` package and its `hass-cli` binary:
```bash
venv-install homeassistant-cli hass-cli
hass-cli --version
```

# Install

Clone this repo:

```bash
git clone https://github.com/markusressel/venv-install
```

Run the provided `install.sh` script from within it:
```bash
cd venv-install
./install.sh
```

This will copy the scripts to `/usr/bin/` and make them executable.

# Usage

## Installing a command

```bash
venv-install <package-name> <command>
```

This will create a new venv for the package-command combo in `~/.venvs/` and install the
required package inside of it. Additionally it creates a simple bash script
in `/home/<user>/.local/bin/<command>` to make it easier to call this command later on.

## Run a command

From then on you can use:

```bash
<command> <arg1> <arg2>
```

just like you would inside the venv (or when installing it globally).

Internally this will use the `/home/<user>/.venvs/<package>/bin/<command>` binary provided by
the python package you want to use.

## Update a command

If the package is updated you can easily update the venv by using

```bash
venv-update <package-name> <command>
```

which will essentially uninstall and reinstall your venv
using `venv-uninstall` and `venv-install`.

## Uninstall a command

```bash
venv-uninstall <package-name> <command>
```

This will remove the venv as well as the symlink to its binary.
