# venv-install

**venv-install** helps you install cli tools into a venv and still be able to comfortably
use them from your terminal without constantly entering and exiting the venvs.


# Install

```bash
sudo cp venv-install/venv-install /usr/bin/
sudo chmod +x /usr/bin/venv-install
```

# Usage

```bash
venv-install <package-name> <command> <arg1> <arg2>
```

From then on you can use:

```bash
<command> <arg1> <arg2>
```

# Example


### N26

```bash
venv-install n26 n26
n26 status
```