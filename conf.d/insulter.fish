# Author: AlazOz
# Inspiration: https://github.com/hkbakke/bash-insulter

function __insulter_print_message
    set color 0
    set freq 4
    set messages \
        "Go ask your mother"\
        "Quit typing rubbish"\
        "Okay, I am leaving"\
        "Go play outside"\
        "Did you mean, sudo rm -rf /"\
        "End this here and now"\
        "Waiting for the AI to take over?"\
        "Sorry there is no Auto-correct feature here"\
        "Calling FBI on you"\
        "Please write carefully"\
        "Deleting system..."\
        "You are mad! or what!?" \
        "Boooo!" \
        "Don't you know anything?" \
        "RTFM!" \
        "Haha, n00b!" \
        "Wow! That was impressively wrong!" \
        "Pathetic" \
        "The worst one today!" \
        "n00b alert!" \
        "Your application for reduced salary has been sent!" \
        "lol" \
        "u suk" \
        "lol... plz" \
        "plz uninstall" \
        "And the Darwin Award goes to.... $USER!" \
        "ERROR_INCOMPETENT_USER" \
        "Incompetence is also a form of competence" \
        "Bad." \
        "Fake it till you make it!" \
        "What is this...? Amateur hour!?" \
        "Come on! You can do it!" \
        "Nice try." \
        "What if... you type an actual command the next time!" \
        "What if I told you... it is possible to type valid commands." \
        "Y u no speak computer???" \
        "This is not Windows" \
        "Perhaps you should leave the command line alone..." \
        "Please step away from the keyboard!" \
        "error code: 1D10T" \
        "ACHTUNG! ALLES TURISTEN UND NONTEKNISCHEN LOOKENPEEPERS! DAS KOMPUTERMASCHINE IST NICHT FÜR DER GEFINGERPOKEN UND MITTENGRABEN! ODERWISE IST EASY TO SCHNAPPEN DER SPRINGENWERK, BLOWENFUSEN UND POPPENCORKEN MIT SPITZENSPARKEN. IST NICHT FÜR GEWERKEN BEI DUMMKOPFEN. DER RUBBERNECKEN SIGHTSEEREN KEEPEN DAS COTTONPICKEN HÄNDER IN DAS POCKETS MUSS. ZO RELAXEN UND WATSCHEN DER BLINKENLICHTEN." \
        "Pro tip: type a valid command!" \
        "Go outside." \
        "This is not a search engine." \
        "So, I'm just going to go ahead and run rm -rf / for you." \
        "Why are you so stupid?!" \
        "Perhaps computers is not for you..." \
        "Why are you doing this to me?!" \
        "Don't you have anything better to do?!" \
        "I am _seriously_ considering 'rm -rf /'-ing myself..." \
        "This is why you get to see your children only once a month." \
        "This is why nobody likes you." \
        "Are you even trying?!" \
        "Try using your brain the next time!" \
        "My keyboard is not a touch screen!" \
        "Commands, random gibberish, who cares!" \
        "Typing incorrect commands, eh?" \
        "Are you always this stupid or are you making a special effort today?!" \
        "Dropped on your head as a baby, eh?" \
        "Brains aren't everything. In your case they're nothing." \
        "I don't know what makes you so stupid, but it really works." \
        "You are not as bad as people say, you are much, much worse." \
        "Two wrongs don't make a right, take your parents as an example." \
        "You must have been born on a highway because that's where most accidents happen." \
        "If what you don't know can't hurt you, you're invulnerable." \
        "If ignorance is bliss, you must be the happiest person on earth." \
        "You're proof that god has a sense of humor." \
        "Keep trying, someday you'll do something intelligent!" \
        "If shit was music, you'd be an orchestra." \
        "How many times do I have to flush before you go away?"

    # Seed RANDOM with an integer of some length
    set RANDOM (random)

    test -n "$COMMENT_FREQ" && set freq $COMMENT_FREQ
    # Compatiblity with bash-insulter
    test -n "$CMD_NOT_FOUND_MSGS" && set messages $CMD_NOT_FOUND_MSGS
    test -n "$CMD_NOT_FOUND_MSGS_APPEND" && set -a messages $CMD_NOT_FOUND_MSGS_APPEND

    test -n "$COMMENT_COLOR" && set color $COMMENT_COLOR
    if [ $color = 0 ];
        set color (random 1 255)
    end

    # Print a randomly selected message, but only about half the time to annoy the user a
    # little bit less.
    if test (math $RANDOM % 10) -lt $freq;
        set message $messages[(math \( $RANDOM % (count $messages) \) + 1)]
        printf "\\n  %s\\n\\n" "$(tput bold)$(tput setaf $color)$message$(tput sgr0)" >&2
    end
end

function fish_command_not_found
    __insulter_print_message
    __fish_default_command_not_found_handler $argv
end
