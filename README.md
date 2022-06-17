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
_Comming Soon_

## Todo
- [ ] Color customization option
- [ ] Add custom message option
- [ ] Angel mode
- [ ] Insult Frequency customization
