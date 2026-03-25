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
    echo -e "\e[1;30m              [ PRESS ENTER TO START ]\e[0m"
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

# --- COMBAT ENGINE ---

battle_loop() {
    local e_name=$1
    local e_hp=$2
    local e_dmg=$3
    local e_art_func=$4

    while [ $e_hp -gt 0 ] && [ $hp -gt 0 ]; do
        echo "----------------------------------------------------"
        $e_art_func
        echo -e "\e[1;37m$char_name ($class)\e[0m HP: $hp | \e[1;31m$e_name\e[0m HP: $e_hp"
        echo "1) Strike  2) Defend"
        read -p "> " action

        if [ "$action" == "2" ]; then
            echo "You brace for impact!"
            incoming=$(( (e_dmg / 2) + (RANDOM % 3) ))
            hp=$(( hp - incoming ))
            echo "The $e_name hits for $incoming damage."
        else
            roll=$(( RANDOM % 10 ))
            damage=$(( atk + (RANDOM % 10) ))
            
            if [ $roll -eq 9 ]; then
                damage=$(( damage * 2 ))
                echo -e "\e[1;33mCRITICAL HIT! You strike for $damage damage!\e[0m"
            else
                echo "You strike the $e_name for $damage damage!"
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

# --- START GAME ---

clear
show_title
clear
show_script_keeper
script_keeper "Welcome to the Bitter Bog... I hope you've saved your progress."
read -p "Enter your character's name: " char_name

while true; do
    echo -e "\nChoose your vessel, $char_name:"
    echo "1) Warrior (HP: 120 | ATK: 15)"
    echo "2) Mage    (HP: 70  | ATK: 35)"
    echo "3) Rogue   (HP: 90  | ATK: 25)"
    read -p "Selection (1-3): " choice

    case $choice in
        1) hp=120; atk=15; class="Warrior"; break ;;
        2) hp=70; atk=35; class="Mage"; break ;;
        3) hp=90; atk=25; class="Rogue"; break ;;
        *) echo -e "\e[1;31mThe Bog demands a real choice!\e[0m" ;;
    esac
done

clear
show_script_keeper
script_keeper "A $class? Brave, but perhaps foolish. Let's find out."

# --- PROGRESSION ---

clear
script_keeper "A Slime squelches forward!"
battle_loop "Slime" 40 8 "show_slime"
[ $hp -le 0 ] && { script_keeper "Game Over. The Slime claimed another soul."; exit; }
atk=$((atk+5)); script_keeper "Looted: Sharp Stone (+5 ATK)."

clear
script_keeper "A Giant Spider drops from the canopy!"
battle_loop "Giant Spider" 55 12 "show_spider"
[ $hp -le 0 ] && { script_keeper "Game Over. You are wrapped in silk."; exit; }

clear
script_keeper "The Screech-King dives from the shadows!"
battle_loop "Screech-King" 65 15 "show_bat"
[ $hp -le 0 ] && { script_keeper "Game Over. Carried off to the nests."; exit; }

clear
script_keeper "A Skeleton reconstructs itself before you!"
battle_loop "Skeleton" 80 18 "show_skeleton"
[ $hp -le 0 ] && { script_keeper "Game Over. Your bones join the pile."; exit; }

# --- FINAL BOSS ---
clear
script_keeper "ALL GLORY TO THE..."
show_hypnotoad
script_keeper "Finish it, $char_name! Fight the frequency!"

boss_hp=200
while [ $boss_hp -gt 0 ] && [ $hp -gt 0 ]; do
    echo "----------------------------------------------------"
    echo -e "\e[1;37m$char_name\e[0m HP: $hp | \e[1;32mHYPNOTOAD\e[0m HP: $boss_hp"
    echo "1) Strike  2) Defend"
    read -p "> " action

    if [ "$action" == "2" ]; then
        hp=$(( hp - 8 ))
        echo "Resisting the gaze... 8 damage taken."
    else
        if [ $((RANDOM % 5)) -eq 0 ]; then
            echo -e "\e[1;33mMESMERIZED! You missed your turn!\e[0m"
        else
            roll=$(( RANDOM % 10 ))
            damage=$(( atk + (RANDOM % 15) ))
            if [ $roll -eq 9 ]; then
                damage=$(( damage * 2 ))
                echo -e "\e[1;33mCRITICAL HIT! $damage damage!\e[0m"
            else
                echo "You hit for $damage!"
            fi
            boss_hp=$(( boss_hp - damage ))
        fi
        [ $boss_hp -gt 0 ] && hp=$(( hp - 20 )) && echo "The Toad exerts its will! -20 HP"
    fi
done

if [ $hp -gt 0 ]; then
    clear
    show_script_keeper
    script_keeper "The frequency stops. You have survived the Bitter Bog, $char_name."
else
    clear
    show_hypnotoad
    script_keeper "All glory to the Hypnotoad. GAME OVER."
fi