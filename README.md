# CodeClan Data Course Laptop Setup

A script to set up a macOS laptop for the CodeClan Data Course.

## Requirements

We support:

* macOS Sierra (10.12)
* macOS High Sierra (10.13)
* macOS Mojave (10.14)

Older versions may work but aren't tested.

## Install

Download and review the script:

```sh
curl --remote-name https://raw.githubusercontent.com/codeclan/data_laptop_script/master/mac
```

Then run it and start the installation:

```sh
sh mac 2>&1 | tee ~/laptop.log
```

You will need to enter your computer password a few times throughout the script to allow installations.

At the end of the installation script, another script will run to attempt to check if any applications failed to install. (occasionally may claim some application are missing that aren't)

You can repeat this by running the following lines in terminal:

```sh
curl --remote-name https://raw.githubusercontent.com/codeclan/data_laptop_script/master/laptop_install_test
sh laptop_install_test
```
## About CodeClan

CodeClan is Scotland’s first and only accredited digital skills academy. Established in 2015, we’re here to bridge the digital skills gap in Scotland. With campuses in Glasgow, Edinburgh and Inverness, we provide a route into exciting careers and a pipeline of digital talent for employers. We run immersive courses in Professional Software Development, Data Analysis and Full-Stack Web Development and a number of upskilling courses in transformative skillsets like UX, Agile, R Programming and Python.

See [our website](https://codeclan.com) for more information.

![CodeClan](https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F56806727%2F149431978582%2F1%2Foriginal.jpg?h=230&w=460&auto=compress&rect=280%2C0%2C3334%2C1667&s=a95483fb7100d4b2a4213b2c326c2861)
