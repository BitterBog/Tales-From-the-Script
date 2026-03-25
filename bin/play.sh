#!/bin/bash

# --- Tales From the Script: Bitter Bog Edition ---

# --- The Script Keeper ---
script_keeper() {
    echo -ne "\e[1;30m[\e[0;31m!\e[1;30m] \e[1;37mSCRIPT KEEPER: \e[0;37m"
    msg="$1"
    for (( i=0; i<${#msg}; i++ )); do
        echo -n "${msg:$i:1}"
        sleep 0.05
    done
    echo -e "\e[0m"
    sleep 1.0
}

# --- ASCII Art ---

show_title() {
    echo -e "\e[1;32m"
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
    echo -e "\e[1;30m              [ PRESS ENTER TO START ]\e[0m"
    read
}

show_script_keeper() {
    echo -e "\e[1;30m"
    cat << 'EOF'
              ___          
             /   \\         
        /\  | . . \\       
     //// \\|     ||       
    ////   \\ ___//\       
    ///     \\      \      
   ///      |\\      |     
  //        | \\  \   \    
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

show_slime() {
    echo -e "\e[1;32m"
    cat << 'EOF'
      .-----------.    
     (  o     o    )   
    (      ^        )  
     '-------------'   
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

show_bat() {
    echo -e "\e[1;37m"
    cat << 'EOF'
     =/\                 /\=
    / \'._   (\_/)   _.'/ \
   / .''._'--(o.o)--'_.''. \
  /.' _/ |`'=/ " \='`| \_ `.\
 /` .' `\;-,'\___/',-;/` '. '\
/.-'       `\(-V-)/`       `-.\
`             " "              `
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
EOF
    echo -e "\e[0m"
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

# --- COMBAT ENGINE ---

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
            [ $roll -eq 9 ] && damage=$(( damage * 2 )) && echo -e "\e[1;33mCRITICAL HIT!\e[0m"
            echo "You hit for $damage damage!"
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
    echo "1) Bitter Bog Berries (+45 HP)"
    echo "2) Sharpening Oil (+10 ATK)"
    read -p "> " loot_choice
    if [ "$loot_choice" == "1" ]; then
        hp=$(( hp + 45 ))
        script_keeper "The berries heal your wounds."
    else
        atk=$(( atk + 10 ))
        script_keeper "You feel more lethal than before."
    fi
}

# --- START GAME ---

clear
show_title
clear
show_script_keeper
script_keeper "Welcome to the Bitter Bog, meatbag."
script_keeper "I've been waiting for fresh meat to write into this script."
read -p "Identify yourself: " char_name

while true; do
    echo -e "\nChoose your vessel, $char_name:"
    echo "1) Warrior (HP: 140 | ATK: 15)"
    echo "2) Mage    (HP: 85  | ATK: 35)"
    echo "3) Rogue   (HP: 110 | ATK: 25)"
    read -p "Selection: " choice
    case $choice in
        1) hp=140; atk=15; class="Warrior"; break ;;
        2) hp=85; atk=35; class="Mage"; break ;;
        3) hp=110; atk=25; class="Rogue"; break ;;
        *) echo "Invalid choice." ;;
    esac
done

# --- ACTS ---
clear
script_keeper "The mud begins to boil... A mass of slime rises!"
battle_loop "Slime" 40 8 "show_slime"
[ $hp -le 0 ] && { script_keeper "The script ends early for you. GAME OVER."; exit; }
pick_loot

clear
script_keeper "Webs cling to your face. A spider drops!"
battle_loop "Giant Spider" 55 12 "show_spider"
[ $hp -le 0 ] && { script_keeper "Cocooned. GAME OVER."; exit; }
pick_loot

clear
script_keeper "Wings beat overhead. The Screech-King dives!"
battle_loop "Screech-King" 70 15 "show_bat"
[ $hp -le 0 ] && { script_keeper "A long drop. GAME OVER."; exit; }
pick_loot

clear
script_keeper "Bones rattle beneath the mud. A Skeleton rises!"
battle_loop "Skeleton" 85 20 "show_skeleton"
[ $hp -le 0 ] && { script_keeper "Joined the heap. GAME OVER."; exit; }
pick_loot

# --- FINAL BOSS ---
clear
script_keeper "The frequency hums... ALL GLORY TO THE..."
show_hypnotoad
script_keeper "The True Hypnotoad demands your submission!"

boss_hp=175
while [ $boss_hp -gt 0 ] && [ $hp -gt 0 ]; do
    echo "----------------------------------------------------"
    echo -e "\e[1;37m$char_name\e[0m HP: $hp | \e[1;32mHYPNOTOAD\e[0m HP: $boss_hp"
    echo "1) Strike  2) Defend"
    read -p "> " action

    if [ "$action" == "2" ]; then
        hp=$(( hp - 5 ))
        echo "Resisting the stare... 5 damage taken."
    else
        if [ $((RANDOM % 5)) -eq 0 ]; then
            echo -e "\e[1;33mMESMERIZED! Turn skipped!\e[0m"
        else
            roll=$(( RANDOM % 10 ))
            damage=$(( atk + (RANDOM % 15) ))
            [ $roll -eq 9 ] && damage=$(( damage * 2 )) && echo -e "\e[1;33mCRITICAL HIT!\e[0m"
            boss_hp=$(( boss_hp - damage ))
            echo "You hit for $damage!"
        fi
        [ $boss_hp -gt 0 ] && hp=$(( hp - 12 )) && echo "Psychic blast! -12 HP"
    fi
done

if [ $hp -gt 0 ]; then
    clear
    show_script_keeper
    script_keeper "The Hypnotoad blinks. The Bog fades away."
    script_keeper "You have escaped the script, $char_name. You are free."
else
    clear
    show_hypnotoad
    script_keeper "All glory to the Hypnotoad. GAME OVER."
fi