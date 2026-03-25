#!/bin/bash

# --- Tales From the Script: Bitter Bog Edition ---

script_keeper() {
    echo -ne "\e[1;30m[\e[0;31m!\e[1;30m]\e[0m \e[0;37m"
    msg="$1"
    for (( i=0; i<${#msg}; i++ )); do
        echo -n "${msg:$i:1}"
        sleep 0.03
    done
    echo -e "\e[0m"
    sleep 0.8
}

# --- ART ASSETS ---

show_title() {
    echo -e "\e[1;36m"
    cat << 'EOF'
┌─────────────────────────────────────────────────────┐
│                                                     │
│                                                     │
│     ▄▄▄█████▓ ▄▄▄       ██▓    ▓█████   ██████      │
│     ▓  ██▒ ▓▒▒████▄    ▓██▒    ▓█   ▀ ▒██    ▒      │
│     ▒ ▓██░ ▒░▒██  ▀█▄  ▒██░    ▒███   ░ ▓██▄        │
│     ░ ▓██▓ ░ ░██▄▄▄▄██ ▒██░    ▒▓█  ▄   ▒   ██▒     │
│       ▒██▒ ░  ▓█   ▓██▒░██████▒░▒████▒▒██████▒▒     │
│       ▒ ░░    ▒▒   ▓▒█░░ ▒░▓  ░░░ ▒░ ░▒ ▒▓▒ ▒ ░     │
│         ░      ▒   ▒▒ ░░ ░ ▒  ░ ░ ░  ░░ ░▒  ░ ░     │
│       ░        ░   ▒     ░ ░      ░   ░  ░  ░       │
│                    ░  ░    ░  ░   ░  ░      ░       │
│                                                     │
│          █████▒██▀███   ▒█████   ███▄ ▄███▓         │
│        ▓██   ▒▓██ ▒ ██▒▒██▒  ██▒▓██▒▀█▀ ██▒         │
│        ▒████ ░▓██ ░▄█ ▒▒██░  ██▒▓██    ▓██░         │
│        ░▓█▒  ░▒██▀▀█▄  ▒██   ██░▒██    ▒██          │
│        ░▒█░   ░██▓ ▒██▒░ ████▓▒░▒██▒   ░██▒         │
│         ▒ ░   ░ ▒▓ ░▒▓░░ ▒░▒░▒░ ░ ▒░   ░  ░         │
│         ░       ░▒ ░ ▒░  ░ ▒ ▒░ ░  ░      ░         │
│         ░ ░     ░░   ░ ░ ░ ░ ▒  ░      ░            │
│                  ░         ░ ░         ░            │
│                                                     │
│              ▄▄▄█████▓ ██░ ██ ▓█████                │
│              ▓  ██▒ ▓▒▓██░ ██▒▓█   ▀                │
│              ▒ ▓██░ ▒░▒██▀▀██░▒███                  │
│              ░ ▓██▓ ░ ░▓█ ░██ ▒▓█  ▄                │
│                ▒██▒ ░ ░▓█▒░██▓░▒████▒               │
│                ▒ ░░    ▒ ░░▒░▒░░ ▒░ ░               │
│                  ░     ▒ ░▒░ ░ ░ ░  ░               │
│                ░       ░  ░░ ░   ░                  │
│                        ░  ░  ░   ░  ░               │
│                                                     │
│    ██████  ▄████▄   ██▀███   ██▓ ██▓███  ▄▄▄█████▓  │
│  ▒██    ▒ ▒██▀ ▀█  ▓██ ▒ ██▒▓██▒▓██░  ██▒▓  ██▒ ▓▒  │
│  ░ ▓██▄   ▒▓█    ▄ ▓██ ░▄█ ▒▒██▒▓██░ ██▓▒▒ ▓██░ ▒░  │
│    ▒   ██▒▒▓▓▄ ▄██▒▒██▀▀█▄  ░██░▒██▄█▓▒ ▒░ ▓██▓ ░   │
│  ▒██████▒▒▒ ▓███▀ ░░██▓ ▒██▒░██░▒██▒ ░  ░  ▒██▒ ░   │
│  ▒ ▒▓▒ ▒ ░░ ░▒ ▒  ░░ ▒▓ ░▒▓░░▓  ▒▓▒░ ░  ░  ▒ ░░     │
│  ░ ░▒  ░ ░  ░  ▒     ░▒ ░ ▒░ ▒ ░░▒ ░         ░      │
│  ░  ░  ░  ░          ░░   ░  ▒ ░░░         ░        │
│        ░  ░ ░         ░      ░                      │
│           ░                                         │
│                                                     │
│                                                     │
└─────────────────────────────────────────────────────┘
EOF
    echo -e "\e[1;30m              [ PRESS ENTER TO LOG IN ]\e[0m"
    read
}

show_script_keeper() {
    echo -e "\e[1;30m"
    cat << 'EOF'
              ___          
             /   \\         
        /\ | . . \\       
      ////\\|     ||       
    ////   \\ ___//\       
   ///      \\     \      
  ///       |\\     |     
 //         | \\  \   \    
 /          |  \\  \   \   
            |   \\ /   /   
            |    \/   /    
            |     \\/|     
            |      \\|     
            |       \\     
            |        |     
            |_________\    
EOF
    echo -e "\e[0m"
}

show_bat() {
    echo -e "\e[1;37m"
    cat << 'EOF'
     =/\                 /\=
    / \'._   (\_/)   _.'/ \
   / .''._'--(o.o)--'_.''. \
  /.' _/ |`'=/ " \='`| \_ `.\
 /` .' `\;-,'\___/',-;/` '. '\
/.-'      `\(-V-)/`      `-.\
`             " "            `
EOF
    echo -e "\e[0m"
}

show_spider() {
    echo -e "\e[1;30m"
    cat << 'EOF'
      / _ \
    \_\(_)/_/
     _//"\\_ 
      /   \
EOF
    echo -e "\e[0m"
}

show_skeleton() {
    echo -e "\e[1;37m"
    cat << 'EOF'
      .-.
     (o.o)
      |=|
     __|__
   //.=|=.\\
  // .=|=. \\
  \\ .=|=. //
   \\(_=_)//
    (:| |:)
     || ||
     () ()
     || ||
     || ||
    ==' '==
EOF
    echo -e "\e[0m"
}

show_slime() {
    echo -e "\e[1;32m      .-----------.    \n     (  o     o    )   \n    (      ^        )  \n     '-------------'   \e[0m"
}

show_hypnotoad() {
    echo -e "\e[1;32m"
    cat << 'EOF'
         o  o   o  o
         |\/ \^/ \/|
         |,-------.|
EOF
    echo -e "       ,-.(\e[1;33m|\e[1;31m)\e[1;32m   (\e[1;33m|\e[1;31m)\e[1;32m,-."
    cat << 'EOF'
       \_*._ ' '_.* _/
        /`-.`--' .-'\
   ,--./    `---'    \,--.
   \   |(  )     (  )|   /
    \  | ||       || |  /
     \ | /|\     /|\ | /
      /  \-._     _,-/  \
     //| \\  `---'  // |\\
    /,-.,-.\       /,-.,-.\
   o   o   o      o   o    o
EOF
    echo -e "\e[0m"
}

# --- GAME MECHANICS ---

battle_loop() {
    local e_name=$1
    local e_hp=$2
    local e_dmg=$3
    local e_art=$4

    while [ $e_hp -gt 0 ] && [ $hp -gt 0 ]; do
        echo "----------------------------------------------------"
        $e_art
        echo -e "\e[1;37m$char_name ($class)\e[0m HP: $hp | \e[1;31m$e_name\e[0m HP: $e_hp"
        echo "1) Strike  2) Defend"
        read -p "> " action

        if [ "$action" == "2" ]; then
            echo "You brace yourself!"
            incoming=$(( (e_dmg / 2) + (RANDOM % 3) ))
            hp=$(( hp - incoming ))
            echo "The $e_name hits for $incoming damage."
        else
            roll=$(( RANDOM % 10 ))
            damage=$(( atk + (RANDOM % 10) ))
            if [ $roll -eq 9 ]; then
                damage=$(( damage * 2 ))
                echo -e "\e[1;33mCRITICAL HIT! $damage damage!\e[0m"
            else
                echo "You hit for $damage damage!"
            fi
            e_hp=$(( e_hp - damage ))
            if [ $e_hp -gt 0 ]; then
                incoming=$(( e_dmg + (RANDOM % 5) ))
                hp=$(( hp - incoming ))
                echo "The $e_name hits for $incoming damage!"
            fi
        fi
    done
}

pick_loot() {
    echo -e "\n\e[1;33m[ TREASURE FOUND ]\e[0m"
    echo "Choose your reward:"
    echo "1) Bitter Bog Berries (+30 HP)"
    echo "2) Sharpening Oil (+8 ATK)"
    read -p "> " loot_choice
    if [ "$loot_choice" == "1" ]; then
        hp=$(( hp + 30 ))
        script_keeper "The berries taste like copper, but you feel stronger."
    else
        atk=$(( atk + 8 ))
        script_keeper "Your weapon glints with a new, dangerous edge."
    fi
}

# --- START GAME ---

clear
show_title
clear
show_script_keeper
script_keeper "Welcome to the Bitter Bog, meatbag."
script_keeper "I've been waiting for a new character to write into this script."
read -p "Identify yourself: " char_name

while true; do
    echo -e "\nChoose your vessel, $char_name:"
    echo "1) Warrior (HP: 130 | ATK: 15)"
    echo "2) Mage    (HP: 80  | ATK: 35)"
    echo "3) Rogue   (HP: 100 | ATK: 25)"
    read -p "Selection: " choice
    case $choice in
        1) hp=130; atk=15; class="Warrior"; break ;;
        2) hp=80; atk=35; class="Mage"; break ;;
        3) hp=100; atk=25; class="Rogue"; break ;;
        *) echo "That vessel is broken. Choose 1, 2, or 3." ;;
    esac
done

clear
show_script_keeper
script_keeper "A $class? Interesting choice for $char_name. Let's see if you survive the first act."

# --- ACT 1: THE SLUDGE ---
clear
script_keeper "The mud begins to boil and bubble around your ankles..."
script_keeper "A quivering mass of neon green slime coagulates before you!"
battle_loop "Slime" 45 8 "show_slime"
[ $hp -le 0 ] && { script_keeper "The Slime absorbs you into its mass. GAME OVER."; exit; }
pick_loot

# --- ACT 2: THE WEBS ---
clear
script_keeper "You push through thick, sticky curtains of webbing..."
script_keeper "Eight red eyes blink from the dark canopy. Something drops!"
battle_loop "Giant Spider" 60 14 "show_spider"
[ $hp -le 0 ] && { script_keeper "You've been cocooned for later. GAME OVER."; exit; }
pick_loot

# --- ACT 3: THE SKIES ---
clear
script_keeper "A foul wind kicks up, carrying the scent of guano and rot."
script_keeper "The Screech-King dives, its wings spanning the width of the path!"
battle_loop "Screech-King" 75 18 "show_bat"
[ $hp -le 0 ] && { script_keeper "You are carried off to a jagged mountain nest. GAME OVER."; exit; }
pick_loot

# --- ACT 4: THE BURIED ---
clear
script_keeper "The ground crumbles into a pile of ancient, dry bone."
script_keeper "A Skeleton rises, holding a rusted blade, its jaw clicking in laughter!"
battle_loop "Skeleton" 90 22 "show_skeleton"
[ $hp -le 0 ] && { script_keeper "Your bones clatter as they join the pile. GAME OVER."; exit; }
pick_loot

# --- FINAL ACT: THE FREQUENCY ---
clear
script_keeper "The air turns static. The colors of the bog shift into neon madness."
script_keeper "The ground vibrates with a low, hypnotic hum... ALL GLORY TO THE..."
show_hypnotoad
script_keeper "The True Hypnotoad demands your submission, $char_name!"

boss_hp=250
while [ $boss_hp -gt 0 ] && [ $hp -gt 0 ]; do
    echo "----------------------------------------------------"
    echo -e "\e[1;37m$char_name\e[0m HP: $hp | \e[1;32mHYPNOTOAD\e[0m HP: $boss_hp"
    echo "1) Strike  2) Defend"
    read -p "> " action

    if [ "$action" == "2" ]; then
        hp=$(( hp - 8 ))
        echo "You resist the psychic pull! 8 damage taken."
    else
        if [ $((RANDOM % 5)) -eq 0 ]; then
            echo -e "\e[1;33mMESMERIZED! You missed your turn!\e[0m"
        else
            roll=$(( RANDOM % 10 ))
            damage=$(( atk + (RANDOM % 20) ))
            [ $roll -eq 9 ] && damage=$(( damage * 2 )) && echo -e "\e[1;33mCRITICAL HIT!\e[0m"
            boss_hp=$(( boss_hp - damage ))
            echo "You hit for $damage damage!"
        fi
        [ $boss_hp -gt 0 ] && hp=$(( hp - 20 )) && echo "Psychic shock! -20 HP"
    fi
done

if [ $hp -gt 0 ]; then
    clear
    show_script_keeper
    script_keeper "The frequency stops. The Hypnotoad blinks, and the world returns to normal."
    script_keeper "The Bitter Bog recedes... the exit stands before you, $char_name."
    script_keeper "You have escaped the Bitter Bog. For now..."
else
    clear
    show_hypnotoad
    script_keeper "All glory to the Hypnotoad."
    script_keeper "Your character has been consumed, $char_name. GAME OVER."
fi