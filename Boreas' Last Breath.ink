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
        { 
            - murder == 1:
                { shuffle: 
                    - {not self_d_m_1} -> self_d_m_1 
                    - {not self_d_m_2} -> self_d_m_2
                }
            - else: 
                { shuffle: 
                    - {not self_d_1} -> self_d_1 
                    - {not self_d_2} -> self_d_2
                }
        }
    - char_turn_name == "Khione":
        { 
            - murder == 2:
                { shuffle: 
                    - {not self_k_m_1} -> self_k_m_1 
                    - {not self_k_m_2} -> self_k_m_2
                }
            - else: 
                { shuffle: 
                    - {not self_k_1} -> self_k_1 
                    - {not self_k_2} -> self_k_2
                }
        }
    - else:
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
        { 
            - murder == 1:
                { shuffle: 
                    - {not inspect_d_m_1} -> inspect_d_m_1
                    - {not inspect_d_m_2} -> inspect_d_m_2
                }
            - else: 
                { shuffle: 
                    - {not inspect_d_1} ->  inspect_d_1
                    - {not inspect_d_2} ->  inspect_d_2
                }
        }
    - inspect == 2:
        { 
            - murder == 2:
                { shuffle: 
                    - {not inspect_k_m_1} -> inspect_k_m_1
                    - {not inspect_k_m_2} -> inspect_k_m_2
                }
            - else: 
                { shuffle: 
                    - {not inspect_k_1} -> inspect_k_1
                    - {not inspect_k_2} -> inspect_k_2
                }
        }
    - else:
        -> turn 
        
}

/// Desponia Self //////////////////////////////////////////////
=== self_d_m_1 ===
D M 1
+ [Continue] -> turn

=== self_d_m_2 ===
D M 2 
+ [Continue] -> turn 

=== self_d_1 === 
D 1
+ [Continue] -> turn

=== self_d_2 ===
D 2
+ [Continue] -> turn

/// Khione Self //////////////////////////////////////////////
=== self_k_m_1 ===
K M 1
+ [Continue] -> turn

=== self_k_m_2 ===
K M 2 
+ [Continue] -> turn 

=== self_k_1 === 
K 1
+ [Continue] -> turn

=== self_k_2 ===
K 2
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
=== inspect_d_m_1 ===
I D M 1
+ [Continue] -> turn

=== inspect_d_m_2 ===
I D M 2
+ [Continue] -> turn

=== inspect_d_1 ===
I D 1 
+ [Continue] -> turn

=== inspect_d_2 ===
I D 2 
+ [Continue] -> turn

///Inspect Khione //////////////////////////////////////////////
=== inspect_k_m_1 ===
I K M 1
+ [Continue] -> turn

=== inspect_k_m_2 ===
I K M 2
+ [Continue] -> turn

=== inspect_k_1 ===
I K 1 
+ [Continue] -> turn

=== inspect_k_2 ===
I K 2 
+ [Continue] -> turn

/// Murderer Reveal //////////////////////////////////////////////

=== murderer_reveal ===

{
    - murder == accuse: 
        Desponia 
        -> END
    - murder == accuse: 
        Khione 
        -> END
    - murder == accuse: 
        Ded Moroz 
        -> END
    - murder == accuse: 
        Itzlacoliuhqui
        -> END
    - murder == accuse: 
        Marzanna 
        -> END
    - murder == accuse: 
        Skadi
        -> END
    - murder == accuse: 
        Hine Takurua 
        -> END
    - murder == accuse: 
        Shakok
        -> END
    - murder == accuse:
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
