## What is it
WifiQR is a helper tool designed to generate valid Wifi QR codes in your terminal, utilizing [libqrcode]: https://github.com/ChuckM/libqrcode

## Supported
- [x] macOS
  - Tested on Big Sur
  - I have not found a solution to bypass password prompting for the keychain, if you have any ideas please throw up an issue or PR, thanks.
- [ ] Linux
  - a good alternative right now is `nmcli device wifi show-password` while I write support
- [ ] Windows
  - a good alternative right now is `

## Installation

For macOS, you need libqrcode
```sh
brew install libqrcode
``` 
or
```sh
sudo port install libqrcode
```

Upcoming: Linux and Windows

If you choose to move it to a default path location, it's recommended you move it to /usr/local/bin

## Usage

After you `chmod +x wifiqr.sh` and optionally move it to path with `sudo mv ./wifiqr.sh /usr/local/bin/wifiqr` you can simply

```sh
wifiqr
```

to generate a QR code for your current Wifi

