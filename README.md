# ComputerCraftUtility

## Table of Contents

1. [About](#about)
2. [Installation](#installation)
    - [Monitor setup](#monitor-setup)

## About

ComputerCraftUtility is a bunch of utility programs for ComputerCraft. It is a work in progress, and is not yet complete. Everything in the main branch should be ready to use, but some things may not be fully tested. If you find any bugs, please report them in the issues tab.

## Installation

To use the ConputerCraftUtility programs you will have to have a minecraft instance with the ComputerCraft mod or CC: Tweaked.

You can directly download the program into the computer or turtle by using this command :

```bash
wget https://raw.githubusercontent.com/ClementCaton/ComputerCraftUtility/main/${Path_to_the_program}
```

For example :

```bash
wget https://raw.githubusercontent.com/ClementCaton/ComputerCraftUtility/main/mine.lua
# or
wget https://raw.githubusercontent.com/ClementCaton/ComputerCraftUtility/main/turtlescreen/turtle.lua
```

It will download the file with the same name as the one in the repository.

### Monitor setup

In some cases, you will need to setup a monitor to use the program. In the code, you will find a line like this :

```lua
local monitor = peripheral.wrap("right")
```

I always code with the monitor on the right side of the computer, but you can change it to whatever you want.
