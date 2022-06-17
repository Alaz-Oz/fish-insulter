# fish-insulter
Randomly insults the user when typing wrong commands.
A port from [bash-insulter](https://github.com/hkbakke/bash-insulter)
```fish
noob@fish:~ > sl

  Y u no speak computer???

fish: Unknown command: sl
noob@fish:~ > gti status

  This is why nobody likes you.

fish: Unknown command: gti
noob@fish:~ > sp aux

  Go outside.

fish: Unknown command: sp
noob@fish:~ > f

  n00b alert!

fish: Unknown command: f
```
## Compatibility
* fish >=3.2.0

## Installation
For Single User:
```fish
# Method 1 - know what you are doing
git clone https://github.com/asteroidalaz/fish-insulter.git fish-insulter
cp fish-insulter/insulter.fish ~/.config/fish/conf.d/

# Method 2 - I don't care, insult me!
wget -O ~/.config/fish/conf.d/insulter.fish https://raw.githubusercontent.com/asteroidalaz/fish-insulter/main/insulter.fish
```
For All users: (not recommended) (will work though)
```fish
# Method 1 - know what you are doing
git clone https://github.com/asteroidalaz/fish-insulter.git fish-insulter
sudo cp fish-insulter/insulter.fish /etc/fish/conf.d/

# Method 2 - I don't care, insult me!
sudo wget -O /etc/fish/conf.d/insulter.fish https://raw.githubusercontent.com/asteroidalaz/fish-insulter/main/insulter.fish
```
Open a new fish instance and it works!!
<details>
  <summary>Installation for extra pro people</summary>
  
  ### If your fish config don't lies in .config folder
  ```fish
  git clone https://github.com/asteroidalaz/fish-insulter.git fish-insulter
  sudo cp fish-insulter/insulter.fish path/to/your/fish/config/folder/conf.d/
  #                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  #                                    Replace this with the path to 
  #                                    your fish config folder
  
  ```
</details>

## Customization
The insulter could be customized with these environment vars.
simply put them into your `config.fish` file, or create a file in `conf.d` directory in your fish config folder.

- `CMD_NOT_FOUND_MSGS`: The messages list to use instead of default list.
- `CMD_NOT_FOUND_MSGS_APPEND`: The additional messages to use with the message list.
- `COMMENT_FREQ`: The frequency of insult where 0 means never 5 means half of the time and 10 means everytime. (default 4)
- `COMMENT_COLOR`: The color of the text printed. Number from 1 to 255, 0 means random ;) enjoy. (default 0)

## Todo
- [x] Color customization option
- [x] Add custom message option
- [ ] Angel mode
- [x] Insult Frequency customization

## Similar projects
- [bash-insulter](https://github.com/hkbakke/bash-insulter): If you use bash or zsh, (not have that many customizations though)

## Issues
_Wooooosh, I didn't got any problem with my codes, but if you got any or got any ideas how to make it more amazing, feel free to create an issue, or create a pull request._
<br><br>
And one more thing. Hehe, at least remember my name. `AlazOz`
