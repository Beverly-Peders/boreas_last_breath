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

/// Should I put a thing at the beginning {variable <= X} then they can do the action, but if all the actions FOR THEM are taken, they can't? 
/// Can I use char_turn-name?? Can that somehow make it so that I can make sure that only that person's options are taken? 

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
            - {not body1_1} -> body1_1
            - {not body1_2} -> body1_2
        }
    - murder == 2:
        {shuffle: 
            - {not body2_1} -> body2_1
            - {not body2_2} -> body2_2
        }
    - else: 
        something fucked up 
        -> turn
}

=== inspect_crime_scene ===

{ 
    - murder == 1: 
        {shuffle: 
            - {not cs_1_1} -> cs_1_1
            - {not cs_1_2} -> cs_1_2
        }
    - murder == 2:
        {shuffle: 
            - {not cs_2_1} -> cs_2_1
            - {not cs_2_2} -> cs_2_2
        }
    - else: 
        something fucked up 
        -> turn
}

=== inspect_others ===

{
    - inspect == 1: 
        { shuffle: 
                    - {not inspect_d_1} ->  inspect_d_1
                    - {not inspect_d_2} ->  inspect_d_2
        }
    - inspect == 2:
        { shuffle: 
                    - {not inspect_k_1} -> inspect_k_1
                    - {not inspect_k_2} -> inspect_k_2
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
Body 1 1
+ [Continue] -> turn

=== body1_2 ===
Body 1 2
+ [Continue] -> turn

///Body 2 //////////////////////////////////////////////
=== body2_1 ===
Body 2 1
+ [Continue] -> turn

=== body2_2 ===
Body 2 1
+ [Continue] -> turn

///Crime Scene 1 //////////////////////////////////////////////
=== cs_1_1 ===
CS 1 1 
+ [Continue] -> turn 

=== cs_1_2 ===
CS 1 2 
+ [Continue] -> turn

///Crime Scene 2 //////////////////////////////////////////////
=== cs_2_1 ===
CS 2 1 
+ [Continue] -> turn 

=== cs_2_2 ===
CS 2 2 
+ [Continue] -> turn

///Inspect Desponia //////////////////////////////////////////////
=== inspect_d_1 ===
I D 1 
+ [Continue] -> turn

=== inspect_d_2 ===
I D 2 
+ [Continue] -> turn

///Inspect Khione //////////////////////////////////////////////
=== inspect_k_1 ===
I K 1 
+ [Continue] -> turn

=== inspect_k_2 ===
I K 2 
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
