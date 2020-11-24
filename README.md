# CodeClan Data Course Laptop Setup

A script to set up a macOS laptop for the CodeClan Data Course.

## Requirements

We support:

* macOS Mojave (10.14)
* macOS Catalina (10.15)

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

--- 
> Please follow instructions at the provided [link](apple_silicon.md) if you see -


![Terminal](images/terminal_msg.png)

(**NOTE** - You will need to run the script again)

---

## About CodeClan

CodeClan is Scotland’s first and only accredited digital skills academy. Established in 2015, we’re here to bridge the digital skills gap in Scotland. With campuses in Glasgow, Edinburgh and Inverness, we provide a route into exciting careers and a pipeline of digital talent for employers. We run immersive courses in Professional Software Development, Data Analysis and Full-Stack Web Development and a number of upskilling courses in transformative skillsets like UX, Agile, R Programming and Python.

See [our website](https://codeclan.com) for more information.

![CodeClan](https://codeclan.com/wp-content/uploads/2019/06/Logo-Side.png)
