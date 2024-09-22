# xontrib-dir-picker

## Description

This modules utilizes `zoxide query -i` command for directory selection
![dir-picker](./img/dir-picker.png)

## Requirements

You need [zoxide](https://github.com/ajeetdsouza/zoxide) installed on your system. See [install instructions](https://github.com/ajeetdsouza/zoxide#step-1-installing-zoxide) to get it.

## Installation

```shell
# Install the xontrib
xpip install -U xontrib-dir-picker
# or: xpip install -U git+https://github.com/Beh01der/xontrib-dir-picker.git

# Load it
xontrib load dir-picker
```

## Configuration

Define the key-binding in your `.xonshrc`:

```python
from xonsh.built_ins import XSH

XSH.env['zoxide_pick_dir'] = "c-g"  # Ctrl+G
```
