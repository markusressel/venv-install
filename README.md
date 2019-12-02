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

This will create a new venv for the package-command combo in `~/venvs/`,
install the required package inside of it. Additionally it creates a
simple bash script in `/usr/bin/<command>` to make it easier to call this
command lateron. Finally it will execute the given command including the given args.

Since you will use `<command> <arg1>` lateron you can omit the args in this first run 
which will probably print the help of the command if it works as expected.

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

