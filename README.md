# Simple SSH Tunnel

Have you cann't connect to ssh server to tunnel your connection on linux because bash shell are disabled? Here i will make simple ssh tunneling software without bash.

## Status

[![Build Status](https://travis-ci.org/theagusp/simple-ssh-tunnel.svg?branch=master)](https://travis-ci.org/theagusp/simple-ssh-tunnel)

## Getting Started

First you need a zenity to make gui app.

```
sudo apt-get update
sudo apt-get install zenity
```

And putty to execute plink.

```
sudo apt-get install putty
```

If you need a socks forwarding software, go with proxychains.

```
sudo apt-get install proxychains
```

## How To Use

I made this using zenity gui to execute bash script.

```
sudo chmod +x simple-ssh-tunnel.sh
sudo ./simple-ssh-tunnel.sh
```

Socks forwarding.

```
sudo nano /etc/proxychains.conf
```
```
socks5 127.0.0.1 1080
```

Then browsing 

```
proxychains google-chrome
proxychains firefox
```

## Built With

* [Zenity](https://help.gnome.org/users/zenity/) 


## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE.md) file for details.
