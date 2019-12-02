# venv-install

**venv-install** helps you install cli tools into a venv and still be able to comfortably
use them from your terminal without constantly entering and exiting the venvs.


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
venv-install <package-name> <command> <arg1> <arg2>
```

## Using a command

From then on you can use:

```bash
<command> <arg1> <arg2>
```

just like you would inside the venv (or when installing it globally)

### Example

#### N26

```bash
venv-install n26 n26
n26 status
```

## Remove a command

```bash
venv-uninstall <package-name> <command>
```

This will remove the venv as well as the `/usr/bin/<command>` script.

