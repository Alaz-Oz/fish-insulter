# fish-insulter
Randomly insults the user when typing wrong commands.
~Port~ Inspiration from [bash-insulter](https://github.com/hkbakke/bash-insulter)
Kill me for that 🥺.
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
* fish >=3.2.0 😆 Haha for those who are outdated. (btw you could raise an issue if you want support for previous version)

## Installation
For Single User: 😎 I will be cool
```fish
# Method 1 - know what you are doing
git clone https://github.com/asteroidalaz/fish-insulter.git fish-insulter
cp fish-insulter/conf.d/insulter.fish ~/.config/fish/conf.d/

# Method 2 - I don't care, insult me!
wget -O ~/.config/fish/conf.d/insulter.fish https://raw.githubusercontent.com/asteroidalaz/fish-insulter/main/conf.d/insulter.fish
```
For All users: (not recommended) (will work though) 🥶 Every user on the system are cool.
```fish
# Method 1 - know what you are doing
git clone https://github.com/asteroidalaz/fish-insulter.git fish-insulter
sudo cp fish-insulter/conf.d/insulter.fish /etc/fish/conf.d/

# Method 2 - I don't care, insult me!
sudo wget -O /etc/fish/conf.d/insulter.fish https://raw.githubusercontent.com/asteroidalaz/fish-insulter/main/conf.d/insulter.fish
```
Open a new fish instance and it works, yeah!! 💝
<details>
  <summary>Installation for extra pro people 🥇</summary>
  
  ### If your fish config don't lies in .config folder (I will definetely want to meet you personally then) 🤟
  ```fish
  git clone https://github.com/asteroidalaz/fish-insulter.git fish-insulter
  sudo cp fish-insulter/conf.d/insulter.fish path/to/your/fish/config/folder/conf.d/
  #                                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  #                                           Replace this with the path to 
  #                                           your fish config folder
  
  ```
</details>

## Customization ❤️
The insulter could be customized with these environment vars.
simply put them into your `config.fish` file, or create a file in `conf.d` directory in your fish config folder.

- `CMD_NOT_FOUND_MSGS`: The messages list to use instead of default list.
- `CMD_NOT_FOUND_MSGS_APPEND`: The additional messages to use with the message list.
- `COMMENT_FREQ`: The frequency of insult where 0 means never 5 means half of the time and 10 means everytime. (default 4)
- `COMMENT_COLOR`: The color of the text printed. Number from 1 to 255, 0 means random ;) enjoy. (default 0)

## Roadmap or whatever you n00B 😐
- [x] Color customization option + Bonus random color option 😉 enjoy!! 😘
- [x] Add custom message option, same as bash-insulter so you could use it together. I deserve a hug for that 🤗
- [ ] Angel mode.
- [x] Insult Frequency customization. Oh yeah!! You could change how frequently you want to be insulted. 😆 Now people pay me to be insulted.

## Similar projects
- [bash-insulter](https://github.com/hkbakke/bash-insulter): If you use bash or zsh, (not have that many customizations though)

## Issues
_Wooooosh, I didn't got any problem with my codes, but if you got any or got any ideas how to make it more amazing, feel free to create an issue, or create a pull request._
<br><br>
And one more thing. Hehe, at least remember my name 🥺. `AlazOz`
