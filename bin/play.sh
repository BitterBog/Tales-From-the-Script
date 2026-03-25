#!/bin/bash

# --- Tales From the Script: Bitter Bog Edition ---

script_keeper() {
    # Spooky red prefix for the Script Keeper's dialogue
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

show_script_keeper() {
    echo -e "\e[1;30m" # Set to Dark Gray
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
    echo -e "\e[1;37m" # White/Light Gray
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

show_hypnotoad() {
    echo -e "\e[1;32m" # Toad Green
    cat << 'EOF'
         o  o   o  o
         |\/ \^/ \/|
         |,-------.|
EOF
    # Glowing Eye Injection
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

show_warrior() { echo -e "\e[1;37m      ___ \n     |[_]| \n     / | \ \n    (_/ \_) \e[0m"; }
show_mage() { echo -e "\e[1;34m      / \ \n     | * | \n      \ / \n       | \e[0m"; }
show_rogue() { echo -e "\e[1;32m      ^ \n     / \ \n     |X| \n     |_| \e[0m"; }

# --- THE ADVENTURE BEGINS ---

clear
show_script_keeper
echo ""
script_keeper "Greetings, Users and Losers! Muahahah!"
script_keeper "I see you've logged in for a little... terminal illness!"
script_keeper "Choose your vessel, or become a permanent line of code."

echo -e "\e[1;30m1) Warrior (HP: 100 | ATK: 15)\n2) Mage (HP: 60 | ATK: 30)\n3) Rogue (HP: 75 | ATK: 22)\e[0m"
read -p "Selection: " choice

case $choice in
    1) hp=100; atk=15; class="Warrior"; clear; show_warrior ;;
    2) hp=60; atk=30; class="Mage"; clear; show_mage ;;
    3) hp=75; atk=22; class="Rogue"; clear; show_rogue ;;
    *) hp=50; atk=10; class="Husk"; script_keeper "The Bog claims the indecisive." ;;
esac

script_keeper "A $class enters the muck. Good luck, meatbag."

# --- ENCOUNTER 1: THE SLIME ---
clear
script_keeper "The ground squelches... A Slime rises!"
echo -e "\e[1;32m      .-----------.    "
echo "     (  o     o    )   "
echo "    (      ^        )  "
echo "     '-------------'   \e[0m"

enemy_hp=30
while [ $enemy_hp -gt 0 ] && [ $hp -gt 0 ]; do
    echo "----------------------------------------------------"
    echo "[$class] HP: $hp | [Slime] HP: $enemy_hp"
    read -p "1) Strike: " action
    damage=$(( atk + (RANDOM % 6) ))
    enemy_hp=$(( enemy_hp - damage ))
    echo "You strike for $damage damage!"
    if [ $enemy_hp -gt 0 ]; then
        hp=$(( hp - 8 ))
        echo "The Slime lashes out for 8 damage!"
    fi
done
[ $hp -le 0 ] && { script_keeper "You sink into the muck. GAME OVER."; exit; }

script_keeper "Loot: 1) Iron Shard (+15 HP) 2) Sharpening Stone (+5 ATK)"
read -p "> " L; [ "$L" == "1" ] && hp=$((hp+15)) || atk=$((atk+5))

# --- ENCOUNTER 2: THE SPIDERS ---
clear
script_keeper "The canopy rustles... The Twin Spiders descend!"
# Displaying side-by-side
echo -e "\e[1;30m   / _ \         / _ \   "
echo -e " \_\(_)/_/     \_\(_)/_/ "
echo -e "  _//\"\\_       _//\"\\_  "
echo -e "   /   \         /   \   \e[0m"

s1_hp=25; s2_hp=25
while [[ ($s1_hp -gt 0 || $s2_hp -gt 0) && $hp -gt 0 ]]; do
    echo "----------------------------------------------------"
    echo "HP: $hp | Spider 1: $s1_hp | Spider 2: $s2_hp"
    read -p "Target (1/2): " target
    damage=$(( atk + (RANDOM % 5) ))
    if [[ "$target" == "1" && $s1_hp -gt 0 ]]; then
        s1_hp=$(( s1_hp - damage )); echo "Spider 1 screeches!"
    elif [[ "$target" == "2" && $s2_hp -gt 0 ]]; then
        s2_hp=$(( s2_hp - damage )); echo "Spider 2 is wounded!"
    else
        echo "You missed the target!"
    fi
    hp=$((hp-12)); echo "Venomous bite! -12 HP"
done
[ $hp -le 0 ] && { script_keeper "Envenomed. GAME OVER."; exit; }

# --- ENCOUNTER 3: THE SCREECH-KING (BAT) ---
clear
script_keeper "A massive shadow blocks the moon..."
show_bat
script_keeper "The Giant Bat dives from the trees!"
bat_hp=50
while [ $bat_hp -gt 0 ] && [ $hp -gt 0 ]; do
    echo "----------------------------------------------------"
    echo "[$class] HP: $hp | [Giant Bat] HP: $bat_hp"
    read -p "1) Attack: " action
    if [ $((RANDOM % 4)) -eq 0 ]; then
        echo "The bat dived! You missed!"
    else
        damage=$(( atk + 5 ))
        bat_hp=$(( bat_hp - damage ))
        echo "Hit! $damage damage to the wings!"
    fi
    hp=$(( hp - 10 ))
    echo "The bat claws you for 10 damage!"
done
[ $hp -le 0 ] && exit

# --- ENCOUNTER 4: THE BONE LEGION ---
clear
script_keeper "The mud gives way to bone... A Skeleton rises!"
show_skeleton
skel_hp=65
while [ $skel_hp -gt 0 ] && [ $hp -gt 0 ]; do
    echo "----------------------------------------------------"
    echo "HP: $hp | Skeleton: $skel_hp"
    read -p "1) Strike: " action
    damage=$(( atk + (RANDOM % 5) ))
    skel_hp=$(( skel_hp - damage ))
    echo "Bone clatters for $damage damage!"
    [ $skel_hp -gt 0 ] && hp=$(( hp - 12 ))
done
[ $hp -le 0 ] && exit

# --- FINAL BOSS: HYPNOTOAD ---
clear
script_keeper "The frequency changes... ALL GLORY TO THE..."
show_hypnotoad
script_keeper "The True Hypnotoad demands your submission."

boss_hp=200
while [ $boss_hp -gt 0 ] && [ $hp -gt 0 ]; do
    echo "----------------------------------------------------"
    echo -e "[$class] HP: $hp | \e[1;32m[TOAD]\e[0m HP: $boss_hp"
    if [ $(( RANDOM % 5 )) -eq 0 ]; then
        echo -e "\e[1;33mThe eyes swirl... Mesmerized! Turn lost!\e[0m"
        sleep 1
    else
        read -p "1) Strike: " action
        damage=$(( atk + (RANDOM % 12) ))
        boss_hp=$(( boss_hp - damage ))
        echo "You strike the Toad for $damage damage!"
    fi
    hp=$(( hp - 18 ))
    echo "Psychic damage! -18 HP"
done

if [ $hp -gt 0 ]; then
    clear
    show_script_keeper
    script_keeper "The frequency stops. You have survived the Bitter Bog."
    script_keeper "For now... log out while you still can."
else
    clear
    show_hypnotoad
    script_keeper "All glory to the Hypnotoad."
    script_keeper "Your mind belongs to the swamp. GAME OVER."
fi