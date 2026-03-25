#!/bin/bash

# --- TALES FROM THE SCRIPT ---

# The Script Keeper
script_keeper() {
    # Prefix with the spooky marker
    echo -ne "\e[1;30m[\e[0;31m!\e[1;30m]\e[0m \e[0;37m"
    
    # Loop through each character of the string ($1)
    msg="$1"
    for (( i=0; i<${#msg}; i++ )); do
        echo -n "${msg:$i:1}"
        sleep 0.03  # Adjust this number for speed (0.01 is fast, 0.05 is slow)
    done
    
    echo -e "\e[0m" # Reset colors and move to next line
    sleep 0.8       # Pause briefly after the sentence is done
}

# ASCII Art for Classes
show_warrior() {
    echo -e "\e[1;37m      ___ \n     |[_]| \n     / | \ \n    (_/ \_) \e[0m"
}
show_mage() {
    echo -e "\e[1;34m      / \ \n     | * | \n      \ / \n       | \e[0m"
}
show_rogue() {
    echo -e "\e[1;32m      ^ \n     / \ \n     |X| \n     |_| \e[0m"
}

clear
echo "----------------------------------------------------"
echo "           TALES FROM THE SCRIPT                    "
echo "----------------------------------------------------"
script_keeper "Welcome to the Bitter Bog..."
script_keeper "A place of ancient rot and eternal stench."
script_keeper "Choose your vessel, if you wish to survive the descent."

echo -e "\e[1;30m1) Warrior (HP: 100 | ATK: 15)\n2) Mage (HP: 60 | ATK: 30)\n3) Rogue (HP: 75 | ATK: 22)\e[0m"
read -p "Selection: " choice

case $choice in
    1) hp=100; atk=15; class="Warrior"; show_warrior ;;
    2) hp=60; atk=30; class="Mage"; show_mage ;;
    3) hp=75; atk=22; class="Rogue"; show_rogue ;;
    *) script_keeper "The Bog claims the indecisive. You are a Husk."; hp=50; atk=10; class="Husk" ;;
esac

script_keeper "A $class enters the muck. Let us see how long you last."

# --- THE SETTING ---
clear
echo -e "\e[0;32m"
echo "   .    .    .    .    .    .    .   "
echo " .   '   .   '   .   '   .   '   . "
echo "   ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~   "
echo "  (  THE BITTER BOG - SECTOR 0  )  "
echo "   ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~   "
echo -e "\e[0m"

script_keeper "The air is thick with a green, swirling mist."
script_keeper "The ground squelches beneath your boots... a smell of ancient decay fills your lungs."
script_keeper "Something ripples in the stagnant water ahead."

# --- ENCOUNTER 1: THE SLIME ---
script_keeper "A gelatinous mass rises from the bog... The Slime approaches!"

# ASCII SLIME
echo -e "\e[1;32m      (____) \n     ( o  o ) \n      (  --  ) \n       (____) \e[0m"

enemy_hp=30
enemy_atk=8

while [ $enemy_hp -gt 0 ] && [ $hp -gt 0 ]; do
    echo "----------------------------------------------------"
    echo "[$class] HP: $hp | [Slime] HP: $enemy_hp"
    read -p "1) Strike  2) Defend: " action
    
    # Player Turn
    roll=$(( (RANDOM % 6) + 1 ))
    damage=$(( atk + roll ))
    enemy_hp=$(( enemy_hp - damage ))
    echo "You strike for $damage damage!"

    # Enemy Turn
    if [ $enemy_hp -gt 0 ]; then
        e_roll=$(( (RANDOM % 4) + 1 ))
        e_damage=$(( enemy_atk + e_roll ))
        hp=$(( hp - e_damage ))
        echo "The Slime lashes out for $e_damage damage!"
    fi
done

if [ $hp -le 0 ]; then
    script_keeper "You sink into the muck... forgotten. GAME OVER."
    exit
fi

script_keeper "The Slime dissolves into the pool. You survived... for now."

# --- LOOT SELECTION ---
echo "The creature left something behind in the filth:"
echo "1) Iron Shard (+10 Max HP)"
echo "2) Sharpening Stone (+5 ATK)"
read -p "Choose your reward: " reward

if [ $reward -eq 1 ]; then hp=$(( hp + 10 )); else atk=$(( atk + 5 )); fi

script_keeper "You wipe the slime from your gear and move deeper into the stench..."

script_keeper "The stench grows thicker. Webbing hangs like rotted silk from the cypress trees."
script_keeper "Two shadows drop from the canopy... **The Twin Spiders** hunger!"

# ASCII SPIDERS
echo -e "\e[1;30m   / _ \  / _ \ "
echo -e "  \_\(_)/_/\_\(_)/_/"
echo -e "   _//o\\_  _//o\\_ "
echo -e "    /   \    /   \ \e[0m"

s1_hp=20
s2_hp=20
spider_atk=6

while [[ ($s1_hp -gt 0 || $s2_hp -gt 0) && $hp -gt 0 ]]; do
    echo "----------------------------------------------------"
    echo "[$class] HP: $hp | Spider 1: $s1_hp | Spider 2: $s2_hp"
    echo "1) Attack Spider 1  2) Attack Spider 2"
    read -p "Target: " target

    roll=$(( (RANDOM % 6) + 1 ))
    damage=$(( atk + roll ))

    if [ "$target" == "1" ] && [ $s1_hp -gt 0 ]; then
        s1_hp=$(( s1_hp - damage ))
        echo "You crushed Spider 1 for $damage damage!"
    elif [ "$target" == "2" ] && [ $s2_hp -gt 0 ]; then
        s2_hp=$(( s2_hp - damage ))
        echo "You slashed Spider 2 for $damage damage!"
    else
        echo "You swing at ghosts! (Invalid target)"
    fi

    # Spiders counter-attack
    for i in 1 2; do
        current_spider_hp="s${i}_hp"
        if [ ${!current_spider_hp} -gt 0 ]; then
            hp=$(( hp - spider_atk ))
            echo "Spider $i bites you for $spider_atk damage!"
        fi
    done
done

[ $hp -le 0 ] && { script_keeper "Envenomed and forgotten. GAME OVER."; exit; }

script_keeper "You stomp the last of them into the mud."
echo "Loot: 1) Vial of Antidote (+20 HP) 2) Serrated Edge (+7 ATK)"
read -p "Choice: " reward
[ "$reward" == "1" ] && hp=$(( hp + 20 )) || atk=$(( atk + 7 ))

script_keeper "High-pitched shrieks echo through the bog. Dark shapes blot out the dim light."

# ASCII BATS
echo -e "\e[1;37m   ^v^   ^v^   ^v^ \e[0m"

bat_hp=45 # Combined swarm HP
while [ $bat_hp -gt 0 ] && [ $hp -gt 0 ]; do
    echo "----------------------------------------------------"
    echo "[$class] HP: $hp | Bat Swarm: $bat_hp"
    read -p "1) Swat at the air: " action
    
    # Accuracy check (1 in 3 chance to miss)
    accuracy=$(( RANDOM % 3 ))
    if [ $accuracy -eq 0 ]; then
        script_keeper "They are too fast! You missed!"
    else
        damage=$(( atk + (RANDOM % 5) ))
        bat_hp=$(( bat_hp - damage ))
        echo "You knocked a few down! Dealt $damage damage."
    fi
    hp=$(( hp - 10 ))
    echo "The swarm claws at you for 10 damage!"
done

[ $hp -le 0 ] && { script_keeper "The bats pick your bones clean. GAME OVER."; exit; }

script_keeper "The mud gives way to bone. Four skeletons rise, clutching rusted blades."

# ASCII SKELETON
echo -e "\e[1;37m    [X] [X] [X] [X] \n    /|\ /|\ /|\ /|\ \n    / \ / \ / \ / \ \e[0m"

skel_hp=60
while [ $skel_hp -gt 0 ] && [ $hp -gt 0 ]; do
    echo "----------------------------------------------------"
    echo "[$class] HP: $hp | Skeleton Legion: $skel_hp"
    read -p "1) Bash them: " action
    
    damage=$(( atk - 5 )) # Armor reduces damage
    [ $damage -lt 1 ] && damage=1 
    skel_hp=$(( skel_hp - damage ))
    echo "Your blade clangs against bone! Dealt $damage damage."
    
    hp=$(( hp - 12 ))
    echo "The legion strikes back for 12 damage!"
done

[ $hp -le 0 ] && { script_keeper "Your bones join the pile. GAME OVER."; exit; }

clear
script_keeper "You have reached the heart of the Bitter Bog."
script_keeper "The stench is overwhelming. And then... you see HIM."
script_keeper "ALL GLORY TO THE..."

# ASCII HYPNOTOAD
echo -e "\e[1;32m      (o)___(o)"
echo -e "       (  .  ) "
echo -e "      (  ---  )"
echo -e "      (_______)\e[0m"

boss_hp=150
while [ $boss_hp -gt 0 ] && [ $hp -gt 0 ]; do
    echo "----------------------------------------------------"
    echo "[$class] HP: $hp | HYPNOTOAD: $boss_hp"
    
    # Hypnosis Logic
    hypno=$(( RANDOM % 4 ))
    if [ $hypno -eq 0 ]; then
        script_keeper "The Toad's eyes swirl... You are mesmerized! You cannot move!"
    else
        read -p "1) Attack the Great Toad: " action
        damage=$(( atk + (RANDOM % 10) ))
        boss_hp=$(( boss_hp - damage ))
        echo "You strike for $damage damage!"
    fi
    
    hp=$(( hp - 15 ))
    echo "The Hypnotoad exerts its will! You take 15 psychic damage!"
done

if [ $hp -gt 0 ]; then
    script_keeper "The Toad's eyes go dull. The Bog goes silent."
    script_keeper "You have survived the Script. You may... log out."
else
    script_keeper "All glory to the Hypnotoad. You are now its thrall. GAME OVER."
fi