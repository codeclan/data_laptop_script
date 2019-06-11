# CodeClan Data Course Laptop Setup

A script to set up a macOS laptop for development.

## Requirements

We support:

* macOS Sierra (10.12)
* macOS High Sierra (10.13)

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

CodeClan offers a range of software development courses to help kick start your career in tech and deepen your digital expertise.

Transform your career at CodeClan by learning to code in our 16 week software development course. You don’t need to be a mathematician or have any previous technical experience. All you need is a willingness to learn, a passion for technology and to think like a problem solver.

Through our part-time learning options, you can add coding skills to your CV or build on your existing programming knowledge.

See [our website](https://codeclan.com) for more information.

![CodeClan](https://codeclan.com/wp-content/uploads/2016/03/favicon.png)
