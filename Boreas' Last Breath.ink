VAR despoina = 0 
VAR khione = 0
VAR ded_moroz = 0 
VAR itzlacoliuhqui = 0
VAR marzanna = 0 
VAR skadi = 0 
VAR hine_takurua = 0 
VAR shakok = 0 
VAR naneh_sarma = 0
VAR character = 1 
VAR character_turn = 1
# theme: dark 

-> instructions

=== invitation ===

/// turn this into a pretty image 

You are cordially invited to celebrate Boreas' 57th birthday on his private train. Only the best for the owner of Boreas Transcontinental. 

No plus ones. No children. No dietary restrictions. No exceptions. 

+ [Accept] -> character_selection
+ [Gameplay instructions] -> instructions

=== instructions ===
Each player should select one of nine characters. 

You can add NPCs if you would like to increase the difficulty and try different murder scenarios. 

Player turns will be taken in order of selection, the player's character name will appear on their turn. 

Select one of the four investigate options to learn more about the crime and characters. You can choose to share this information or keep it to yourself. 

Due to your hangover, you may discover the same information twice! 

Once you think you have enough clues to solve the murder - select "Solve the murder!" 

+ [Select Characters] -> character_selection

=== character_selection ===

# CLEAR 

{character == 1: Please select player one:}
{character == 2: Please select player two:}
{character == 3: Please select player three:}
{character == 4: Please select player four:}
{character == 5: Please select player five:}
{character == 6: Please select player six:}
{character == 7: Please select player seven:}
{character == 8: Please select player eight:}
{character == 9: Please select player nine:}
+   {despoina == 0} [Despoina]
    # IMAGE: images/despoina.jpg
    A wealthy heiress with a passion for horses.
    ++ [Select]
    ~ despoina = character
    ~ character += 1
    -> character_selection
    ++ [Go back]
    -> character_selection
+   {khione == 0}[Khione]
    # IMAGE: images/khione.jpg
    Daughter of Boreas who keeps the whole train running smoothly. 
    ++ [Select]
    ~ khione = character
    ~ character += 1
    -> character_selection
    ++ [Go back]
    -> character_selection
+   {ded_moroz == 0}[Ded Moroz]
    # IMAGE: images/ded_moroz.jpg
    Boreas' business partner and owner of a large shipping business.
    ++ [Select]
    ~ ded_moroz = character
    ~ character += 1
    -> character_selection
    ++ [Go back]
    -> character_selection
+   {itzlacoliuhqui == 0}[Itzlacoliuhqui]
    # IMAGE: images/itzla.jpg
    Wealthy playboy who recently invested a lot of money into Boreas Transcontinental.
    ++ [Select]
    ~ itzlacoliuhqui = character
    ~ character += 1
    -> character_selection
    ++ [Go back]
    -> character_selection
+   {marzanna == 0}[Marzanna]
    # IMAGE: images/marzanna.jpg
    Quirky woman dressing above her station desperate to speak with Boreas about something private. 
    ++ [Select]
    ~ marzanna = character
    ~ character += 1
    -> character_selection
    ++ [Go back]
    -> character_selection
+   {skadi == 0 }[Skadi]
    # IMAGE: images/skadi.jpg
    Famous winter sports althete always looking to expand their brand. 
    ++ [Select]
    ~ skadi = character
    ~ character += 1
    -> character_selection
    ++ [Go back]
    -> character_selection
+   {hine_takurua == 0}[Hine-Takurua]
    # IMAGE: images/hine.jpg
    Wife of a wealthy and powerful political leader. 
    ++ [Select]
    ~ hine_takurua = character
    ~ character += 1
    -> character_selection
    ++ [Go back]
    -> character_selection
+   {shakok == 0}[Shakok]
    # IMAGE: images/shakok.jpg
    Biggest investor of Boreas Transcontinental with a eye for numbers.
    ++ [Select]
    ~ shakok = character
    ~ character += 1
    -> character_selection
    ++ [Go back]
    -> character_selection
+   {naneh_sarma == 0}[Naneh Sarma]
    # IMAGE: images/naneh_sarma.jpg
    An elderly entrepreneur who charitably gives to the community every chance she gets. 
    ++ [Select]
    ~ naneh_sarma = character
    ~ character += 1
    -> character_selection
    ++ [Go back]
    -> character_selection
+   {character > 1} [Select NPCs]
    -> npcs 
+   {character > 1} [Continue to Game]
    -> setup 

=== npcs ===
VAR npc_despoina = 0 
VAR npc_khione = 0
VAR npc_ded_moroz = 0 
VAR npc_itzlacoliuhqui = 0
VAR npc_marzanna = 0 
VAR npc_skadi = 0 
VAR npc_hine_takurua = 0 
VAR npc_shakok = 0 
VAR npc_naneh_sarma = 0
VAR npc = 9
~ npc -= character

# CLEAR

Would you like to add NPCs? 
*   {character < 10}[Yes] -> add_npc
*   [No] -> setup 

=== add_npc ===

Please select your NPCs: 
+   {despoina == 0 && npc_despoina == 0} [Despoina]
    # IMAGE: images/despoina.jpg
    A wealthy heiress with a passion for horses.
    ++ [Select]
    ~ npc_despoina = npc
    ~ despoina = 10
    ~ npc += 1
    -> add_npc
    ++ [Go back]
    -> add_npc
+   {khione == 0 && npc_khione == 0} [Khione]
    # IMAGE: images/khione.jpg
    Daughter of Boreas who keeps the whole train running smoothly. 
    ++ [Select]
    ~ npc_khione = npc
    ~ khione = 10
    ~ npc += 1
    -> add_npc
    ++ [Go back]
    -> add_npc
+   {ded_moroz == 0 && npc_ded_moroz == 0} [Ded Moroz]
    # IMAGE: images/ded_moroz.jpg
    Boreas' business partner and owner of a large shipping business.
    ++ [Select]
    ~ npc_ded_moroz = npc
    ~ ded_moroz = 10
    ~ npc += 1
    -> add_npc
    ++ [Go back]
    -> add_npc
+   {itzlacoliuhqui == 0 && npc_itzlacoliuhqui == 0} [Itzlacoliuhqui]
    # IMAGE: images/itzla.jpg
    Wealthy playboy who recently invested a lot of money into Boreas Transcontinental.
    ++ [Select]
    ~ npc_itzlacoliuhqui = npc
    ~ itzlacoliuhqui = 10
    ~ npc += 1
    -> add_npc
    ++ [Go back]
    -> add_npc
+   {marzanna == 0 && npc_marzanna == 0} [Marzanna]
    # IMAGE: images/marzanna.jpg
    Quirky woman dressing above her station desperate to speak with Boreas about something private. 
    ++ [Select]
    ~ npc_marzanna = npc
    ~ marzanna = 10
    ~ npc += 1
    -> add_npc
    ++ [Go back]
    -> add_npc
+   {skadi == 0 && npc_skadi == 0} [Skadi]
    # IMAGE: images/skadi.jpg
    Famous winter sports althete always looking to expand their brand.
    ++ [Select]
    ~ npc_skadi = npc
    ~ skadi = 10
    ~ npc += 1
    -> add_npc
    ++ [Go back]
    -> add_npc
+   {hine_takurua == 0 && npc_hine_takurua == 0} [Hine-Takurua]
    # IMAGE: images/hine.jpg
    Wife of a wealthy and powerful political leader. 
    ++ [Select]
    ~ npc_hine_takurua = npc
    ~ hine_takurua = 10
    ~ npc += 1
    -> add_npc
    ++ [Go back]
    -> add_npc
+   {shakok == 0 && npc_shakok == 0} [Shakok]
    # IMAGE: images/shakok.jpg
    Biggest investor of Boreas Transcontinental with a eye for numbers. 
    ++ [Select]
    ~ npc_shakok = npc
    ~ shakok = 10
    ~ npc += 1
    -> add_npc
    ++ [Go back]
    -> add_npc
+   {naneh_sarma == 0 && npc_naneh_sarma == 0} [Naneh Sarma]
    # IMAGE: images/naneh_sarma.jpg
    An elderly entrepreneur who charitably gives to the community every chance she gets. 
    ++ [Select]
    ~ npc_naneh_sarma = npc
    ~ naneh_sarma = 10
    ~ npc += 1
    -> add_npc
    ++ [Go back]
    -> add_npc
*   [Continue]
    -> setup 
    

=== setup ===
VAR killer_selection = 0
VAR killer = ""
VAR murder = 0
~ killer_selection = RANDOM(1,npc)

{ 
    - despoina == killer_selection or npc_despoina == killer_selection: 
        ~ killer = "Despoina"
        ~ murder = 1
        -> murder_scene
    - khione == killer_selection or npc_khione == killer_selection: 
        ~ killer = "Khione"
        ~ murder = 2
        -> murder_scene
    - ded_moroz == killer_selection or npc_ded_moroz == killer_selection: 
        ~ killer = "Ded Moroz"
        ~ murder = 3
        -> murder_scene
    - itzlacoliuhqui == killer_selection or npc_itzlacoliuhqui == killer_selection:
        ~ killer = "Itzlacoliuhqui"
        ~ murder = 4
        -> murder_scene
    - marzanna == killer_selection or npc_marzanna == killer_selection: 
        ~ killer = "Marzanna"
        ~ murder = 5
        -> murder_scene
    - skadi == killer_selection or npc_skadi == killer_selection:
        ~ killer = "Skadi"
        ~ murder = 6
        -> murder_scene
    - hine_takurua == killer_selection or npc_hine_takurua == killer_selection:
        ~ killer = "Hine Takurua"
        ~ murder = 7
        -> murder_scene
    - shakok == killer_selection or npc_shakok == killer_selection: 
        ~ killer = "Shakok"
        ~ murder = 8
        -> murder_scene
    - naneh_sarma == killer_selection or npc_naneh_sarma == killer_selection: 
        ~ killer = "Naneh Sarma"
        ~ murder = 9
        -> murder_scene
    - else: 
    something fucked up 
    -> murder_scene
}

-> turn

=== turn ===
VAR char_turn_name = ""

# CLEAR

{
    - character_turn == despoina:
        ~ character_turn += 1
        ~ char_turn_name = "Despoina"
        -> gameplay
    - character_turn == khione:
        ~ character_turn += 1
        ~ char_turn_name = "Khione"
        -> gameplay
    - character_turn == ded_moroz:
        ~ character_turn += 1
        ~ char_turn_name = "Ded Moroz"
        -> gameplay
    - character_turn == itzlacoliuhqui:
        ~ character_turn += 1
        ~ char_turn_name = "Itzlacoliuhqui"
        -> gameplay
    - character_turn == marzanna:
        ~ character_turn += 1
        ~ char_turn_name = "Marzanna"
        -> gameplay
    - character_turn == skadi:
        ~ character_turn += 1
        ~ char_turn_name = "Skadi"
        -> gameplay
    - character_turn == hine_takurua:
        ~ character_turn += 1
        ~ char_turn_name = "Hine Takurua"
        -> gameplay
    - character_turn == shakok:
        ~ character_turn += 1
        ~ char_turn_name = "Shakok"
        -> gameplay
    - character_turn == naneh_sarma:
        ~ character_turn += 1
        ~ char_turn_name = "Naneh Sarma"
        -> gameplay
    - else: 
        ~ character_turn = 1
        -> turn
    
}

=== murder_scene ===
# CLEAR
The lights are too bright, your temples are pounding. Everyone stumbles out of their rooms in the sleeping car like lost children. Very hungover lost children. The only person who isn't accounted for - is Boreas. 

{
    - murder == 1: 
    A scream from Boreas' sleeping car draws everyone's attention. A maid cowers in the doorway. Lying in his bed is Boreas, his head bloodied and skin cold.
    * [Continue] -> turn 
    - murder == 2: 
    The door to Boreas' study is strangely ajar. You all curiously peek through the doors to reveal Boreas slumped on the ground, blood staining his shirt. 
    * [Continue] -> turn 
    - murder == 3: 
    The last place searched is the game room. Boreas' body is sprawled in a chair at the poker table, blood completely staining his shirt. His face frozen in an expression of horror. 
    * [Continue] -> turn 
    - murder == 4: 
    Sitting next to the fireplace in the lounge, he almost looks peaceful. It isn't until a maid screams when she checks on him that anyone is aware that he is dead. 
    * [Continue] -> turn 
    - murder == 5: 
    Searching everywhere, a scream from the viewing room brings everyone to the back of the train. Lying on the floor in the viewing room is Boreas' body. 
    * [Continue] -> turn 
    - murder == 6: 
    Propped up in a chair in the dining car is Boreas' body. If it wasn't for the blood stains down his neck and sides, he could have been waiting for his breakfast. 
    * [Continue] -> turn 
    - murder == 7: 
    A scream from Boreas' sleeping car draws everyone's attention. A maid cowers in the doorway. Boreas' body lies cold and still in the tangled sheets. 
    * [Continue] -> turn 
    - murder == 8: 
    The door to Boreas' study is strangely ajar. You all curiously peek through the doors to reveal Boreas slumped on the ground, blood staining his shirt. 
    * [Continue] -> turn 
    - murder == 9:
    He's slumped over in the hallway, almost as if he tripped and fell... but the blood on the back of Boreas' head makes you wonder whether there's something more nefarious happening. 
    * [Continue] -> turn
    - else: 
    something fucked up 
    * [Continue] -> turn 
}
    
=== gameplay ===
VAR accuse = 0 
VAR inspect = 0
{char_turn_name}'s Turn

+   [Inspect Self] -> inspect_self
+   [Inspect Body] -> inspect_body
+   [Inspect Crime Scene] -> inspect_crime_scene
+   [Inspect Others]
    Who would you like to inspect?
    ++  {despoina > 0 && char_turn_name != "Despoina"} [Despoina]
        ~ inspect = 1 
        -> inspect_others
    ++  {khione > 0 && char_turn_name != "Khione"}[Khione]
        ~ inspect = 2
        -> inspect_others
    ++  {ded_moroz > 0 && char_turn_name != "Ded Moroz"}[Ded Moroz]
        ~ inspect = 3
        -> inspect_others
    ++  {itzlacoliuhqui > 0 && char_turn_name != "Itzlacoliuhqui"}[Itzlacoliuhqui]
        ~ inspect = 4
        -> inspect_others
    ++  {marzanna > 0 && char_turn_name != "Marzanna"}[Marzanna]
        ~ inspect = 5
        -> inspect_others
    ++  {skadi > 0 && char_turn_name != "Skadi"}[Skadi]
        ~ inspect = 6
        -> inspect_others
    ++  {hine_takurua > 0 && char_turn_name != "Hine Takurua"}[Hine Takurua]
        ~ inspect = 7
        -> inspect_others
    ++  {shakok > 0 && char_turn_name != "Shakok"} [Shakok]
        ~ inspect = 8
        -> inspect_others
    ++  {naneh_sarma > 0 && char_turn_name != "Naneh Sarma"} [Naneh Sarma]
        ~ inspect = 9
        -> inspect_others
+   [Solve the Crime!]
    Who do you think murdered Boreas?
    **  {despoina > 0} [Despoina]
        ~ accuse = 1 
        -> murderer_reveal
    **  {khione > 0}[Khione]
        ~ accuse = 2
        -> murderer_reveal
    **  {ded_moroz > 0}[Ded Moroz]
        ~ accuse = 3
        -> murderer_reveal
    **  {itzlacoliuhqui > 0}[Itzlacoliuhqui]
        ~ accuse = 4
        -> murderer_reveal
    **  {marzanna > 0}[Marzanna]
        ~ accuse = 5
        -> murderer_reveal
    **  {skadi > 0}[Skadi]
        ~ accuse = 6
        -> murderer_reveal
    **  {hine_takurua > 0}[Hine Takurua]
        ~ accuse = 7
        -> murderer_reveal
    **  {shakok > 0} [Shakok]
        ~ accuse = 8
        -> murderer_reveal
    **  {naneh_sarma > 0} [Naneh Sarma]
        ~ accuse = 9
        -> murderer_reveal

=== inspect_self ===
{
    - char_turn_name == "Despoina": 
        {shuffle: 
                    - -> self_d_1 
                    - -> self_d_2
                    - -> self_d_3
                    - -> self_d_4
                    - -> self_d_5
                    - -> self_d_6
                    - -> self_d_7
        }
    - char_turn_name == "Khione":
        {shuffle: 
                    - -> self_k_1 
                    - -> self_k_2
                    - {self_k_7} -> self_k_3
                    - -> self_k_4
                    - -> self_k_5
                    - -> self_k_6
                    - -> self_k_7
        }
    - char_turn_name == "Ded Moroz": 
        {shuffle: 
                    - -> self_dm_1 
                    - -> self_dm_2
                    - -> self_dm_3
                    - -> self_dm_4
                    - -> self_dm_5
                    - -> self_dm_6
                    - -> self_dm_7
        }
    - char_turn_name == "Itzlacoliuhqui": 
        {shuffle: 
                    - -> self_i_1 
                    - -> self_i_2
                    - -> self_i_3
                    - -> self_i_4
                    - -> self_i_5
                    - -> self_i_6
                    - -> self_i_7
        }
    - char_turn_name == "Marzanna": 
        {shuffle: 
                    - -> self_m_1 
                    - -> self_m_2
                    - -> self_m_3
                    - -> self_m_4
                    - -> self_m_5
                    - {self_m_7} -> self_m_6
                    - -> self_m_7
        }
    - char_turn_name == "Skadi": 
        {shuffle: 
                    - -> self_sk_1 
                    - -> self_sk_2
                    - -> self_sk_3
                    - -> self_sk_4
                    - -> self_sk_5
                    - -> self_sk_6
                    - -> self_sk_7
        }
    - char_turn_name == "Hine Takurua": 
        {shuffle: 
                    - -> self_ht_1 
                    - -> self_ht_2
                    - -> self_ht_3
                    - {self_ht_2} -> self_ht_4
                    - -> self_ht_5
                    - {self_ht_2} -> self_ht_6
                    - -> self_ht_7
        }
    - char_turn_name == "Shakok": 
        {shuffle: 
                    - -> self_sk_1 
                    - -> self_sk_2
                    - -> self_sk_3
                    - -> self_sk_4
                    - -> self_sk_5
                    - -> self_sk_6
                    - -> self_sk_7
        }
    - char_turn_name == "Naneh Sarma": 
        {shuffle: 
                    - -> self_ns_1 
                    - {self_ns_1} -> self_ns_2
                    - -> self_ns_3
                    - -> self_ns_4
                    - -> self_ns_5
                    - {self_ns_2} -> self_ns_6
                    - -> self_ns_7
        }
    - else:
        Something fucked up 
        -> turn 
}

=== inspect_body ===

{ 
    - murder == 1: 
        {shuffle: 
            - -> body1_1
            - -> body1_2
            - -> body1_3
            - -> body1_4
            - -> body1_5
        }
    - murder == 2:
        {shuffle: 
            - -> body2_1
            - -> body2_2
            - -> body2_3
            - -> body2_4
            - -> body2_5
        }
    - murder == 3:
        {shuffle: 
            - -> body3_1
            - -> body3_2
            - {body3_1} -> body3_3
            - -> body3_4
            - -> body3_5
        }
    - murder == 4:
        {shuffle: 
            - -> body4_1
            - -> body4_2
            - -> body4_3
            - -> body4_4
            - -> body4_5
        }
    - murder == 5:
        {shuffle: 
            - -> body5_1
            - {body5_1} -> body5_2
            - -> body5_3
            - -> body5_4
            - -> body5_5
        }
    - murder == 6:
        {shuffle: 
            - -> body6_1
            - -> body6_2
            - -> body6_3
            - -> body6_4
            - -> body6_5
        }
    - murder == 7:
        {shuffle: 
            - -> body7_1
            - -> body7_2
            - -> body7_3
            - -> body7_4
            - -> body7_5
        }
    - murder == 8:
        {shuffle: 
            - -> body8_1
            - -> body8_2
            - -> body8_3
            - -> body8_4
        }
    - murder == 9:
        {shuffle: 
            - -> body9_1
            - -> body9_2
            - -> body9_3
            - {body9_1} -> body9_4
            - -> body9_5
        }
    - else: 
        something fucked up 
        -> turn
}

=== inspect_crime_scene ===

{ 
    - murder == 1: 
        {shuffle: 
            - {cs_1_6} -> cs_1_1
            - -> cs_1_2
            - {cs_1_6} -> cs_1_3
            - {cs_1_6} -> cs_1_4
            - -> cs_1_5
            - -> cs_1_6
        }
    - murder == 2:
        {shuffle: 
            - -> cs_2_1
            - -> cs_2_2
            - -> cs_2_3
            - -> cs_2_4
            - -> cs_2_5
            - -> cs_2_6
            - -> cs_2_7
        }
    - murder == 3:
        {shuffle: 
            - -> cs_3_1
            - -> cs_3_2
            - -> cs_3_3
            - -> cs_3_4
            - {cs_3_4} -> cs_3_5
            - -> cs_3_6
            - -> cs_3_7
        }
    - murder == 4:
        {shuffle: 
            - -> cs_4_1
            - -> cs_4_2
            - -> cs_4_3
            - -> cs_4_4
            - -> cs_4_5
            - -> cs_4_6
        }
    - murder == 5:
        {shuffle: 
            - -> cs_5_1
            - -> cs_5_2
            - -> cs_5_3
            - -> cs_5_4
            - -> cs_5_5
            - -> cs_5_6
            - -> cs_5_7
        }
    - murder == 6:
        {shuffle: 
            - {cs_6_2} -> cs_6_1
            - -> cs_6_2
            - -> cs_6_3
            - -> cs_6_4
            - -> cs_6_5
            - {cs_6_1} -> cs_6_6
            - {cs_6_1} -> cs_6_7
        }
    - murder == 7:
        {shuffle: 
            - -> cs_7_1
            - -> cs_7_2
            - -> cs_7_3
            - -> cs_7_4
            - -> cs_7_5
            - -> cs_7_6
            - -> cs_7_7
        }
    - murder == 8:
        {shuffle: 
            - -> cs_8_1
            - -> cs_8_2
            - -> cs_8_3
            - -> cs_8_4
            - {cs_8_2} -> cs_8_5
            - -> cs_8_6
        }
    - murder == 9:
        {shuffle: 
            - -> cs_9_1
            - -> cs_9_2
            - -> cs_9_3
            - -> cs_9_4
            - -> cs_9_5
            - -> cs_9_6
        }
    - else: 
        something fucked up 
        -> turn
}

=== inspect_others ===

{
    - inspect == 1: 
        { shuffle: 
                    - ->  inspect_d_1
                    - ->  inspect_d_2
                    - ->  inspect_d_3
                    - ->  inspect_d_4
                    - {char_turn_name != "itzlacoliuhqui"} -> inspect_d_5
                    - {char_turn_name == "itzlacoliuhqui"} -> inspect_d_5_i
                    - ->  inspect_d_6
                    - ->  inspect_d_7
        }
    - inspect == 2:
        { shuffle: 
                    - ->  inspect_k_1
                    - ->  inspect_k_2
                    - ->  inspect_k_3
                    - ->  inspect_k_4
                    - ->  inspect_k_5
                    - ->  inspect_k_6
                    - ->  inspect_k_7
        }
    - inspect == 3:
        { shuffle: 
                    - ->  inspect_dm_1
                    - ->  inspect_dm_2
                    - ->  inspect_dm_3
                    - ->  inspect_dm_4
                    - ->  inspect_dm_5
                    - ->  inspect_dm_6
                    - ->  inspect_dm_7
        }
    - inspect == 4:
        { shuffle: 
                    - ->  inspect_i_1
                    - ->  inspect_i_2
                    - ->  inspect_i_3
                    - ->  inspect_i_4
                    - ->  inspect_i_5
                    - ->  inspect_i_6
                    - ->  inspect_i_7
        }
    - inspect == 5:
        { shuffle: 
                    - ->  inspect_m_1
                    - ->  inspect_m_2
                    - ->  inspect_m_3
                    - ->  inspect_m_4
                    - ->  inspect_m_5
                    - ->  inspect_m_6
                    - ->  inspect_m_7
        }
    - inspect == 6:
        { shuffle: 
                    - ->  inspect_sk_1
                    - ->  inspect_sk_2
                    - ->  inspect_sk_3
                    - ->  inspect_sk_4
                    - ->  inspect_sk_5
                    - ->  inspect_sk_6
                    - ->  inspect_sk_7
        }
    - inspect == 7:
        { shuffle: 
                    - ->  inspect_ht_1
                    - ->  inspect_ht_2
                    - ->  inspect_ht_3
                    - ->  inspect_ht_4
                    - ->  inspect_ht_5
                    - {inspect_ht_4} ->  inspect_ht_6
                    - ->  inspect_ht_7
        }
    - inspect == 8:
        { shuffle: 
                    - ->  inspect_sh_1
                    - ->  inspect_sh_2
                    - ->  inspect_sh_3
                    - ->  inspect_sh_4
                    - ->  inspect_sh_5
                    - ->  inspect_sh_6
                    - ->  inspect_sh_7
        }
    - inspect == 9:
        { shuffle: 
                    - ->  inspect_ns_1
                    - ->  inspect_ns_2
                    - ->  inspect_ns_3
                    - ->  inspect_ns_4
                    - ->  inspect_ns_5
                    - {inspect_ns_2} ->  inspect_ns_6
                    - ->  inspect_ns_7
        }
    - else:
        Something Fucked Up
        -> turn 
}

///Despoina Self //////////////////////////////////////////////
=== self_d_1 === 
You rub your hands together, noticing a chill resting on the skin. Something doesn't feel right. Didn't you have gloves? A very expensive pair of leather riding gloves? Those were one of a kind! Where could they be?
+ [Continue] -> turn

=== self_d_2 ===
You brush away something gritty on your pants. It's black and coarse between your fingers -- soot? What now? Were you playing the scullery maid and messing with the fireplace? Damn hangover!
+ [Continue] -> turn

=== self_d_3 ===
Tucked away inside your jacket you find a neatly folded document. Unfolding it you recognize it as the contract that brought you to Boreas and to this damned party. The same one you needed him to sign and oh --- he has signed it! 

You squint at the signature, not sure if it's the hangover or the ink, but the script looks shaky at best. Perhaps you didn't really get his signature. Not legally. 
+ [Continue] -> turn

=== self_d_4 ===
A gossy image catches your eye. You know that magazine. You know that smirk! You snatch up the magazine and read the blurb. It's an article on your business mogul mother, Demeter, in which showers praise on your sister, Kore, and all her accomplishments. You scan the pages, but there is not one mention of you. 
+ [Continue] -> turn

=== self_d_5 ===
Was that a wink from that dashing young man, Itzlacoliuhqui? Oh. A flush to your face reminds you of the charming conversations with him. He was so easy to talk to. Probably because he made sure your drink was always full. 
+ [Continue] -> turn

=== self_d_6 ===
Tired of standing around, you collapse into a leather chair in the lounge. The room feels awfully familar. A conversation echoes in your head. It quickly escalates into an argument and you remember Boreas' nasty condescension as if he were still alive in the room with you. Good riddance. 
+ [Continue] -> turn

=== self_d_7 ===
Speckling your jacket is yet more horse hair. No matter how many times you brush it and have someone clean it, there always seems to be more. It gets everywhere. It's so hard to find good help. 
+ [Continue] -> turn

///Body 1///
=== body1_1 ===
Boreas was never your favorite, but that long groove smashed into his face by something heavy does not look like a good way to go. Maybe it could have been something like a pipe? Or a narrow bat?
+ [Continue] -> turn

=== body1_2 ===
If you look closely at his hands, it looks like there is ink smeared on them. Could he have been writing something at the time of his demise? 
+ [Continue] -> turn

=== body1_3 ===
You know for a fact that Boreas despised animals and never had any pets - so what could be this animal hair here on his clothes? 
+ [Continue] -> turn

=== body1_4 ===
Boreas was no small man and the scrapes on his knuckles show that he tried to stop his killer. Just wasn’t fast enough. 
+ [Continue] -> turn

=== body1_5 ===
Inside his closed fist, you’re able to pry open the fingers to see a torn piece of paper. It’s just the corner, but from the small portion you can read, it’s a contract. Or at least, was a contract.
+ [Continue] -> turn

///Crime Scene 1///
=== cs_1_1 ===
For such a large bash in Boreas' head, you thought there would be more blood. The pillows, the sheets... there's only a few drops of blood. 
+ [Continue] -> turn 

=== cs_1_2 ===
You go to sit at a chair in the lounge and notice a smear near the head of the armchair. You look closer and there is some dried blood flecks on the upholstery tacks.  
+ [Continue] -> turn

=== cs_1_3 ===
You're sure next to the fireplace in the lounge there was a poker, but the holder for it is empty.
+ [Continue] -> turn 

=== cs_1_4 ===
The soot around the lounge fireplace look disturbed. Poking around a bit through the ashes, there are bits of a document. You can only make out some of it. It reads like a personal investment contract. What was Boreas personally investing his money in? 
+ [Continue] -> turn 

=== cs_1_5 ===
Most of the potted plants on the train are fake. Maintenance of the type of plants he wanted weren't worth the cost to Boreas. Yet, that one potted plant in the corner is tilted. 
    Stuffed into the fake dirt is a pair of bloody gloves.
+ [Continue] -> turn 

=== cs_1_6 ===
On the floor outside Boreas' sleeper car are scuff marks. Following the stray marks, it leads to the lounge. 
+ [Continue] -> turn 

///Inspect Despoina///
=== inspect_d_1 ===
You stare, perhaps too long, at Despoina's strange bony fingers. How had you not noticed those before? They look like knobby twigs. Despoina tucks her hands into her pockets, perhaps aware of their appearance. Gloves. Wasn't she wearing a pair of gloves?
+ [Continue] -> turn

=== inspect_d_2 ===
Despoina is usually pretty strict about her appearance, but has let some tidying slip. You all have with the night you enjoyed, but her riding pants have something on them. A strange black powder. Soot? 
+ [Continue] -> turn

=== inspect_d_3 ===
No one ever pays any notice of Despoina. She craves attention like a moth to flame, but so often gets left out that maybe that's why she didn't think anyone was taking note of her while she pulled a document out from her jacket. 
    
You only get a quick glimpse before she tucks it away, but it read like a contract for generous sum of money. Signed by Boreas... or at least it was made to look like. 
+ [Continue] -> turn

=== inspect_d_4 ===
Sitting on the sidetable in the lounge is a magazine. Since the books lining the shelves are decorative fakes, this may be the only entertainment on the whole train. You open to an article about business mogul, Demeter as she talks about business practices and raising her daughter, Kore. If Despoina didn't look like the spitting image of Demeter, you would never know she was her own daughter. 
+ [Continue] -> turn

=== inspect_d_5 ===
Watching Despoina desperately try to get Itzlacoliuhqui's attention while acting coy has been absolutely sickening to watch, but you just can't take your eyes away. She clearly doesn't know he's been flirting with all the other eligible women. You're pretty sure he even hit on Shakok. 
+ [Continue] -> turn

=== inspect_d_5_i ===
Despoina stares at you and then looks away as if she can't be bothered, then looks back and stares. Why does she keep staring? Ah, but you know why. She has all the firtatious grace of a lizard. It was more charming when you were drunk. 
+ [Continue] -> turn

=== inspect_d_6 ===
Despoina likes to make her presence known when entering a room. She loves to have all eyes on her. Despite your throbbing headache, you remember her in a heated argument with Boreas in the lounge. 
+ [Continue] -> turn

=== inspect_d_7 ===
The riding boots, the riding outfit... Despoina even wore her custom riding helmet to the party. Who does that? She's so obessed with horses, you've noticed she's even been shedding horse hair. Did she bring one on the train? 
+ [Continue] -> turn

/// Khione Self //////////////////////////////////////////////
=== self_k_1 === 
Crumpled up in your pocket is an abused piece of paper, the creases and folds almost tearing through it from being opened and crumpled again. 
    
It contains a list of chores. A never ending list. Everything from keeping the train running smoothly to menial tasks like making the beds and scrubbing the toilets. The more you did, the more he added. Can't add anything anymore.
+ [Continue] -> turn

=== self_k_2 ===
Tucked away in a small box in the closet you get to call your room is stack of letters. Different names on the return addresses and all far off locations. Each one writes wistfully that they wish you could visit. Maybe now... without the shackle of your father tying you down...
+ [Continue] -> turn

=== self_k_3 === 
A small black key lives on your keychain separate from the others. The study. It goes to the safe in the study. In the study, you open the safe. 

It's stuffed with envelopes. Each one containing details on all of the invitees of the party. Secrets. Secrets that you now remember that you helped collect. Why else would Boreas have invited all these people except to have you go through all their belongings and find the skeletons in their closets? 
+ [Continue] -> turn

=== self_k_4 === 
In the mirror, you glimpse a streak of red on you jaw. A fresh bruise. You can almost see the handprint from the slap. So hard that it left an impression from the ring.
+ [Continue] -> turn

=== self_k_5 === 
You start cleaning up the discarded drink glasses before remembering that you don't have to do his dirty work anymore. You don't have to clean up or serve these rich snobs ever again. You're finally free to be someone more than the person handing out the drinks. 
+ [Continue] -> turn

=== self_k_6 === 
You examine a small notebook in your pocket. At the top of each page is a calendar date with times and details inside it. Even at his own party, he still scheduled business and you had to track it and make sure he made all the deadlines. 
+ [Continue] -> turn

=== self_k_7 === 
Stashed away in the pocket of your jacket is a lump of keys. One for every door on the whole train. You have full access to any room and everything therein. Better to keep those tucked away. 
+ [Continue] -> turn

///Body 2///
=== body2_1 ===
Two gunshots wounds straight to the chest seem to be the most obvious cause of death. Very neat and professional. 
+ [Continue] -> turn

=== body2_2 ===
Hanging on Boreas’ jacket as if it had been snagged somehow is a dazzling ruby earring. As a pair it would be worth a fortune, but the stones alone are worth quite the pretty penny. 
+ [Continue] -> turn

=== body2_3 ===
Near the corners of Boreas’ mouth is a weird dried foam. Could it have been part of his drink? As you get closer, the smell is pungent and acrid. Poison?
+ [Continue] -> turn

=== body2_4 ===
A small notebook, tucked into his jacket, is full of scribbles. The most disorganized ledger imaginable - it’s hard to make out what the payments are for and even what the numbers. You can count the commas, though. And there are a lot of unusually large payments from an “X”. 
+ [Continue] -> turn

=== body2_5 ===
Boreas was right handed and wasn't afraid to hit anyone. You can make out a red tinge on his hand, irritated. Must've fought back. 
+ [Continue] -> turn

///Crime Scene 2////
=== cs_2_1 ===
Most of the potted plants on the train are fake. Maintenance of the type of plants he wanted weren't worth the cost to Boreas. Yet, that one potted plant in the corner is tilted at an odd angle. You inspect it and find stuffed into the fake dirt is a pair of bloody gloves.
+ [Continue] -> turn 

=== cs_2_2 ===
In an unlocked drawer in the study is Boreas' Last Will and Testament. It seems like he's splitting his fortune and company between all of his children... only those that are currently employed with Boreas Transcontinental. Any that left the family business are not eligible to inherit a slice of it. 
+ [Continue] -> turn

=== cs_2_3 ===
The killer must have fled in a hurry and left behind a handkerchief on the floor under the desk chair. 
+ [Continue] -> turn

=== cs_2_4 ===
Knocked over on the desk is Boreas' drink. The booze soaks into some of the documents around it, but a sludge is left behind at the bottom of the glass. Not sugar or egg white... it has a chemical scent.
+ [Continue] -> turn 

=== cs_2_5 ===
Kicked under the desk is the gun! It's a professional glock with a silencer. A killer's best friend. 
+ [Continue] -> turn 

=== cs_2_6 ===
Tossed in the trash can is an empty pill bottle. The pharmaceutical label is almost completely torn off except for a name, "Marzanna". 
+ [Continue] -> turn 

=== cs_2_7 ===
Caught in the drawer of Boreas' desk is a thread of yarn. Perhaps pulled from the killers clothing? 
+ [Continue] -> turn 

///Inspect Khione///
=== inspect_k_1 ===
The moment everyone heard about Boreas' death, you saw Khione throw something away in the trash. You pick it up and read it. It's a list of chores. A long list with everything from scrubbing toilets to meal prep. With this kind of workload, it would be a surprise if Khione had a personal life at all. 
+ [Continue] -> turn

=== inspect_k_2 ===
Stashed away in Boreas' desk is a bundle of opened letters. Written in an angry hand, they accuse Boreas of trapping them into a contract. That they have wasted years of their lives for his profits and now that they want to make a life for themselves, they'll be denied proper payment. There's no stamp or envelopes - there's only one person who would hand deliver their demands to Boreas.
+ [Continue] -> turn

=== inspect_k_3 ===
You watch as Khione sneaks out from the study, her arms heavy with stuffed envelopes. One drops silently as she sneaks away. You open the envelope and find pictures and sensitive documents for a foreign dignitary. Blackmail? Is there an envelope with information on you? 
+ [Continue] -> turn

=== inspect_k_4 ===
Due to the copious amounts of alcohol consumed, everyone has a flush to their face whether red with spirit or green with illness... yet a solitary strange red streak on Khione's face seems angry. A young bruise in the making? 
+ [Continue] -> turn

=== inspect_k_5 ===
Swirling the leftovers in your glass, you contemplate whether you should ever drink again. Or maybe just not drink anything Khione serves up. Now that you think about it. She made everyone's drink and served them. 
+ [Continue] -> turn

=== inspect_k_6 ===
Boreas wasn't the type of business man to actually conduct business. He would fill his calendar with meetings where he looks you in the eye and demands more money. Khione was at every meeting you remember attending with Boreas, helping him get to the next one and ready at his beck and call. 
+ [Continue] -> turn

=== inspect_k_7 ===
Khione moves silently throughout the train which takes skill for someone with such a large key ring. A key to every door, cabinet, and safe. A lot of responsibility... a lot of power. 
+ [Continue] -> turn

/// Ded Moroz Self //////////////////////////////////////////////
=== self_dm_1 === 
After shifting your weight onto the cane, you notice it feels off. A little light? You fiddle with the top and -- fwoop! The handle pulls out to reveal a long steel blade hidden in the cane. 
+ [Continue] -> turn

=== self_dm_2 ===
What's that? Something on your sleeve is bugging you and you reach into your pocket to grab something - your handkerchief. But it's not there. You're sure you had it before the party. 
+ [Continue] -> turn

=== self_dm_3 === 
Tucked away in an inner jacket pocket is a small notebook. You flip through it. Numbers. Dates. Your ledger. Underlined with angry emphasis are a lot of payments to "Boreas Trans." The numbers kept increasing even over the span of a few short months. Boreas always believed that if someone was able to pay, they could always pay more. Good riddance. 
+ [Continue] -> turn

=== self_dm_4 === 
You're seized by a craving and your hands instinctively grab a cigar from a box you stashed in the lounge. A quick flick of the wrist with the match and you're able to scratch your itch. At least you're still able to afford the good ones. 
+ [Continue] -> turn

=== self_dm_5 === 
Shuffling around, you notice clumps of fur being shed by your boots. They weren't top dollar boots, but they should be holding better for the price you paid! Damn those swindler salesmen!
+ [Continue] -> turn

=== self_dm_6 === 
Walking by the game table you see a set of cards dealt on the table. Not a winning hand for the poker game. Not by a long shot. Those numbers laughed at you, just like Boreas had when you failed your bluff. Not laughing now, are you? 
+ [Continue] -> turn

=== self_dm_7 === 
Jingle jingle. Jingle jingle. You are going to kill the saleswoman who convinced you that beaded coats were "in". Sure, it looked good in the store. It looks good now! You look great in anything! But damn does it sound awful. 
+ [Continue] -> turn

///Body 3///
=== body3_1 ===
Multiple blood spots on Boreas' silk shirt indicate the location of maybe seven stab wounds. Someone must have been very angry... not to mention strong enough to get through his sternum. 
+ [Continue] -> turn

=== body3_2 ===
Boreas had hidden his ledger away in the inside of his jacket. While the edges of the pages are stained with his blood, the contents are relatively dry. Not that it makes it easier to understand. The ledger isn't coded, but sloppy and disorganized. Something stands out to you. Ridiculous "admininstrative fees" and "processing fees" are added to vendors until their payments almost double.
+ [Continue] -> turn

=== body3_3 ===
Under the shirt you can see the imprint of a bruise around the stab wounds. The murder weapon must have had a small round hilt.
+ [Continue] -> turn

=== body3_4 ===
Boreas despised animals so her never owned a pet or allowed them near his presence. Yet, on the cuff of his pants and in the folds of his clothes are some animal hairs. Fur maybe? You're not quite sure, but it's definitely not human. 
+ [Continue] -> turn

=== body3_5 ===
A bruise on Boreas' face is about the size of a very large fist. Someone didn't think fists were enough. 
+ [Continue] -> turn

///Crime Scene 3///
=== cs_3_1 ===
Boreas never missed an opportunity to show off his latest expensive purchase. At this party, he was particularly fond of flashing his million dollar wrist watch and gaudy cufflinks. All of which are now missing, including his signature sapphire ring.
+ [Continue] -> turn 

=== cs_3_2 ===
The ashtray on the poker table was knocked over in the scuffle, scattering ashes along the velvet. You aren't able to tell what kind, but someone at the table was smoking. 
+ [Continue] -> turn

=== cs_3_3 ===
Blood pools all around the chair that Boreas died in. So much blood. Too much for the killer to avoid. Large boot prints were left in the blood. 
+ [Continue] -> turn

=== cs_3_4 ===
The chair Boreas sat in has splintered chunks on it. The same placement of the stabs line up - the blade was long enough to go through Boreas and chip the chair. And the killer was angry enough to do it multiple times. 
+ [Continue] -> turn 

=== cs_3_5 ===
Discarded under the table is a balled up handkerchief. Blood is striped on it like it was used to clean up the blade. The killer may still have it with them. 
+ [Continue] -> turn 

=== cs_3_6 ===
Stuck in the blood pool under Boreas' chair are a couple of beads. Since Boreas doesn't have any beads on his clothes, they must have dropped off the killer.
+ [Continue] -> turn 

=== cs_3_7 ===
Shreds of a document are scattered in the pool of blood. Some are stained beyond legibility, but it looks like an invoice. A heavy sum was being demanded, but of who?
+ [Continue] -> turn 

///Inspect Ded Moroz///
=== inspect_dm_1 ===
Ded Moroz has this strange thing that he does when he's bored. You're not even sure that he knows that he does it. He twists the top of his cane, pulls it up an inch - just far enough to see the glint of the steel concealed within - and then drops it back it place and twist locks it. 
+ [Continue] -> turn

=== inspect_dm_2 ===
Ded Moroz samples from the tray of leftovers, spilling escargot on his shirt. He starts to pat down his pockets, looking for something, but ends up using the table cloth to dab at his shirt. 
+ [Continue] -> turn

=== inspect_dm_3 ===
A small booklet on the ground has Ded Moroz's name on it. You flip through it. Numbers. Dates. Your ledger. Underlined with angry emphasis are a lot of payments to "Boreas Trans." The numbers kept increasing even over the span of a few short months. Boreas always believed that if someone was able to pay, they could always pay more.
+ [Continue] -> turn

=== inspect_dm_4 ===
Without gauging his surroundings, Ded Moroz strikes up a match and lights one of his cigars. Awful, foul smelling things. It fills the room almost immediately. 
+ [Continue] -> turn

=== inspect_dm_5 ===
You could follow Ded Moroz anywhere in the train by following the fur his ridiculous boots were shedding.
+ [Continue] -> turn

=== inspect_dm_6 ===
In the hallway outside the game room, you find a playing card. The game must have been pretty heated if cards are flying out into the hall. You remember Boreas playing with Ded Moroz. 
+ [Continue] -> turn

=== inspect_dm_7 ===
Jingle jingle. Jingle jingle. Ded Moroz is wearing a dumb coat that is covered in beads that makes that annoying sound as he walks around. Everywhere he goes, jingle jingle jingle. 
+ [Continue] -> turn

/// Itzlacoliuhqui Self //////////////////////////////////////////////
=== self_i_1 === 
A small lump inside your jacket irritates you. Stashed inside the hem of your jacket in a hidden pocket is a folded piece of paper. The paper is covered in weird symbols. A coded message. The document is hard to parse with the throbbing hang over, but you can make out two things: a demand for a ring... and the printed letterhead - an ornate "Z"... the logo of Zephyr International Transit. 
+ [Continue] -> turn

=== self_i_2 ===
Your jacket slips to the side slightly and you adjust it. A few loose threads peek out from the shoulder seam and you angrily inspect the damage. It all comes back, helping the stumbling drunk Boreas into the lounge from the dining room had been a bad idea. His weight tucked almost completely on the sleeve. Had you known then that he tore your designer jacket... good riddance. 
+ [Continue] -> turn

=== self_i_3 === 
Alone at last in the supply room. If only those women knew you're not really interested in them, not really. Whatever need you had to get close to them, it's no of use to keep up the charade. To scorn them now would bring on too much suspicion, so hiding in the supply room is the best solution for now.
+ [Continue] -> turn

=== self_i_4 === 
Snug under your armpit is your best friend, your trusted sidekick. You check your holster for that warm, friendly grip and... nothing. It's empty. You have to see it to believe it, but your holster is empty. Your gun has been stolen right from under you. If you don't find it quick there will be more dead bodies than just the old man.
+ [Continue] -> turn

=== self_i_5 === 
You check the time on your one-of-a-kind timepiece knowing its worth more than the accessories of everyone on the train. This isn't something you get from just being a pretty face. Your cufflinks alone could pay for an entire train car. These people have fortunes - you're paid in fortunes. Only the best for those in your kind of work.
+ [Continue] -> turn

=== self_i_6 === 
In a flair of boredom, you pull out a pack of thin hand-rolled cigarettes and light one. Just playing with the affect of your breath on the embers on the end. You must look rather mysterious with your face intermittently lit by the glow. You quickly find a dark corner to brood. Perfect. 
+ [Continue] -> turn

=== self_i_7 === 
A tiny bottle secured in your luggage is a lifesaver. While everyone else takes on the stench of nervous energy and fear, you easily walk about with an expertly crafted scent that is as alluring as a sea breeze and lingers like the smell of gunpowder. 
+ [Continue] -> turn

///Body 4///
=== body4_1 ===
Near the corners of Boreas’ mouth is a weird dried foam. Could it have been part of his drink? As you get closer, the smell is pungent and acrid. Poison?
+ [Continue] -> turn

=== body4_2 ===
You expected to find something amiss like in the great novels: a hair, a note, something that would bring about that a-ha moment! But you struggle to see anything amiss. Not even a wrinkle. Perhaps this killer cleaned up after themselves. 
+ [Continue] -> turn

=== body4_3 ===
Boreas never missed an opportunity to show off his latest expensive purchase. At this party, he was particularly fond of flashing his million dollar wrist watch and gaudy cufflinks. The murderer didn't take any of those, but instead just his signature sapphire ring. 
+ [Continue] -> turn

=== body4_4 ===
A small booklet tucked inside Boreas' jacket contains numbers and logs of invoices - his ledger. Scribbled almost illegibly, it's hard to make out any information. A folded document falls out of the pages. It's a letter that Boreas must've intercepted about a new rail line that is being designed in the southwest. The same exact location that Boreas is hastily building his own rail line. Printed on the stationery letter head is an ornate "Z".
+ [Continue] -> turn

=== body4_5 ===
As you get close to the body, a smell overwhelms you. It's not the smell you'd expect a dead body to smell like. Instead of rotting meat, a strange fragrance hovers over the body. 
+ [Continue] -> turn

///Crime Scene 4///
=== cs_4_1 ===
The glass still in Boreas' hand. A thick sludge settles at the bottom of the drink. It wasn't sugar or egg whites. It smells like... chemicals. 
+ [Continue] -> turn 

=== cs_4_2 ===
Tossed in the trash can is an empty pill bottle. The pharmaceutical label is almost completely torn off except for a name, "Marzanna". 
+ [Continue] -> turn

=== cs_4_3 ===
Resting on the arm of the chair is a feather. Nothing from a real bird, this is a synthetic feather made for accessories and decor. Not Boreas' usual style. 
+ [Continue] -> turn

=== cs_4_4 ===
In the lounge fireplace, there are bits of a document still smoldering in the ashes. You pull out the biggest pieces, but it looks to be written in some sort of code. Luckily, at the bottom of one of the documents fragments is a stylized "Z" for the letterhead. 
+ [Continue] -> turn 

=== cs_4_5 ===
The ash tray next to the armchair looks to be emptied, but the smudges at the edge show that there were ashes in it. Someone doesn't want it to be known that they were smoking. 
+ [Continue] -> turn 

=== cs_4_6 ===
Between the dining room and the lounge, strange scuff marks are on the floor. As if Boreas was half dragged from the dining room into the lounge. 
+ [Continue] -> turn 

///Inspect Itzlacoliuhqui///
=== inspect_i_1 ===
Itzlacoliuhqui pulls a document out from his jacket and unfolds it, unaware of you looking over his shoulder. What you could glimpse is a paper covered in weird symbols. A coded message. You think you can figure out a demand for a ring... and the printed letterhead - an ornate "Z"... the logo of Zephyr International Transit. 
+ [Continue] -> turn

=== inspect_i_2 ===
While the party was in full swing, you remember seeing Itzlacoliuhqui helping Boreas walk from the dining room to the lounge. More like dragging with the state that Boreas had in. 
+ [Continue] -> turn

=== inspect_i_3 ===
That smirk painted on Itzlacoliuhqui seems to be so charming, if you hadn't seen him trade it with everyone on the train. Either he is incredibly friendly or there's a reason he wants to get close to everyone.
+ [Continue] -> turn

=== inspect_i_4 ===
Reaching for a bottle of whiskey, you can see Itzlacoliuhqui's jacket open. A shoulder holster hangs from his arm, but it's empty. 
+ [Continue] -> turn

=== inspect_i_5 ===
The playboy will talk non-stop about his business ventures and investments like some number-loving nerd, but you know better. He skates along the surface of what an investor really does and honestly, has way too few grey hairs to be pulling off the deals he brags about. But if he's not being paid by massive dividends, where did he get the money to pay for that expensive time piece and those exquisite cuff links? You don't know anyone who owns emeralds that large!
+ [Continue] -> turn

=== inspect_i_6 ===
There was something about the way that Itzlacoliuhqui smoked that wasn't about the nicotine, it was about setting the stage. The cigarette was just a way to draw attention and keep up the bad boy appearance. 
+ [Continue] -> turn

=== inspect_i_7 ===
You smell it waft into the room before he even enters. It's strange. Like a sea breeze, it draws your attention and awakens nostalgic memories... but it has an unpleasant edge. Like gunpowder. Keeping you wary, but intrigued. 
+ [Continue] -> turn

/// Marzanna Self //////////////////////////////////////////////
=== self_m_1 === 
Your chest grips with panic. Panic! You scramble through your purse to find your pills. Where are your pills? You need your pills! You all but dump out your purse onto the floor of the train car in a feverish state. Your pills are missing! 
+ [Continue] -> turn

=== self_m_2 ===
With every move you make, clang! You reach for another drink, clang! Every moment your purse moves there's an awful noise. You open it up to discover - you've been a busy little bee. Silverware, a gold ash tray, an engraved lighter... even some steak knives. 
+ [Continue] -> turn

=== self_m_3 === 
Adorned like a night sky with stars, beads cover your dress. Which would be fine if your numerous bangles and rings wouldn't keep getting caught in them! You're not sure how many beads have snapped off already, but enough to regret wearing this dress. You can't even take off the bangles or you'll reveal the green marks their cheap metal is leaving on your skin. 
+ [Continue] -> turn

=== self_m_4 === 
Every wealthy business man in the papers has a pipe and so, in order for wealthy people to take you seriously - you needed one! The smoke tastes awful so you really only chew on the end, but you're sure that you look very refined. Almost assuredly. 
+ [Continue] -> turn

=== self_m_5 === 
Something you've never understood about trains is that they have so many walls. Why not have windows so you can see the marvels you pass through? The viewing room at the back of the train with its top-to-bottom windows is your favorite room by far. Just to see the mountains and the valleys as they zip by! You'd have spent the whole party there if you didn't have business to do. 
+ [Continue] -> turn

=== self_m_6 === 
A breeze ruffles the sleeves of your dress and you pull them closer as if they can do anything more than flutter about. Didn't you have something warmer? That knit shawl, the only thing left of your mother. It may have been fraying at the edges, but your mother was the definition of grace and beauty, thus so was her shawl. 
+ [Continue] -> turn

=== self_m_7 === 
The one item in your purse separated from the rest of the rabble in a pocket is a faded photograph. The woman looks exactly like you and wears a shawl around her shoulders. A man holds her, his arms encircling her in a loving embrace. If you squinted just right and pretended that the warm gaze was instead a cruel scowl, the man looked exactly like Boreas. 
+ [Continue] -> turn

///Body 5///
=== body5_1 ===
Sticking out of Boreas' gut is the black hilt of a steak knife... the very same you used to cut your meal in the dining room. Anyone could have had access to them. 
+ [Continue] -> turn

=== body5_2 ===
While the knife plunged all the way to the hilt in Boreas' gut, it doesn't take that much strength to do so - especially with these professionally sharpened Japanese steak knives. 
+ [Continue] -> turn

=== body5_3 ===
Boreas never missed an opportunity to show off his latest expensive purchase. At this party, he was particularly fond of flashing his million dollar wrist watch and gaudy cufflinks. All of which are now missing, including his signature sapphire ring. 
+ [Continue] -> turn

=== body5_4 ===
Tucked away inside a jacket pocket is Boreas' ledger. A veritable gold mine of information completely useless thanks to Boreas' sloppy illegible handwriting. What stands out to you are large sum payments under "alimony". As far as you're aware, Boreas' wife died young and this payment was dated this year. 
+ [Continue] -> turn

=== body5_5 ===
Peeking out from Boreas' closed fist are a few knit threads. It's hard to tell what color they are since the blood has stained them red. 
+ [Continue] -> turn

///Crime Scene 5///
=== cs_5_1 ===
In Boreas' private study, a stack of papers smolder in the fireplace. You shake loose some of the soot and while not a lot is legible, what little snippets you can read have you reaching for a glass of water. They are some very intimate love letters. 
+ [Continue] -> turn 

=== cs_5_2 ===
Boreas' will, discovered in his desk, mentions that upon his death, his assets and company would be divided among his children. All of his children. The will doesn't say only the ones from his wife.
+ [Continue] -> turn

=== cs_5_3 ===
The blood pooling under Boreas' body is smeared, almost as if the killer attempted to drag the body and hide it. With Boreas' bulk, it was no surprise that the killer gave up. 
+ [Continue] -> turn

=== cs_5_4 ===
Tucked under an armchair, a strange prescription bottle glints. The killer may have kicked it during the struggle. The bottle is empty. The pharmaceutical label is almost completely torn off except for an "M". 
+ [Continue] -> turn 

=== cs_5_5 ===
A strange powder on the ground looks like soot, but upon closer inspection you think maybe it's ash? Like from a cigarette or a cigar?
+ [Continue] -> turn 

=== cs_5_6 ===
Dropped in the blood like sprinkles are a few beads. The kind that can be shed from clothing or accessories. They're coated in blood and hard to discern the color.  
+ [Continue] -> turn 

=== cs_5_7 ===
The viewing car has very few places to hide anything. Floor to ceiling windows and only a few chairs, not a lot of furniture. And yet, threads are poking out of a cushion of an armchair. Pulling on them, reveals a bloody knit shawl. 
+ [Continue] -> turn 

///Inspect Marzanna///
=== inspect_m_1 ===
Marzanna leaves her purse unattended for a moment as she enters the powder room. You sneak a peek inside, but the door knob rattles and scares you away. Clutched tightly in your hand, you managed to sneak out a simple small document. A prescription notice from her doctor. Strange... you didn't see any pill or a bottle in her bag. 
+ [Continue] -> turn

=== inspect_m_2 ===
You've noticed Marzanna struggle to carry around her bag with her. By the way the strap digs into her shoulder, it must be carrying something awfully heavy. You wait until she sets it down for a moment to take a look. 

A thief! Everything from silver cutlery to gold ashtrays to an engraved lighter is stuffed into her bag. 
+ [Continue] -> turn

=== inspect_m_3 ===
Tink! A little bead pops off of Marzanna's dress and bounces on the ground. Her thick bangles and heavy necklaces were constantly at war with the beads. The jewlery was winning the war against the beads and her skin. You catch a glimpse every now and then of the greenish hue the fake metal was staining her skin. 
+ [Continue] -> turn

=== inspect_m_4 ===
Marzanna packs her pipe like a child playing pretend. When she lights it, the thick smoke and cheap tabacco smell always clears out whoever else is in the car with her.  
+ [Continue] -> turn

=== inspect_m_5 ===
While the viewing car is the back of the train, you did stumble back there once or twice to use that restroom when the others were in use. And she was there every time, just gawking out the windows like some child in an aquarium. 
+ [Continue] -> turn

=== inspect_m_6 ===
You're no fashion designer, but Marzanna's outfit screams of someone who thinks the wealthy wear what the magazines sell. It checks all the right boxes to look wealthy, but the materials don't drape right. You do remember a half-decent knit shawl that she was wearing looked classically lovely, but unfortunately it seems like that's the one article of clothing she no longer is wearing. 
+ [Continue] -> turn

=== inspect_m_7 ===
Shuffling off into another room, a strange card-like object falls from Marzanna's purse. A faded photograph. The woman looks exactly like Marzanna and wears a shawl around her shoulders. A man holds her, his arms encircling her in a loving embrace. If you squint just right and pretend that the warm gaze was instead a cruel scowl, the man looks exactly like Boreas. 
+ [Continue] -> turn

/// Skadi Self //////////////////////////////////////////////
=== self_sk_1 === 
You're used to the cold, you thrive in the cold... but the fur-lined jacket that is your signature look is somehow not wrapped around you. How will people recognize you as the most accomplished snow sports athlete in the world? You must find it. It's too late now to change your look. 
+ [Continue] -> turn

=== self_sk_2 ===
Crumpled in the pocket of your snow pants is a document. After flattening it out, you read over a response clearly written in Boreas' unforgiving hand and your blood boils again. That bastard thinks he can refuse you? Even when you laid out the profits he would make with the new train line, he demanded more! More! If only a man could be killed more than once!
+ [Continue] -> turn

=== self_sk_3 === 
Tucked away in the inner pocket of your vest is an envelope. Inside is the contract you were going to present to Boreas. Your final offer for the train line to be directed straight to the resort. Something was off about the signature. It looked hesitant and harsh. Not at all like the arrogant swoops and flourishes of the real Boreas signature. Who would know? 
+ [Continue] -> turn

=== self_sk_4 === 
You head to the drink station for a little hair of the dog, but you notice the ice has all melted. Again. You remember the same thing happened last night. No ice. No Khione to fetch some. You had to trudge through the supply room to find the damn ice block and chip away at it yourself. 
+ [Continue] -> turn

=== self_sk_5 === 
A feather drifts past your face as it makes an escape off your headband. What a cheap headband! Feathers littering everywhere. Not something you'll purchase again. 
+ [Continue] -> turn

=== self_sk_6 === 
Poking out from under other magazines in the lounge is the brochure you handed Boreas last night. He tucked it under all this other gossip garbage as if it was worth less. Your brochure for your new resort in the lovely northwest mountains! That man has no taste. 
+ [Continue] -> turn

=== self_sk_7 === 
Ach, your boots! Top of the line ski boots and they have black powder on them! Soot! On your boots! 
+ [Continue] -> turn

///Body 6///
=== body6_1 ===
It doesn't take much to nick an artery. Something skinny and sharp pierced Boreas' neck at just the right spot. He must have bled out in seconds. 
+ [Continue] -> turn

=== body6_2 ===
Boreas despised animals so her never owned a pet or allowed them near his presence. Yet there are short hairs clinging to his clothing and all over. They're definitely not human. 
+ [Continue] -> turn

=== body6_3 ===
Slick with blood, you find Boreas' ledger nestled inside his jacket pocket. Most of the pages are stained and practically illegible. However, the most recent pages are relatively dry. An entry mentions a contract that would create a new rail line to the mountains in the northwest, but it's been scratched out. 
+ [Continue] -> turn

=== body6_4 ===
Boreas' hands have fresh ink stains on the fingers, almost as if he had been writing something when he was killed. 
+ [Continue] -> turn

=== body6_5 ===
Boreas was always quick tempered and would rather argue with his fists that with his words, so it is no surprise when you notice brusing on his knuckles. He lashed out, but it looks like he met his match. 
+ [Continue] -> turn

///Crime Scene 6///
=== cs_6_1 ===
Blood is smeared all over the floor as if the killer tried to clean up, just not well. Despite being in the supply room, the killer didn't use the mop. What else could they have used?
+ [Continue] -> turn 

=== cs_6_2 ===
Boreas' body is slumped in a chair in the dining room, but there are scuff marks on the floor. You follow them toward the kitchen and into the supply room. This must be where he was really killed. 
+ [Continue] -> turn

=== cs_6_3 ===
The towel hamper in the kitchen is white, but there's a little red stain. Could be sauce, but you decide to look through it. How strange. A fur coat. Slick with blood. 
+ [Continue] -> turn

=== cs_6_4 ===
The wood-burning oven is a little warmer than it should be after last night's dinner. You carefully open up the oven and look inside. The wood ashes protected some of the documents from the smoldering coals. You can make out some details from the document. It looks like a contract about a new rail line to the northwest mountains. 
+ [Continue] -> turn 

=== cs_6_5 ===
Blown under a storage shelf, you see a little feather. Is that a chicken feather? You pull it out. The color isn't natural for any real bird. It must be decorative for clothing or accessories. 
+ [Continue] -> turn 

=== cs_6_6 ===
The sticky residue left over from the killer trying to clean up the supply room floor stuck to the killer's boots. Large boot prints stomp about between the supply room and the kitchen. 
+ [Continue] -> turn 

=== cs_6_7 ===
You almost missed it. Dropped with the other dirty dishes in the kitchen. A thin ice pick with just a little bit of blood left on the hilt attempting to hide. Such a small little tool, just to chip ice. 
+ [Continue] -> turn 

///Inspect Skadi///
=== inspect_sk_1 ===
You know Skadi from all the winter althetic magazines. Her picture is everywhere on advertisements for everything from snowshoes to brandy. In every photoshoot, she wears the same fur coat. It's her signature look and the way everyone identifies her in public. You swear the only way you knew it was her at the party was she was wearing it... but she isn't anymore. 
+ [Continue] -> turn

=== inspect_sk_2 ===
A crumpled paper falls from Skadi's pocket and you flatten it out. Everyone can recognize the sloppy, aggresive hand writing of Boreas, but not everyone can read it. His condescending tone is evident before you even start to read. Skadi's request for a new rail line to her up-and-coming resort has been denied. 
+ [Continue] -> turn

=== inspect_sk_3 ===
Skadi sits down in the lounge and takes an envelope out of the inner pocket of her vest. You peek over her shoulder and read the steady type-written print of an official document. It's a contract for the immediate construction of a new rail line to be directed straight to the resort. Something was off about the signature. It looked hesitant and harsh. Not at all like the arrogant swoops and flourishes of the real Boreas signature. 
+ [Continue] -> turn

=== inspect_sk_4 ===
At the bar, Skadi pours herself a whiskey and then grimaces, complaining that it's too warm. You remember she did the same last night. Demanding more ice. Always more ice. Khione got so sick of it that Skadi went to fetch her own ice from the supply room. 
+ [Continue] -> turn

=== inspect_sk_5 ===
The magazines say that Skadi wears the feathered headband as a tribute to the island she grew up in and the birds there. The fake feathers are almost as bad as her fake rags-to-riches story. When her wealthy husband died, she inherited a fortune. 
+ [Continue] -> turn

=== inspect_sk_6 ===
You browse the magazines in the lounge looking for something to entertain you when you come across a colorful brochure stuffed away from view. It's for a new ski resort in the northwest mountains and it has Skadi's brand and image plastered all over it. 
+ [Continue] -> turn

=== inspect_sk_7 ===
Despite the dress code for the party being cocktail attire, Skadi still wore her branded ski outfit complete with boots. If that wasn't bad enough, her boots are leaving black soot throughout the train cars. 
+ [Continue] -> turn

/// Hine-Takurua Self //////////////////////////////////////////////
=== self_ht_1 === 
You twirl, looking at yourself in the reflection in the windows. The feathers fan out from your dress and surround you like graceful falling leaves. Dazzling, simply dazzling. You could look at yourself in the reflection all day. 
+ [Continue] -> turn

=== self_ht_2 ===
A newspaper is folded open on a table in the dining car to a page you recognize. The international news page. The picture features a wealthy political figure, your husband, with another woman on his arm. That tramp! The puff piece about his habits and interests never once mentions his wife. He wouldn’t want to scare his mistress away after all. 
+ [Continue] -> turn

=== self_ht_3 === 
You make a quick break for it when Marzanna enters reeking of cheap tobacco. Just in case, you apply some delicate perfume to your wrists and neck. You don’t want anyone to think that smell is coming from you. Especially such a cheap smell. 
+ [Continue] -> turn

=== self_ht_4 === 
This is the first time you’ve ever seen Boreas host an event without any sort of camera. Where are the cameras? You hung on his arm all night, laughing at his jokes, and dancing when beckoned and yet no one here would be able to humiliate your husband with a photograph. Unacceptable.  
+ [Continue] -> turn

=== self_ht_5 === 
You start to fiddle with your earrings. It’s been a nervous habit you’ve never been able to get rid of. Your husband used to think it was cute or at least that’s what he’d tell you. That’s when you notice it. One is missing! Someone must’ve stolen it. After all, the rubies in them are worth a fortune. 
+ [Continue] -> turn

=== self_ht_6 === 
Stashed away at the bottom of your suitcase is a neat stack of letters. Full of lovelorn drivel from Boreas, just waiting for the moment you leave one lying around for your husband to see. Two can play at this game. 
+ [Continue] -> turn

=== self_ht_7 === 
Two men discreetly stand nearby as you step into the viewing room. Usually you don’t notice your own bodyguards, but they’ve been sticking closer since Boreas’ untimely murder. It’s good to remind everyone that you have well-armed security at the ready.
+ [Continue] -> turn

///Body 7///
=== body7_1 ===
Boreas never missed an opportunity to show off his latest expensive purchase. At this party, he was particularly fond of flashing his million dollar wrist watch and gaudy cufflinks. However, the only thing missing is his signature sapphire ring. 
+ [Continue] -> turn

=== body7_2 ===
Even while he's sleeping, Boreas keeps a ledger on him. The scribbled mess inside makes it difficult to believe this man owned a million dollar railroad company, especially with all the expenses! A receipt tucked into folds is for a pair of ruby earrings worth a small fortune. 
+ [Continue] -> turn

=== body7_3 ===
Despite the silent scream frozen on Boreas' face, his eyes are closed. Perhaps the killer had some regret. It's hard to think anyone on this train would care enough to close his eyes. 
+ [Continue] -> turn

=== body7_4 ===
Boreas always had a rosy glow to his face. Whether it was from drinking too much or indulging too much in his chef's cooking, it always had a warm flush. It's strange to see him now, his pale face not only drained of color, but almost a pale blue. Like someone would look after asphyxiation. 
+ [Continue] -> turn

=== body7_5 ===
It doesn't seem polite to rifle through a dead man's bed sheets, but it ended up being worth it when you pull out a single ruby earring. Who has the matching one?
+ [Continue] -> turn

///Crime Scene 7///
=== cs_7_1 ===
Boreas' room is a treasure trove of information, but you only have a quick moment to look around. The best stuff is under the bed, right? Jackpot! A small bundle of letters are kept in a small box. And boy what letters! The kind that have you reaching for a glass of water. 
    They're not signed, but they have international stamps on the envelopes. 
+ [Continue] -> turn 

=== cs_7_2 ===
It could have easily been overlooked as a down feather from the pillow, but the garish color was obviously not a natural bird feather. It must have fallen off a piece of clothing or accesory. 
+ [Continue] -> turn

=== cs_7_3 ===
A strange stain on the pillow looks more than just drool. Someone pressed it over Boreas' mouth. 
+ [Continue] -> turn

=== cs_7_4 ===
Boreas always had a repulsive smell of booze and stale sweat. But there's an aroma in the air, not only is it pleasant - it's expensive. 
+ [Continue] -> turn 

=== cs_7_5 ===
Boreas is not someone who would easily be suffocated. He would thrash and fight back. Why did the room look relatively clean? But is it? The clock is off, the bedside lamp isn't plugged in... Once you start pulling at the thread, the sweater unravels. The scene was cleaned up. 
+ [Continue] -> turn 

=== cs_7_6 ===
Inside the bedside table drawer is a small box. A velvet box. Boreas doesn't spend money on anyone other than himself and his company and yet, inside the box is a diamond ring. 
+ [Continue] -> turn 

=== cs_7_7 ===
A small bottle of hair gel was cleaned up, the broken bits in the trash, but smears of gel scuff the floors. From the amount of smears it's from multiple boots.  
+ [Continue] -> turn 

///Inspect Hine-Takurua///
=== inspect_ht_1 ===
You nearly bump into Hine-Takurua as she spins in front of her reflection in the windows. Feathers from her dress lift up and float, like feathers escaping a down pillow. Even as you brush by, she continues to immerse herself in her own reflection.
+ [Continue] -> turn

=== inspect_ht_2 ===
You don't really read the newspapers since you prefer listening to the radio, but since there isn't a functioning radio in any of the train cars, you pick up a newspaper on a side table out of boredom. The international news page. The picture features a wealthy political figure with another woman on his arm. That's Hine-Takurua's wealthy political husband... but that woman is not Hine-Takurua! The puff piece about his habits and interests never once mentions his own wife. Maybe you should read newspapers more often. 
+ [Continue] -> turn

=== inspect_ht_3 ===
You catch a mouthful of Hine-Takurua's perfume as she liberally applies it without noticing you behind her. While lovely, it smells overwhelmingly sweet. As you stumble away and gasp for fresh air by the windows, you wonder if it's similar in the way those fly eating plants smell lovely to attract their prey. In small doses, that perfume would lure in many an interested prey. 
+ [Continue] -> turn

=== inspect_ht_4 ===
The huge wedding ring glints on Hine-Takurua's finger, yet you remember that same hand draped over Boreas' arm... draped on his waist... and if your hungover mind isn't mistaken, caressing his backside. If she wanted to start a scandal, she was doing very well. 
+ [Continue] -> turn

=== inspect_ht_5 ===
Hine-Takurua fiddles with her earring, a stunning ruby statement set. Except... when she turns her head you can see that she only has one. The other earring must have slipped out. The stones alone must be worth a fortune. 
+ [Continue] -> turn

=== inspect_ht_6 ===
You watch as Hine-Takurua emerges from her room in the sleeping car and strolls down the hallway without closing the room to her door. You slip in, just for a moment, to get a glimpse of what she might be hiding. Under the bed, in a little box is a bound set of letters. You read the first one and immediately flee the room toward the dining car. 

The words haunt you as you pour a strong drink. That handwriting was unmistakable - it could only have been written by Boreas - but the words were those of a man long out of practice in writing love letters if he had any practice at all. Perhaps words would have been bad enough, but the man decided to try out his art skills. You pour another drink. 
+ [Continue] -> turn

=== inspect_ht_7 ===
Two men constantly circle around Hine-Takurua like guard dogs. They've become even more insufferable since Boreas' body was found. One even has his jacket unbuttoned in order to display his gun and holster as a casual threat. 
+ [Continue] -> turn

/// Shakok Self //////////////////////////////////////////////
=== self_sh_1 === 
You find yourself in the study trying to find the dining car to refill your beverage. This door isn’t usually open and not many people are even allowed inside, but you know this room. It brings along with it memories of heated debates and anger. He never listened. 
+ [Continue] -> turn

=== self_sh_2 ===
There are very few creature comforts that you care for. While cosmetics are not something you usually purchase, you make an exception for a specific coconut oil hand lotion that has saved your skin from the bitter winter dryness. 
+ [Continue] -> turn

=== self_sh_3 === 
You must have walked the whole train at least a dozen times by now. While you would never keep original documents in your briefcase, you know there was something important in it you couldn’t let fall into the wrong hands. Perhaps someone stole it for that very reason. 
+ [Continue] -> turn

=== self_sh_4 === 
The utmost important documents are always kept on your person. You open the small notebook tucked away inside your jacket just to look at the numbers. Order. Structure. That’s what numbers provide you. Dozens of companies are tracked with their finances. Near the end of the list, red numbers disrupt the order. Boreas Transcontinental. 
+ [Continue] -> turn

=== self_sh_5 === 
You pull a sliver of embossed card stock out from your pocket. It’s your business card. Shakok Investments - 100 Successful Businesses and Counting. 
+ [Continue] -> turn

=== self_sh_6 === 
One of the guests rudely bumped into you, causing you to spill a little of your drink on your pants. When you reach for your handkerchief, you only find an empty pocket. 
+ [Continue] -> turn

=== self_sh_7 === 
This train is filthy - what is Boreas spending all that money on? You have sticky floorboards, stained upholstery and - look! - soot on your shoes! Absolutely disgraceful. 
+ [Continue] -> turn

///Body 8///
=== body8_1 ===
The stab wound on Boreas' body is rather small and thin. The options for what it could be would have been innumerable except that the letter opener sits on the desk as if on display. It looks like someone cleaned it, but a flect of red can be seen in the groove of the design on the handle. 
+ [Continue] -> turn

=== body8_2 ===
Tucked away in an inside pocket of Boreas' jacket is a small booklet. His ledger. Inside are scribbles and logs of illegible transactions. Rumors had been going around that Boreas Transcontinental was hemmoraging money from bad deals and investments, but Boreas' own ledger shows a modest profit. 
+ [Continue] -> turn

=== body8_3 ===
At the tips of Boreas' hands, a black ink dries. Perhaps he was taking some notes before he died? Or drafted up a document? 
+ [Continue] -> turn

=== body8_4 ===
A piece of paper peeks out between the gaps in his clenched fist. You gently pull it free, but only have a slice of a document. The tone of the partial section of document is very harsh and corporate. One word in particular stands out. "Audit". 
+ [Continue] -> turn

///Crime Scene 8///
=== cs_8_1 ===
A crispy black sheet of paper curls up on the ground. The killer must've used the candle to burn it and let it smolder before stomping it out. You hold it up to the light, trying to see if anything is discernable. It's almost completely destroyed except you can see some numbers. Big numbers. 
+ [Continue] -> turn 

=== cs_8_2 ===
In one of the drawers of the desk is a handkerchief. Streaks of dried blood on it indicate that the killer must have used it to clean something. A blade perhaps?
+ [Continue] -> turn

=== cs_8_3 ===
Lying Boreas' open safe is his Last Will and Testament. All of his assests and company will be split up among all of his children. And named as the executor of the will is Shakok. 
+ [Continue] -> turn

=== cs_8_4 ===
Something smells strangely familiar. It reminds you of that vacation you took to the tropical islands in the west. Sipping straight from coconuts and glistening at the edge of the surf under the sun. 
+ [Continue] -> turn 

=== cs_8_5 ===
A thin letter opener rests on Boreas' desk. Mainly decorative since Boreas never opened his mail or lifted a finger for anything other than drink and money, you notice a little bit of dried blood in the decorative grooves. 
+ [Continue] -> turn 

=== cs_8_6 ===
Boreas always had a love for large coats. Perhaps he liked to stay warm or maybe he loved being able to say he spent an exorbitant amount on so much bear fur. Either way, his coat his so large, it completely obscured the bulky briefcase he must have fallen on top of. 
+ [Continue] -> turn 

///Inspect Shakok///
=== inspect_sh_1 ===
Not many people are allowed in Boreas' study. You always assumed it was because he liked to create an air of mystery around his business. In reality, it was probably to hide the fact he didn't really conduct business at all. 

Yet, you remember hearing Shakok's voice loud and clear coming from the study with Boreas. They were shouting about numbers and finance. Or something similarly boring. It's not like it was memorable. 
+ [Continue] -> turn

=== inspect_sh_2 ===
In all, Shakok looks like an average business man. Buttoned up suit, neat appearance, but when you stand near him, you smell the aroma of a tropical vacation. Coconut and shea butter. 
+ [Continue] -> turn

=== inspect_sh_3 ===
A memory from last night springs back into your mind. Shakok had a briefcase he dragged around with him and you joked that if he wasn't going to leave it in his room that he should handcuff it to his wrists so he'd have both hands free. He had not found the joke amusing. 
+ [Continue] -> turn

=== inspect_sh_4 ===
While the train cars warm up in the afternoon heat, Shakok removes his jacket for a moment and leaves it draped on a chair. You take this time to search the pockets. You open the small notebook tucked away inside your jacket just to look at the numbers. Dozens of companies are tracked with their finances. Near the end of the list, red numbers disrupt the order. Boreas Transcontinental. 
+ [Continue] -> turn

=== inspect_sh_5 ===
Shakok dresses like a businessman, talks like a businessman, and seems to only care for numbers... like a businessman. But a business card on Boreas' desk with Shakok's business logo on it confirms it. Shakok Investments - 100 Successful Businesses and Counting. 
+ [Continue] -> turn

=== inspect_sh_6 ===
One of the only bits of color Shakok had on his person was a small handkerchief he had tucked away in his pocket. Shakok wipes up a dab of condensation from his drink with a napkin and you notice that little glimmer of color is gone. 
+ [Continue] -> turn

=== inspect_sh_7 ===
Shakok's shoes are so well polished and such a serious shade of black, that you wouldn't have noticed the slight powdering of soot on the shoes if it weren't for the intense glare from the sunlight outside the window. The shoes didn't have that same blinding shine to them they had before. 
+ [Continue] -> turn

/// Naneh Sarma Self //////////////////////////////////////////////
=== self_ns_1 === 
Your hands continue to move in smooth, uninterrupted motions as you knit. From the outside, no one can really tell what it is you are making. Is it part of a sweater? A hat? A scarf? The stitches look irregular and strange, but you know better. And so do those that need to know. 
+ [Continue] -> turn

=== self_ns_2 ===
Your knitting bag is full of strange small projects. A glove missing two fingers, a hat too big for any head, a sock with two toes, but strangely no balls of yarn. They’re not meant to be worn. Those irregular stitches and imperfections are a code. One that only someone in the close inner circle can decipher. 
+ [Continue] -> turn

=== self_ns_3 === 
While you did indulge in a little brandy during the festivities, enough to cloud your memory, you prefer the taste of tea. One of your attendants brings you a fresh cup and as they lean forward, you can see the gun holstered under their arm. Ahhh… Persian Chai. Your favorite. 
+ [Continue] -> turn

=== self_ns_4 === 
While many see beads as a fashion statement, to you, the large clunky beads on your knitting bag pose a different function: security. It’s very difficult to steal a bag that sounds like a wind chime in a violent storm.  
+ [Continue] -> turn

=== self_ns_5 === 
That terrible smoke from the lounge is picking up again and you reach for your handkerchief to cover your mouth and nose, but it’s not there! It wasn’t expensive enough to be stolen, so maybe it has been misplaced. Or it fell out of your pocket in a rare moment where you decided to walk about. 
+ [Continue] -> turn

=== self_ns_6 === 
You don’t write anything down as a rule. You’re not that sloppy. But you knit and the cardigan that you wear has been getting longer and longer over the years, accumulating more and more of those irregular stitches. To a clever enough eye, to your eye, one can read years and years of invoices and sensitive information, but no one on this train is smart enough to decipher it. 
+ [Continue] -> turn

=== self_ns_7 === 
Click, clack. Click, clack go the long steel knitting needles in your hand. They just don’t make them like they used to. The new plastic ones wouldn’t even be able to puncture skin. 
+ [Continue] -> turn

///Body 9///
=== body9_1 ===
Boreas wasn't a paranoid man, but he was difficult to surprise. Always wary and nosy, preferring to know anything and everything he could. Yet somehow, someone got the drop on him and bashed his head in from behind with something large. 
+ [Continue] -> turn

=== body9_2 ===
Boreas had tucked away his ledger inside his jacket pocket, but the real security was his terrible handwriting. Without knowing what you're looking for, the scribbles created a distracting mess of information. On the most recent pages, there are large deposits made under "alternative shipping fees". 
+ [Continue] -> turn

=== body9_3 ===
In Bores' pocket is a small knit hair tie. The stitches on it are irregular and uneven. He must have had this on him for a reason. Maybe it was a message? 
+ [Continue] -> turn

=== body9_4 ===
Boreas always had a thick skin and thick skull. Just bashing him on the head wasn't enough to guarantee his death. Underneath his jacket, right over his heart, is a single bullet hole. Someone wanted to make sure he wouldn't recover. 
+ [Continue] -> turn

=== body9_5 ===
Something falls to the floor when you pat down Boreas' jacket. It rolls away, but you catch it before it rolls under display case. It looks to be a bead of some sort. 
+ [Continue] -> turn

///Crime Scene 9///
=== cs_9_1 ===
If you hadn't zoned out for a moment, trying to collect your thoughts, you may not have noticed the bloody string with a curious loop partially hidden by the baseboard. 
+ [Continue] -> turn 

=== cs_9_2 ===
Something on the ground glints and catches your attention. It's not the kind of glint from light hitting something like glass. This was a rather expensive glint. A sparkle. You kneel down and see on the ground a very expensive ruby earring! Your position almost exactly matches that of Boreas. Perhaps this was the last thing he had seen. 
+ [Continue] -> turn

=== cs_9_3 ===
Many people come and go through this hallway as they transition between different train cars, yet there are quite a few boot prints through the blood that must have been while it was fresh. 
+ [Continue] -> turn

=== cs_9_4 ===
How strange. You notice a handkerchief wedged somehow between a floorboard. How could this be? You pull up on the handkerchief and the floor board lifts. Inside is a small empty alcove, big enough for a couple of small boxes or even a large suitcase. The construction of it doesn't look like it was part of the original train. 
+ [Continue] -> turn 

=== cs_9_5 ===
Hidden by Boreas' large bear fur jacket is a bullet wound. You almost could have missed it since there's so little blood coming out of it. Someone wanted to make sure that the job got done. 
+ [Continue] -> turn 

=== cs_9_6 ===
A sturdy gentleman's briefcase rests on top of Boreas' body with blood on the corner, exactly where it would have hit Boreas if it had fallen from the luggage rack in the hallway. The briefcase is locked by an eight digit combination lock so you can't check what is inside, but it's definitly heavy enough to knock someone out. 
+ [Continue] -> turn 

///Inspect Naneh Sarma///
=== inspect_ns_1 ===
She never stops knitting. You can't really tell what it is Naneh Sarma is making. Is it part of a sweater? A hat? A scarf? The stitches look irregular and strange. You'd think if she never stops knitting that she would be actually good at it. 
+ [Continue] -> turn

=== inspect_ns_2 ===
During one of Naneh Sarma's naps, you take a look inside her knitting bag. It's full of strange small projects. A glove missing two fingers, a hat too big for any head, a sock with two toes, but strangely no extra yarn. Once she finishes a project, she unwinds one of the old projects and starts over. They're never worn.  

You squint at the irregular stitches and imperfections. Could it be a code?
+ [Continue] -> turn

=== inspect_ns_3 ===
Naneh Sarma may be old and fragile, but the two men helping her are very far from helpless. In fact, you think you saw one had an ankle holster. 
+ [Continue] -> turn

=== inspect_ns_4 ===
Naneh Sarma keeps her knitting bag close to her. An obnoxious amount of beads stitched into the fabric act as an alarm whenever it shifts weight. What could be inside?
+ [Continue] -> turn

=== inspect_ns_5 ===
Her motor controls aren't what they used to be, so Naneh Sarma often has a few spills to clean up. A little bit of brandy got on her skirt from last night, but then she had a handkerchief to mop up the mess. Now, one of her assistants uses a napkin to help clear up the Persian Chai spilled on the table. 
+ [Continue] -> turn

=== inspect_ns_6 ===
The more you look at Naneh Sarma, the more the little old lady facade chips away. That same irregular stitching pattern is present on her cardigan. Different colors of yarn that are seemingly strange an ecclectic may be a code or information. Unlike her bag full of strange projects, she only ever adds on to her cardigan. Could this be a ledger of sorts?
+ [Continue] -> turn

=== inspect_ns_7 ===
Naneh Sarma's needles catch the light as rhythmically follows an unknown pattern. Thin, sharp looking steel needles. 
+ [Continue] -> turn

/// Murderer Reveal //////////////////////////////////////////////
=== murderer_reveal ===

//// murderer reveal needs to change if the murderer guesses correctly themselves

{
    - murder == 1 && accuse == 1: 
       Despoina howls with rage. "He wouldn't give me what I deserve, so I gave him what he did!" 
       
       Despoina had tried to convince Boreas to invest in her new business: horse rentals - a new way to ride! Horses would be rented out to people as quick travel to other transit, such as a train, and get dropped off. Those without carriages or taxi fare could rent a horse to ride for a fee. 
       
       He laughed at her. The same laugh her mother gave her and the same laugh her sister joined in. They all laughed. Well, there was one way to stop his laughing. One poker. One swing. 
       
       Setting him up in the bedroom was more difficult than she had thought, but that was supposed to throw off the trail. And you still managed to catch her. 
        -> END
    - murder == 2 && accuse == 2:  
        Khione seethes. "If any of you were in my place, you would have done the same!"
        
        According to Boreas' will, no child of his could inherit from his death if they weren't working for his business. Most of her siblings had ambition and dreams of their own, so they went off in the world. 
        
        Khione stayed. And how did Boreas repay her? By working her to the bone. Every task was shoved off to her and he ignored her pleas for more staff. More staff meant more on the payroll. 
        
        Finally, Khione had enough. She wanted to see the world while she still could. But she had spent her life working for him, working for his business. She even ran his blackmail side business when she would steal incriminating evidence from clients in the sleeping cars. She earned every penny of that inheritance! 
        
        Not according to Boreas and that stupid will. That's when Khione set it up. A crime with so much evidence pointing in every direction, no one would know it was her. 
        
        Instead of working until Boreas died, she'd kill Boreas in order to stop working. And she almost got away with it too.
        -> END
    - murder == 3 && accuse == 3:  
        Ded Moroz pulls out the concealed sword and waves it about. "If anyone here wanted Boreas' to live, they can be the first to challenge me!" 
        
        Boreas had always charged Ded Moroz more than what he thought was fair, but back then when they both were just starting their businesses, he saw it as a way to support Boreas. 
        
        But Boreas started to get greedy. The more payments Ded Moroz was able to pay, the higher the price got. It was getting to the point where it was bleeding Ded Moroz's business dry and leaving him will little left. 
        
        Meanwhile, Boreas Transcontinental had muscled out almost all the competition. Ded Moroz was desperate. He begged Boreas to lower his fees and be reasonable. 
        
        Boreas sneered and told him that if he couldn't pay, it proved he wasn't a good businessman. 
        
        But Ded Moroz proved that he was still good with a sword. 
        -> END
    - murder == 4 && accuse == 4: 
        Itzlacoliuhqui shrugs. "It's just business." 
        
        His business? A trained assassin. He only takes the high profile ones and this included a party invitation so he was ready and willing. 
        
        A gun seemed too obvious, so he stole the pills from Marzanna to drug Boreas' drink. He took the ring to prove the job was done for those that hired him: Zephyr International Transit. Boreas' main competitor. 
        -> END
    - murder == 5 && accuse == 5: 
        Marzanna sobs. "I didn't mean to! He wouldn't listen!" 
        
        Boreas met his first love in his hometown before he made it big. She was left behind when he started moving with a wealthier crowd, but he didn't know he left her with a daughter. Not until the letters asking for money came in. 
        
        At first Boreas was sending very generous checks, but as Marzanna grew older, Boreas stopped all together. When her mother got sick and died, she thought she might finally meet her father at the funeral... but he never showed. 
        
        While digging through her mother's old mail, Marzanna found an alimony check. She reached out to Boreas begging to at least meet. That's when she received the invitation. 
        
        She wasn't interested in his money at first, but when he got angry about needing to rewrite his will to write her out, she snapped. Maybe she was hoping if he was dead, she'd never know just how much like her father she was. 
        -> END
    - murder == 6 && accuse == 6: 
        Skadi scowls. "If he had just done what I asked, this wouldn't have needed to happen." 
        
        Skadi had many ski resports. The best ski resports, in fact. But this one, her new one being planned in the northwest mountains was going to be the crown jewel of ski resorts. 
        
        Boreas already had a main arterial train line nearby, it would have been a simple enough task to make a new one to the base of the mountain and have the gondola bring the visitors up. Wealthy visitors. 
        
        No matter how many times she ran the numbers, Boreas' quote was just too high. It was going to cost more than the construction of her whole resort! Ridiculous! 
        
        Boreas wouldn't budge. "If you really want it, you'll come up with the money." Zephyr International Transit didn't have any rail lines close enough to be feasbile. She was desperate. 
        
        When he dipped into the supply closet to take a whole bottle of booze for a party trick, Skadi tried her luck to get him to agree in his inebriated state. Even blackout drunk, he was still a greed jerk. 
        
        He can't contest a forged signature if he's dead, right? And she needed that rail line. 
        -> END
    - murder == 7 && accuse == 7: 
        Hine Takurua wipes away at forced tears with the edge of her sleeve. "It's not my fault, he was just no longer useful to me."  
        
        Hine Takurua married her husband for everything but love. He had political power, wealth, and easy on the eyes. It was a perfect match for a while, an easy enough ruse to maintain. She could easily play the part of doting wife when she wore the latest fashions and traveled the world on his dime. 
        
        But love would have kept her in luxury. As her looks started to fade and their romance was no longer the talk of newspapers, he found someone new who would get his name in the paper and on everyone's lips. 
        
        That nasty skank! Instead of bowing out, Hine Takurua doubled down. If he wanted scandal, that's what he would get. She started meeting with powerful, wealthy men and making sure she was seen with them. She wanted him to notice her again.
        
        Instead, she got the notice of someone else. Boreas didn't see the game, he only saw her attention, that fool! He even proposed! Can you imagine? Boreas wasn't even half the man Hine Takurua's husband was. So he had to go. 
        -> END
    - murder == 8 && accuse == 8: 
        Shakok checks his watch. "I did what I had to in order to save a good business."
        
        Shakok had never backed a bad business. He had a great eye for spotting talent and could tell when a small buisiness would make it big. 
        
        He was the first investor into Boreas Transcontinental. Boreas had a knack for getting what he wanted, which was necessary in the cut throat business of railroads. 
        
        The more Boreas Transcontinental grew, so did the profits. Shakok at first was proud, but then the numbers didn't add up. They kept growing. There wasn't a time where Boreas recorded a single loss. 
        
        Shakok started requesting receipts for shipments and logs and always got the same answers. "It's in the mail." "I'll have Khione send it." "Let me update them first." 
        
        When he received the invite, Shakok knew this would be his moment to confront Boreas. His private train had all his documents. The truth was in his reach. 
        
        And it was much worse than he thought. The only way to collect on the loss at this point was to kill Boreas and liquidate his company to pay off all the debt. 
        
        And Shakok never backed a bad business.
        -> END
    - murder == 9 && accuse == 9: 
        Naneh Sarma doesn't even look up from her knitting. "No one else had the backbone to do it." 
        
        Sweet, sweet Naneh Sarma was great a knitting and bringing people together. While a sweater could fetch the right price or a pair of gloves could help the needy, she wanted to do something else with her skills. 
        
        During the war, she had read of secret messages and codes used in espionage. From this idea, she created her knitting code. Not just in the stitches, but she used the type of clothing, size, and shapes. 
        
        It started with messages to friends, but she quickly realized it had potential. Her nephew needed a new radio? She would get her friend in a shipping company to let her know those times and she would relay the information. 
        
        Suddenly, her business grew. All she did was run the communications, but suddenly many were interested in information that wasn't legible by authorities and could easily be unraveled into a ball of yarn. 
        
        When Boreas caught onto her smuggling business being run on his trains, instead of reporting them to the police, he started charging her fees. At first, it was fine. It almost made it look like Boreas had hired her to steal from his clients, but then the fees grew. 
        
        Then they finally outgrew his value and she rigged a suitcase to fall on him, luring him with the ruby earring. And shot for good measure. 
        -> END
    - else: 
    
    /// make the dialogue different if self guesses self incorrectly
    {
        - accuse == 1: 
            Despoina reels back. "Me? A killer? You're crazy!" 
            + [Return] -> turn
        - accuse == 2: 
            Khione laughs. "You think I did this? If I had, you would never know." 
            + [Return] -> turn
        - accuse == 3:
            Ded Moroz scoffs. "How insulting! I would never!" 
            + [Return] -> turn
        - accuse == 4: 
            Itzlacoliuhqui shrugs. "I barely knew the guy. Why would I do it?" 
            + [Return] -> turn
        - accuse == 5: 
            Marzanna sobs. "Me? I couldn't! I wouldn't!"
            + [Return] -> turn
        - accuse == 6: 
            Skadi growls. "I wouldn't kill scum like Boreas even if I was paid. He's not worth it." 
            + [Return] -> turn
        - accuse == 7: 
            Hine Takurua gasps. "Me? I'll have you sued for libel!" 
            + [Return] -> turn
        - accuse == 8: 
            Shakok stifles a yawn. "Are you done messing around? Maybe accuse the real killer."
            + [Return] -> turn
        - else: 
            Naneh Sarma doesn't even look up from her knitting. "I don't think you're much of a detective. Maybe try something else?" 
            + [Return] -> turn
    }

}
