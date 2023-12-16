# fish-insulter

The Fish-Insulter is a fun utility that randomly teases or jests at the user when an incorrect command is typed. It is inspired from the [bash-insulter](https://github.com/hkbakke/bash-insulter) project to add a playful twist to Fish Shell!

**Disclaimer: No users were harmed during the making of this utility. 😄**

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
### Features
- Offers humorous responses for mistyped commands.
- Customizable insult messages and frequency to match your style.
- Easy installation for the modern Fish shell, version 3.2.0 and above.

## Compatibility
- Compatible with Fish shell version `3.2.0` or higher.

## Installation

### Using Package Managers

For [Oh My Fish (omf)](https://github.com/oh-my-fish/oh-my-fish) users:
```fish
omf install https://github.com/Alaz-Oz/fish-insulter
```

For [Fisher](https://github.com/jorgebucaran/fisher) users:
```fish
fisher install Alaz-Oz/fish-insulter
```

### Manual Installation

For Single User:
```fish
git clone https://github.com/Alaz-Oz/fish-insulter.git fish-insulter
cp fish-insulter/conf.d/insulter.fish ~/.config/fish/conf.d/
```

For All Users (not recommended):
```fish
sudo git clone https://github.com/Alaz-Oz/fish-insulter.git fish-insulter
sudo cp fish-insulter/conf.d/insulter.fish /etc/fish/conf.d/
```

Open a new Fish shell instance to enjoy the insults! 

### Customization
The Fish-Insulter allows for easy customization using environment variables, offering control over the insults' content, frequency, and appearance. These variables can be set in your `config.fish` file or created in a file within the `conf.d` directory of your Fish configuration folder.

#### Available Environment Variables:

- **`CMD_NOT_FOUND_MSGS`**: Custom messages to replace the default insult list.

- **`CMD_NOT_FOUND_MSGS_APPEND`**: Additional messages to complement the existing insult list.

- **`COMMENT_FREQ`**: Sets the frequency of insults. A value of `0` means never, `5` implies about half the time, and `10` triggers an insult every time. (Default: `4`)

- **`COMMENT_COLOR`**: Specifies the text color printed with a number from 1 to 255. Using `0` results in a random color for added enjoyment. (Default: `0`)

#### Configuration Steps:

1. **For `config.fish`**:
   
   Open your `config.fish` file using a text editor and add or modify the desired environment variables in the following format:
   ```fish
   set -gx CMD_NOT_FOUND_MSGS "Your custom insult messages here"
   set -gx CMD_NOT_FOUND_MSGS_APPEND "Additional insults to append"
   set -gx COMMENT_FREQ 5
   set -gx COMMENT_COLOR 123
   ```

2. **For `conf.d` Directory**:
   
   Create a new file (e.g., `insulter-customization.fish`) within your Fish configuration's `conf.d` directory. Inside this file, define the environment variables in the same format as above.

Ensure to replace the values with your preferred messages, frequencies, or colors as desired.

## Future enhancements 
- **Angel Mode**: A kinder, supportive alternative.
- Improved customization options for a tailored experience.

### Similar Projects
- [bash-insulter](https://github.com/hkbakke/bash-insulter): For users of Bash or Zsh.

### Contribution and Feedback
We appreciate your input! If you have ideas to enhance this project or encounter any issues, please raise an issue or submit a pull request.

Remember, it's all in good fun! 😉 Feel free to drop by and say hi to `AlazOz`.