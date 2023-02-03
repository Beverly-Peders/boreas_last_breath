VAR desponia = 0 
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

Boreas Invitation. -> character_selection

=== character_selection ===

Please select the {first|second|third|fourth|fifth|sixth|seventh|eighth|ninth} character: 
*   [Desponia]
    ~ desponia = character
    ~ character += 1
    -> character_selection
*   [Khione]
    ~ khione = character
    ~ character += 1
    -> character_selection
*   [Ded Moroz]
    ~ ded_moroz = character
    ~ character += 1
    -> character_selection
*   [Itzlacoliuhqui]
    ~ itzlacoliuhqui = character
    ~ character += 1
    -> character_selection
*   [Marzanna]
    ~ marzanna = character
    ~ character += 1
    -> character_selection
*   [Skadi]
    ~ skadi = character
    ~ character += 1
    -> character_selection
*   [Hine-Takurua]
    ~ hine_takurua = character
    ~ character += 1
    -> character_selection
*   [Shakok]
    ~ shakok = character
    ~ character += 1
    -> character_selection
*   [Naneh Sarma]
    ~ naneh_sarma = character
    ~ character += 1
    -> character_selection
*   [Continue]
    -> npcs 

=== npcs ===
VAR npc = 9
~ npc -= character

Would you like to add NPCs? 
*   {character < 10}[Yes] -> add_npc
*   [No] -> setup 

=== add_npc ===

Please select your NPCs: 
*   {desponia == 0} [Desponia]
    ~ desponia = npc
    ~ npc += 1
    -> add_npc
*   {khione == 0} [Khione]
    ~ khione = npc
    ~ npc += 1
    -> add_npc
*   {ded_moroz == 0} [Ded Moroz]
    ~ ded_moroz = npc
    ~ npc += 1
    -> add_npc
*   {itzlacoliuhqui == 0} [Itzlacoliuhqui]
    ~ itzlacoliuhqui = npc
    ~ npc += 1
    -> add_npc
*   {marzanna == 0} [Marzanna]
    ~ marzanna = npc
    ~ npc += 1
    -> add_npc
*   {skadi == 0} [Skadi]
    ~ skadi = npc
    ~ npc += 1
    -> add_npc
*   {hine_takurua == 0} [Hine-Takurua]
    ~ hine_takurua = npc
    ~ npc += 1
    -> add_npc
*   {shakok == 0} [Shakok]
    ~ shakok = npc
    ~ npc += 1
    -> add_npc
*   {naneh_sarma == 0} [Naneh Sarma]
    ~ naneh_sarma = npc
    ~ npc += 1
    -> add_npc
*   [Continue]
    -> setup 


=== setup ===
VAR killer_selection = 0
VAR killer = ""
VAR murder = 0
~ killer_selection = RANDOM(1,npc)

{ 
    - desponia == killer_selection: 
        ~ killer = "Desponia"
        ~ murder = 1
        -> murder_scene
    - khione == killer_selection: 
        ~ killer = "Khione"
        ~ murder = 2
        -> murder_scene
    - ded_moroz == killer_selection: 
        ~ killer = "Ded Moroz"
        ~ murder = 3
        -> murder_scene
    - itzlacoliuhqui == killer_selection:
        ~ killer = "Itzlacoliuhqui"
        ~ murder = 4
        -> murder_scene
    - marzanna == killer_selection: 
        ~ killer = "Marzanna"
        ~ murder = 5
        -> murder_scene
    - skadi == killer_selection:
        ~ killer = "Skadi"
        ~ murder = 6
        -> murder_scene
    - hine_takurua == killer_selection:
        ~ killer = "Hine Takurua"
        ~ murder = 7
        -> murder_scene
    - shakok == killer_selection: 
        ~ killer = "Shakok"
        ~ murder = 8
        -> murder_scene
    - else: 
        ~ killer = "Naneh Sarma"
        ~ murder = 9
        -> murder_scene
}

-> turn

=== turn ===
VAR char_turn_name = ""

{
    - character_turn == desponia:
        ~ character_turn += 1
        ~ char_turn_name = "Desponia"
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

{
    - murder == 1: 
    Desponia 
    -> turn 
    - murder == 2: 
    Khione 
    -> turn 
    - murder == 3: 
    Ded Moroz 
    -> turn 
    - murder == 4: 
    Itzlacoliuhqui 
    -> turn 
    - murder == 5: 
    Marzanna 
    -> turn 
    - murder == 6: 
    Skadi 
    -> turn 
    - murder == 7: 
    Hine Takurua 
    -> turn 
    - murder == 8: 
    Shakok 
    -> turn 
    - else: 
    Naneh Sarma
    -> turn 
}
    
=== gameplay ===
VAR accuse = 0 
VAR inspect = 0
{murder}
{char_turn_name}'s Turn

+   [Inspect Self] -> inspect_self
+   [Inspect Body] -> inspect_body
+   [Inspect Crime Scene] -> inspect_crime_scene
+   [Inspect Others]
    Who would you like to inspect?
    **  {desponia > 0}[Desponia]
        ~ inspect = 1 
        -> inspect_others
    **  {khione > 0}[Khione]
        ~ inspect = 2
        -> inspect_others
    **  {ded_moroz > 0}[Ded Moroz]
        ~ inspect = 3
        -> inspect_others
    **  {itzlacoliuhqui > 0}[Itzlacoliuhqui]
        ~ inspect = 4
        -> inspect_others
    **  {marzanna > 0}[Marzanna]
        ~ inspect = 5
        -> inspect_others
    **  {skadi > 0}[Skadi]
        ~ inspect = 6
        -> inspect_others
    **  {hine_takurua > 0}[Hine Takurua]
        ~ inspect = 7
        -> inspect_others
    **  {shakok > 0} [Shakok]
        ~ inspect = 8
        -> inspect_others
    **  {naneh_sarma > 0} [Naneh Sarma]
        ~ inspect = 9
        -> inspect_others
+   [Solve the Crime!]
    Who do you think murdered Boreas?
    **  {desponia > 0}[Desponia]
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
    - char_turn_name == "Desponia": 
        {shuffle: 
                    - {not self_d_1} -> self_d_1 
                    - {not self_d_2} -> self_d_2
                    - {not self_d_3} -> self_d_3
                    - {not self_d_4} -> self_d_4
                    - {not self_d_5} -> self_d_5
                    - {not self_d_6} -> self_d_6
                    - {not self_d_7} -> self_d_7
        }
    - char_turn_name == "Khione":
        {shuffle: 
                    - {not self_k_1} -> self_k_1 
                    - {not self_k_2} -> self_k_2
                    - {not self_k_3} -> self_k_3
                    - {not self_k_4} -> self_k_4
                    - {not self_k_5} -> self_k_5
                    - {not self_k_6} -> self_k_6
                    - {not self_k_7} -> self_k_7
        }
    - char_turn_name == "Ded Moroz": 
        {shuffle: 
                    - {not self_dm_1} -> self_dm_1 
                    - {not self_dm_2} -> self_dm_2
                    - {not self_dm_3} -> self_dm_3
                    - {not self_dm_4} -> self_dm_4
                    - {not self_dm_5} -> self_dm_5
                    - {not self_dm_6} -> self_dm_6
                    - {not self_dm_7} -> self_dm_7
        }
    - char_turn_name == "Itzlacoliuhqui": 
        {shuffle: 
                    - {not self_i_1} -> self_i_1 
                    - {not self_i_2} -> self_i_2
                    - {not self_i_3} -> self_i_3
                    - {not self_i_4} -> self_i_4
                    - {not self_i_5} -> self_i_5
                    - {not self_i_6} -> self_i_6
                    - {not self_i_7} -> self_i_7
        }
    - char_turn_name == "Marzanna": 
        {shuffle: 
                    - {not self_m_1} -> self_m_1 
                    - {not self_m_2} -> self_m_2
                    - {not self_m_3} -> self_m_3
                    - {not self_m_4} -> self_m_4
                    - {not self_m_5} -> self_m_5
                    - {not self_m_6} -> self_m_6
                    - {not self_m_7} -> self_m_7
        }
    - char_turn_name == "Skadi": 
        {shuffle: 
                    - {not self_sk_1} -> self_sk_1 
                    - {not self_sk_2} -> self_sk_2
                    - {not self_sk_3} -> self_sk_3
                    - {not self_sk_4} -> self_sk_4
                    - {not self_sk_5} -> self_sk_5
                    - {not self_sk_6} -> self_sk_6
                    - {not self_sk_7} -> self_sk_7
        }
    - char_turn_name == "Hine-Takurua": 
        {shuffle: 
                    - {not self_ht_1} -> self_ht_1 
                    - {not self_ht_2} -> self_ht_2
                    - {not self_ht_3} -> self_ht_3
                    - {not self_ht_4} -> self_ht_4
                    - {not self_ht_5} -> self_ht_5
                    - {not self_ht_6} -> self_ht_6
                    - {not self_ht_7} -> self_ht_7
        }
    - char_turn_name == "Shakok": 
        {shuffle: 
                    - {not self_sk_1} -> self_sk_1 
                    - {not self_sk_2} -> self_sk_2
                    - {not self_sk_3} -> self_sk_3
                    - {not self_sk_4} -> self_sk_4
                    - {not self_sk_5} -> self_sk_5
                    - {not self_sk_6} -> self_sk_6
                    - {not self_sk_7} -> self_sk_7
        }
    - char_turn_name == "Naneh Sarma": 
        {shuffle: 
                    - {not self_ns_1} -> self_ns_1 
                    - {not self_ns_2} -> self_ns_2
                    - {not self_ns_3} -> self_ns_3
                    - {not self_ns_4} -> self_ns_4
                    - {not self_ns_5} -> self_ns_5
                    - {not self_ns_6} -> self_ns_6
                    - {not self_ns_7} -> self_ns_7
        }
    - else:
        Something Fucked Up 
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
            - -> body1_6
            - -> body1_7
        }
    - murder == 2:
        {shuffle: 
            - -> body2_1
            - -> body2_2
            - -> body2_3
            - -> body2_4
            - -> body2_5
            - -> body2_6
            - -> body2_7
        }
    - murder == 3:
        {shuffle: 
            - -> body3_1
            - -> body3_2
            - -> body3_3
            - -> body3_4
            - -> body3_5
            - -> body3_6
            - -> body3_7
        }
    - murder == 4:
        {shuffle: 
            - -> body4_1
            - -> body4_2
            - -> body4_3
            - -> body4_4
            - -> body4_5
            - -> body4_6
            - -> body4_7
        }
    - murder == 5:
        {shuffle: 
            - -> body5_1
            - -> body5_2
            - -> body5_3
            - -> body5_4
            - -> body5_5
            - -> body5_6
            - -> body5_7
        }
    - murder == 6:
        {shuffle: 
            - -> body6_1
            - -> body6_2
            - -> body6_3
            - -> body6_4
            - -> body6_5
            - -> body6_6
            - -> body6_7
        }
    - murder == 7:
        {shuffle: 
            - -> body7_1
            - -> body7_2
            - -> body7_3
            - -> body7_4
            - -> body7_5
            - -> body7_6
            - -> body7_7
        }
    - murder == 8:
        {shuffle: 
            - -> body8_1
            - -> body8_2
            - -> body8_3
            - -> body8_4
            - -> body8_5
            - -> body8_6
            - -> body8_7
        }
    - murder == 9:
        {shuffle: 
            - -> body9_1
            - -> body9_2
            - -> body9_3
            - -> body9_4
            - -> body9_5
            - -> body9_6
            - -> body9_7
        }
    - else: 
        something fucked up 
        -> turn
}

=== inspect_crime_scene ===

{ 
    - murder == 1: 
        {shuffle: 
            - -> cs_1_1
            - -> cs_1_2
            - -> cs_1_3
            - -> cs_1_4
            - -> cs_1_5
            - -> cs_1_6
            - -> cs_1_7
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
            - -> cs_3_5
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
            - -> cs_4_7
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
            - -> cs_6_1
            - -> cs_6_2
            - -> cs_6_3
            - -> cs_6_4
            - -> cs_6_5
            - -> cs_6_6
            - -> cs_6_7
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
            - -> cs_8_5
            - -> cs_8_6
            - -> cs_8_7
        }
    - murder == 9:
        {shuffle: 
            - -> cs_9_1
            - -> cs_9_2
            - -> cs_9_3
            - -> cs_9_4
            - -> cs_9_5
            - -> cs_9_6
            - -> cs_9_7
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
                    - ->  inspect_d_5
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
                    - ->  inspect_ht_6
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
                    - ->  inspect_ns_6
                    - ->  inspect_ns_7
        }
    - else:
        Something Fucked Up
        -> turn 
        
}

/// Desponia Self //////////////////////////////////////////////
=== self_d_1 === 
D1 - Missing gloves
+ [Continue] -> turn

=== self_d_2 ===
D2 - Soot on pants 
+ [Continue] -> turn

=== self_d_3 ===
D3 - Forged contract
+ [Continue] -> turn

=== self_d_4 ===
D4 - Correspondence w/ fam 
+ [Continue] -> turn

=== self_d_5 ===
D5 - Flirting with Itzla 
+ [Continue] -> turn

=== self_d_6 ===
D6 - Seen in lounge with Boreas 
+ [Continue] -> turn

=== self_d_7 ===
D7 - Horse hair 
+ [Continue] -> turn

/// Khione Self //////////////////////////////////////////////
=== self_k_1 === 
K1 - List of chores
+ [Continue] -> turn

=== self_k_2 ===
K2 - Correspondence
+ [Continue] -> turn

=== self_k_3 === 
K3 - Blackmail (for each individual?) 
+ [Continue] -> turn

=== self_k_4 === 
K4 - Seen everywhere
+ [Continue] -> turn

=== self_k_5 === 
K5 - Served drinks
+ [Continue] -> turn

=== self_k_6 === 
K6 - Knew Boreas' schedule
+ [Continue] -> turn

=== self_k_7 === 
K7 - Has keys to all the rooms
+ [Continue] -> turn

/// Ded Moroz Self //////////////////////////////////////////////
=== self_dm_1 === 
DM1 - Concealed sword in cane
+ [Continue] -> turn

=== self_dm_2 ===
DM2 - Correspondence w/ Boreas
+ [Continue] -> turn

=== self_dm_3 === 
DM3 - Invoices / ledger
+ [Continue] -> turn

=== self_dm_4 === 
DM4 - Cigars
+ [Continue] -> turn

=== self_dm_5 === 
DM5 - Animal fur boots
+ [Continue] -> turn

=== self_dm_6 === 
DM6 - Seen playing cards with Boreas
+ [Continue] -> turn

=== self_dm_7 === 
DM7 - SOMETHING
+ [Continue] -> turn

/// Itzlacoliuhqui Self //////////////////////////////////////////////
=== self_i_1 === 
I1 - Coded correspondence with Zephyr 
+ [Continue] -> turn

=== self_i_2 ===
I2 - Seen helping B into the lounge
+ [Continue] -> turn

=== self_i_3 === 
I3 - Flirting with everyone
+ [Continue] -> turn

=== self_i_4 === 
I4 - Missing gun, empty holster
+ [Continue] -> turn

=== self_i_5 === 
I5 - Very expensive accessories 
+ [Continue] -> turn

=== self_i_6 === 
I6 - Smokes cigarettes
+ [Continue] -> turn

=== self_i_7 === 
I7 - SOMETHING
+ [Continue] -> turn

/// Marzanna Self //////////////////////////////////////////////
=== self_m_1 === 
M1 - Missing pills, bottle
+ [Continue] -> turn

=== self_m_2 ===
M2 - Purse full of stolen items
+ [Continue] -> turn

=== self_m_3 === 
M3 - Clothing covered in beads 
+ [Continue] -> turn

=== self_m_4 === 
M4 - Fate gemstone jewelry
+ [Continue] -> turn

=== self_m_5 === 
M5 - Seen gawking in the viewing room 
+ [Continue] -> turn

=== self_m_6 === 
M6 - Love letter between mother and Boreas
+ [Continue] -> turn

=== self_m_7 === 
M7 - Old photograph of mother and Boreas?
+ [Continue] -> turn

/// Skadi Self //////////////////////////////////////////////
=== self_sk_1 === 
SK1 - Missing fur coat 
+ [Continue] -> turn

=== self_sk_2 ===
SK2 - Correspondence 
+ [Continue] -> turn

=== self_sk_3 === 
SK3 - Forged contract 
+ [Continue] -> turn

=== self_sk_4 === 
SK4 - Went to restock beverages from supply room?
+ [Continue] -> turn

=== self_sk_5 === 
SK5 - Feather accessories in hair 
+ [Continue] -> turn

=== self_sk_6 === 
SK6 - SOMETHING
+ [Continue] -> turn

=== self_sk_7 === 
SK7 - SOMETHING
+ [Continue] -> turn

/// Hine-Takurua Self //////////////////////////////////////////////
=== self_ht_1 === 
HT1 - Bird feathers on outfit 
+ [Continue] -> turn

=== self_ht_2 ===
HT2 - Newspaper clippings about husband 
+ [Continue] -> turn

=== self_ht_3 === 
HT3 - Perfume 
+ [Continue] -> turn

=== self_ht_4 === 
HT4 - Seen hanging on Boreas' arm 
+ [Continue] -> turn

=== self_ht_5 === 
HT5 - Has gems bought by Boreas (in ledger) 
+ [Continue] -> turn

=== self_ht_6 === 
HT6 - Love letters 
+ [Continue] -> turn

=== self_ht_7 === 
HT7 - SOMETHING
+ [Continue] -> turn

/// Shakok Self //////////////////////////////////////////////
=== self_sh_1 === 
SH1 - Seen shouting with Boreas about finances 
+ [Continue] -> turn

=== self_sh_2 ===
SH2 - Executor of the will 
+ [Continue] -> turn

=== self_sh_3 === 
SH3 - Missing briefcase?
+ [Continue] -> turn

=== self_sh_4 === 
SH4 - Ledger shows that Boreas is lying 
+ [Continue] -> turn

=== self_sh_5 === 
SH5 - Correspondence 
+ [Continue] -> turn

=== self_sh_6 === 
SH6 - Ink on hands 
+ [Continue] -> turn

=== self_sh_7 === 
SH7 - SOMETHING 
+ [Continue] -> turn

/// Naneh Sarma Self //////////////////////////////////////////////
=== self_ns_1 === 
NS1 - Yarn
+ [Continue] -> turn

=== self_ns_2 ===
NS2 - Correspondence 
+ [Continue] -> turn

=== self_ns_3 === 
NS3 - Helpers are packing heat 
+ [Continue] -> turn

=== self_ns_4 === 
NS4 - Beads on her knitting bag 
+ [Continue] -> turn

=== self_ns_5 === 
NS5 - Missing something? 
+ [Continue] -> turn

=== self_ns_6 === 
NS6 - SOMETHING - glasses?
+ [Continue] -> turn

=== self_ns_7 === 
NS7 - SOMETHING
+ [Continue] -> turn

///Body 1 //////////////////////////////////////////////
=== body1_1 ===
Body11 - Dent in skull
+ [Continue] -> turn

=== body1_2 ===
Body12 - Ink on fingers
+ [Continue] -> turn

=== body1_3 ===
Body13 - Animal hair on body 
+ [Continue] -> turn

=== body1_4 ===
Body14 - Perfume on body 
+ [Continue] -> turn

=== body1_5 ===
Body15 - Ledger
+ [Continue] -> turn

=== body1_6 ===
Body16
+ [Continue] -> turn

=== body1_7 ===
Body17
+ [Continue] -> turn

///Body 2 //////////////////////////////////////////////
=== body2_1 ===
Body21 - Gunshot wound
+ [Continue] -> turn

=== body2_2 ===
Body22 - Foam at mouth (poison)
+ [Continue] -> turn

=== body2_3 ===
Body23 - Perfume
+ [Continue] -> turn

=== body2_4 ===
Body24 - Ledger
+ [Continue] -> turn

=== body2_5 ===
Body25
+ [Continue] -> turn

=== body2_6 ===
Body26
+ [Continue] -> turn

=== body2_7 ===
Body27
+ [Continue] -> turn

///Body 3 //////////////////////////////////////////////
=== body3_1 ===
Body31 - Stab wound through the body 
+ [Continue] -> turn

=== body3_2 ===
Body32 - Multiple stabs
+ [Continue] -> turn

=== body3_3 ===
Body33 - Small bruises from the hilt
+ [Continue] -> turn

=== body3_4 ===
Body34 - Expensive items stolen off body
+ [Continue] -> turn

=== body3_5 ===
Body35 - Ledger
+ [Continue] -> turn

=== body3_6 ===
Body36 - Perfume
+ [Continue] -> turn

=== body3_7 ===
Body37
+ [Continue] -> turn

///Body 4 //////////////////////////////////////////////
=== body4_1 ===
Body41 - Foam at mouth, poison
+ [Continue] -> turn

=== body4_2 ===
Body42 - Expertly cleaned
+ [Continue] -> turn

=== body4_3 ===
Body43 - Planted feather 
+ [Continue] -> turn

=== body4_4 ===
Body44 - Ledger
+ [Continue] -> turn

=== body4_5 ===
Body45 - Perfume
+ [Continue] -> turn

=== body4_6 ===
Body46
+ [Continue] -> turn

=== body4_7 ===
Body47
+ [Continue] -> turn

///Body 5 //////////////////////////////////////////////
=== body5_1 ===
Body51 - Cheap beads in the folds of his clothes
+ [Continue] -> turn

=== body5_2 ===
Body52 - Stabbed, knife in body 
+ [Continue] -> turn

=== body5_3 ===
Body53 - Expensive items stolen off body 
+ [Continue] -> turn

=== body5_4 ===
Body54 - Ledger
+ [Continue] -> turn

=== body5_5 ===
Body55 - Perfume
+ [Continue] -> turn

=== body5_6 ===
Body56
+ [Continue] -> turn

=== body5_7 ===
Body57
+ [Continue] -> turn

///Body 6 //////////////////////////////////////////////
=== body6_1 ===
Body61 - Stabbed with sharp blade - ice pick
+ [Continue] -> turn

=== body6_2 ===
Body62 - Animal hair 
+ [Continue] -> turn

=== body6_3 ===
Body63 - Ledger
+ [Continue] -> turn

=== body6_4 ===
Body64 - Perfume
+ [Continue] -> turn

=== body6_5 ===
Body65
+ [Continue] -> turn

=== body6_6 ===
Body66
+ [Continue] -> turn

=== body6_7 ===
Body67
+ [Continue] -> turn

///Body 7 //////////////////////////////////////////////
=== body7_1 ===
Body71 - Wedding ring in box
+ [Continue] -> turn

=== body7_2 ===
Body72 - Ledger 
+ [Continue] -> turn

=== body7_3 ===
Body73 - Perfume
+ [Continue] -> turn

=== body7_4 ===
Body74 - Smothed by pillow
+ [Continue] -> turn

=== body7_5 ===
Body75 - Lipstick 
+ [Continue] -> turn

=== body7_6 ===
Body76
+ [Continue] -> turn

=== body7_7 ===
Body77
+ [Continue] -> turn

///Body 8 //////////////////////////////////////////////
=== body8_1 ===
Body81 - Ledger
+ [Continue] -> turn

=== body8_2 ===
Body82 - Letter opener murder weapon
+ [Continue] -> turn

=== body8_3 ===
Body83
+ [Continue] -> turn

=== body8_4 ===
Body84
+ [Continue] -> turn

=== body8_5 ===
Body85
+ [Continue] -> turn

=== body8_6 ===
Body86
+ [Continue] -> turn

=== body8_7 ===
Body87
+ [Continue] -> turn

///Body 9 //////////////////////////////////////////////
=== body9_1 ===
Body91 - Smashed head
+ [Continue] -> turn

=== body9_2 ===
Body92 - Ledger
+ [Continue] -> turn

=== body9_3 ===
Body93 - Perfume
+ [Continue] -> turn

=== body9_4 ===
Body94 - Shot to make sure he was dead - profession
+ [Continue] -> turn

=== body9_5 ===
Body95
+ [Continue] -> turn

=== body9_6 ===
Body96
+ [Continue] -> turn

=== body9_7 ===
Body97
+ [Continue] -> turn

///Crime Scene 1 //////////////////////////////////////////////
=== cs_1_1 ===
CS11 - Not a lot of blood on the bed
+ [Continue] -> turn 

=== cs_1_2 ===
CS12 - Chair has been cleaned in the lounge
+ [Continue] -> turn

=== cs_1_3 ===
CS13 - Firepoker is missing
+ [Continue] -> turn 

=== cs_1_4 ===
CS14 - Documents burned in the fireplace
+ [Continue] -> turn 

=== cs_1_5 ===
CS15 - Flower pot looks weird - bloody gloves stashed into it
+ [Continue] -> turn 

=== cs_1_6 ===
CS16 - Scuff marks on the floor
+ [Continue] -> turn 

=== cs_1_7 ===
CS17
+ [Continue] -> turn 

///Crime Scene 2 //////////////////////////////////////////////
=== cs_2_1 ===
CS21 - Bloody gloves in the flower pot
+ [Continue] -> turn 

=== cs_2_2 ===
CS22 - Boreas' will
+ [Continue] -> turn

=== cs_2_3 ===
CS23 - Killed in the study
+ [Continue] -> turn

=== cs_2_4 ===
CS24 - Drugs in drink
+ [Continue] -> turn 

=== cs_2_5 ===
CS25 - Gun left behind
+ [Continue] -> turn 

=== cs_2_6 ===
CS26 - Empty pill bottle
+ [Continue] -> turn 

=== cs_2_7 ===
CS27
+ [Continue] -> turn 

///Crime Scene 3 //////////////////////////////////////////////
=== cs_3_1 ===
CS31 - Killed at poker table
+ [Continue] -> turn 

=== cs_3_2 ===
CS32 - Ash from cigar? Cigarette?
+ [Continue] -> turn

=== cs_3_3 ===
CS33 - Large shoe print in blood 
+ [Continue] -> turn

=== cs_3_4 ===
CS34
+ [Continue] -> turn 

=== cs_3_5 ===
CS35
+ [Continue] -> turn 

=== cs_3_6 ===
CS36
+ [Continue] -> turn 

=== cs_3_7 ===
CS37
+ [Continue] -> turn 

///Crime Scene 4 //////////////////////////////////////////////
=== cs_4_1 ===
CS41 - Poisoned drink
+ [Continue] -> turn 

=== cs_4_2 ===
CS42 - Empty pill bottle
+ [Continue] -> turn

=== cs_4_3 ===
CS43 - Prints wiped from drinking glass
+ [Continue] -> turn

=== cs_4_4 ===
CS44 - 
+ [Continue] -> turn 

=== cs_4_5 ===
CS45
+ [Continue] -> turn 

=== cs_4_6 ===
CS46
+ [Continue] -> turn 

=== cs_4_7 ===
CS47
+ [Continue] -> turn 

///Crime Scene 5 //////////////////////////////////////////////
=== cs_5_1 ===
CS51 - Body on floor of the viewing car 
+ [Continue] -> turn 

=== cs_5_2 ===
CS52 - Will
+ [Continue] -> turn

=== cs_5_3 ===
CS53 - Based on the blood spatter, someone tried to move him
+ [Continue] -> turn

=== cs_5_4 ===
CS54
+ [Continue] -> turn 

=== cs_5_5 ===
CS55
+ [Continue] -> turn 

=== cs_5_6 ===
CS56
+ [Continue] -> turn 

=== cs_5_7 ===
CS57
+ [Continue] -> turn 

///Crime Scene 6 //////////////////////////////////////////////
=== cs_6_1 ===
CS61 - Supplies with ice pick 
+ [Continue] -> turn 

=== cs_6_2 ===
CS62 - Scuff marks
+ [Continue] -> turn

=== cs_6_3 ===
CS63 - Lounge
+ [Continue] -> turn

=== cs_6_4 ===
CS64 - Burned contract in fireplace
+ [Continue] -> turn 

=== cs_6_5 ===
CS65
+ [Continue] -> turn 

=== cs_6_6 ===
CS66
+ [Continue] -> turn 

=== cs_6_7 ===
CS67
+ [Continue] -> turn 

///Crime Scene 7 //////////////////////////////////////////////
=== cs_7_1 ===
CS71 - Love letters
+ [Continue] -> turn 

=== cs_7_2 ===
CS72 - Bird feather from outfit
+ [Continue] -> turn

=== cs_7_3 ===
CS73
+ [Continue] -> turn

=== cs_7_4 ===
CS74
+ [Continue] -> turn 

=== cs_7_5 ===
CS75
+ [Continue] -> turn 

=== cs_7_6 ===
CS76
+ [Continue] -> turn 

=== cs_7_7 ===
CS77
+ [Continue] -> turn 

///Crime Scene 8 //////////////////////////////////////////////
=== cs_8_1 ===
CS81 - Study 
+ [Continue] -> turn 

=== cs_8_2 ===
CS82 - Bloody cloth stashed into a drawer 
+ [Continue] -> turn

=== cs_8_3 ===
CS83
+ [Continue] -> turn

=== cs_8_4 ===
CS84
+ [Continue] -> turn 

=== cs_8_5 ===
CS85
+ [Continue] -> turn 

=== cs_8_6 ===
CS86
+ [Continue] -> turn 

=== cs_8_7 ===
CS87
+ [Continue] -> turn 

///Crime Scene 9 //////////////////////////////////////////////
=== cs_9_1 ===
CS91 - String 
+ [Continue] -> turn 

=== cs_9_2 ===
CS92 - Something on the ground to lure him in 
+ [Continue] -> turn

=== cs_9_3 ===
CS93 - Different/multiple footprints
+ [Continue] -> turn

=== cs_9_4 ===
CS94
+ [Continue] -> turn 

=== cs_9_5 ===
CS95
+ [Continue] -> turn 

=== cs_9_6 ===
CS96
+ [Continue] -> turn 

=== cs_9_7 ===
CS97
+ [Continue] -> turn 

///Inspect Desponia //////////////////////////////////////////////
=== inspect_d_1 ===
ID1 - Missing gloves
+ [Continue] -> turn

=== inspect_d_2 ===
ID2 - Soot on pants 
+ [Continue] -> turn

=== inspect_d_3 ===
ID3 - Forged contract 
+ [Continue] -> turn

=== inspect_d_4 ===
ID4 - Correspondence with fam 
+ [Continue] -> turn

=== inspect_d_5 ===
ID5 - Flirting with Itzla 
+ [Continue] -> turn

=== inspect_d_6 ===
ID6 - Seen in lounge with Boreas
+ [Continue] -> turn

=== inspect_d_7 ===
ID7 - Horse hair 
+ [Continue] -> turn

///Inspect Khione //////////////////////////////////////////////
=== inspect_k_1 ===
IK1 - List of chores
+ [Continue] -> turn

=== inspect_k_2 ===
IK2 - Correspondence
+ [Continue] -> turn

=== inspect_k_3 ===
IK3 - Blackmail 
+ [Continue] -> turn

=== inspect_k_4 ===
IK4 - Seen everywhere
+ [Continue] -> turn

=== inspect_k_5 ===
IK5 - Served drinks 
+ [Continue] -> turn

=== inspect_k_6 ===
IK6 - Knew B's schedule
+ [Continue] -> turn

=== inspect_k_7 ===
IK7 - Has keys to all rooms
+ [Continue] -> turn

///Inspect Ded Moroz //////////////////////////////////////////////
=== inspect_dm_1 ===
IDM1 - Concealed sword in cane 
+ [Continue] -> turn

=== inspect_dm_2 ===
IDM2 - Correspondence with Boreas
+ [Continue] -> turn

=== inspect_dm_3 ===
IDM3 - Invoices / Ledger 
+ [Continue] -> turn

=== inspect_dm_4 ===
IDM4 - Cigars 
+ [Continue] -> turn

=== inspect_dm_5 ===
IDM5 - Animal fur boots 
+ [Continue] -> turn

=== inspect_dm_6 ===
IDM6 - Seen playing cards with Boreas 
+ [Continue] -> turn

=== inspect_dm_7 ===
IDM7
+ [Continue] -> turn

///Inspect Itzlacoliuhqui //////////////////////////////////////////////
=== inspect_i_1 ===
II1 - Coded correspondence with Zephyr
+ [Continue] -> turn

=== inspect_i_2 ===
II2 - Seen helping B into lounge 
+ [Continue] -> turn

=== inspect_i_3 ===
II3 - Flirting with everyone
+ [Continue] -> turn

=== inspect_i_4 ===
II4 - Missing gun, empty holster
+ [Continue] -> turn

=== inspect_i_5 ===
II5 - Very exepnsive accesories 
+ [Continue] -> turn

=== inspect_i_6 ===
II6 - Cigarettes
+ [Continue] -> turn

=== inspect_i_7 ===
II7 
+ [Continue] -> turn

///Inspect Marzanna //////////////////////////////////////////////
=== inspect_m_1 ===
IM1 - Missing pills / bottle
+ [Continue] -> turn

=== inspect_m_2 ===
IM2 - Purse full of stolen items 
+ [Continue] -> turn

=== inspect_m_3 ===
IM3 - Clothing covered in beads 
+ [Continue] -> turn

=== inspect_m_4 ===
IM4 - Fate gemstone jewelry 
+ [Continue] -> turn

=== inspect_m_5 ===
IM5 - Seen gawking in viewing room 
+ [Continue] -> turn

=== inspect_m_6 ===
IM6 - Love letters between mother/Boreas
+ [Continue] -> turn

=== inspect_m_7 ===
IM7 - Old photograph of mother/Boreas
+ [Continue] -> turn

///Inspect Skadi //////////////////////////////////////////////
=== inspect_sk_1 ===
ISK1 - Missing fur coat
+ [Continue] -> turn

=== inspect_sk_2 ===
ISK2 - Correspondence 
+ [Continue] -> turn

=== inspect_sk_3 ===
ISK3 - Forged contract 
+ [Continue] -> turn

=== inspect_sk_4 ===
ISK4 - Went to get ice from supply room
+ [Continue] -> turn

=== inspect_sk_5 ===
ISK5 - Feather accessories in hair 
+ [Continue] -> turn

=== inspect_sk_6 ===
ISK6 
+ [Continue] -> turn

=== inspect_sk_7 ===
ISK7
+ [Continue] -> turn

///Inspect Hine-Takurua //////////////////////////////////////////////
=== inspect_ht_1 ===
IHT1 - Bird feathers on outfit 
+ [Continue] -> turn

=== inspect_ht_2 ===
IHT2 - Newspaper clippings about husband 
+ [Continue] -> turn

=== inspect_ht_3 ===
IHT3 - Perfume
+ [Continue] -> turn

=== inspect_ht_4 ===
IHT4 - Seen handing on Boreas' arm 
+ [Continue] -> turn

=== inspect_ht_5 ===
IHT5 - Has gems bought by Boreas (ledger)
+ [Continue] -> turn

=== inspect_ht_6 ===
IHT6 - Love letters
+ [Continue] -> turn

=== inspect_ht_7 ===
IHT7 
+ [Continue] -> turn

///Inspect Shakok //////////////////////////////////////////////
=== inspect_sh_1 ===
ISH1 - Seen shouting with Boreas about finances 
+ [Continue] -> turn

=== inspect_sh_2 ===
ISH2 - Executor of the will
+ [Continue] -> turn

=== inspect_sh_3 ===
ISH3 - Missing briefcase
+ [Continue] -> turn

=== inspect_sh_4 ===
ISH4 - Ledger 
+ [Continue] -> turn

=== inspect_sh_5 ===
ISH5 - Correspondence 
+ [Continue] -> turn

=== inspect_sh_6 ===
ISH6 - Ink on hands 
+ [Continue] -> turn

=== inspect_sh_7 ===
ISH7
+ [Continue] -> turn

///Inspect Naneh Sarma //////////////////////////////////////////////
=== inspect_ns_1 ===
INS1 - Yarn
+ [Continue] -> turn

=== inspect_ns_2 ===
INS2 - Correspondence 
+ [Continue] -> turn

=== inspect_ns_3 ===
INS3 - Helpers are packing heat 
+ [Continue] -> turn

=== inspect_ns_4 ===
INS4 - Beads on her knitting bag 
+ [Continue] -> turn

=== inspect_ns_5 ===
INS5 - Missing something?
+ [Continue] -> turn

=== inspect_ns_6 ===
INS6
+ [Continue] -> turn

=== inspect_ns_7 ===
INS7
+ [Continue] -> turn

/// Murderer Reveal //////////////////////////////////////////////

=== murderer_reveal ===

{
    - murder == 1 && accuse == 1: 
        Desponia 
        -> END
    - murder == 2 && accuse == 2:  
        Khione 
        -> END
    - murder == 3 && accuse == 3:  
        Ded Moroz 
        -> END
    - murder == 4 && accuse == 4: 
        Itzlacoliuhqui
        -> END
    - murder == 5 && accuse == 5: 
        Marzanna 
        -> END
    - murder == 6 && accuse == 6: 
        Skadi
        -> END
    - murder == 7 && accuse == 7: 
        Hine Takurua 
        -> END
    - murder == 8 && accuse == 8: 
        Shakok
        -> END
    - murder == 9 && accuse == 9: 
        Naneh Sarma
        -> END
    - else: 
    {
        - accuse == 1: 
            Desponia innocent
            + [Return] -> gameplay
        - accuse == 2: 
            Khione innocent
            + [Return] -> gameplay
        - accuse == 3: 
            Ded Moroz innocent
            + [Return] -> gameplay
        - accuse == 4: 
            Itzlacoliuhqui innocent
            + [Return] -> gameplay
        - accuse == 5: 
            Marzanna innocent
            + [Return] -> gameplay
        - accuse == 6: 
            Skadi innocent
            + [Return] -> gameplay
        - accuse == 7: 
            Hine Takurua innocent
            + [Return] -> gameplay
        - accuse == 8: 
            Shakok innocent
            + [Return] -> gameplay
        - else: 
            Naneh Sarma innocent
            + [Return] -> gameplay
            
    }

}
 
    -> END
