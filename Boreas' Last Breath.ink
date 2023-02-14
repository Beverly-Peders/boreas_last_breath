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

Boreas Invitation. 

+ [Accept] -> character_selection

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
            - -> body3_3
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
            - -> body5_2
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
            - -> body9_4
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
            - -> cs_1_1
            - -> cs_1_2
            - -> cs_1_3
            - -> cs_1_4
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

///Desponia Self //////////////////////////////////////////////
=== self_d_1 === 
D1 - You rub your hands together, noticing a chill resting on the skin. Something doesn't feel right. Didn't you have gloves? A very expensive pair of leather riding gloves? Those were one of a kind! 
+ [Continue] -> turn

=== self_d_2 ===
D2 - You brush away something gritty on your pants. It's black and coarse between your fingers -- soot? What now? Were you playing the scullery maid and messing with the fireplace? Damn hangover!
+ [Continue] -> turn

=== self_d_3 ===
D3 - Tucked away inside your jacket you find a neatly folded document. Unfolding it you recognize it as the contract that brought you to Boreas and to this damned party. The same one you needed him to sign and oh --- he has signed it! 

    You squint at the signature, not sure if it's the hangover or the ink, but the script looks shaky at best. Perhaps you didn't really get his signature. Not legally. 
+ [Continue] -> turn

=== self_d_4 ===
D4 - A gossy image catches your eye. You know that magazine. You know that smirk! You snatch up the magazine and read the blurb. It's an article on your business mogul mother, Demeter, in which showers praise on your sister, Kore, and all her accomplishments. You scan the pages, but there is not one mention of you. 
+ [Continue] -> turn

=== self_d_5 ===
D5 - Was that a wink from that dashing young man, Itzlacoliuhqui? Oh. A flush to your face reminds you of the charming conversations with him. He was so easy to talk to. Probably because he made sure your drink was always full. 
+ [Continue] -> turn

=== self_d_6 ===
D6 - Tired of standing around, you collapse into a leather chair in the lounge. The room feels awfully familar. A conversation echoes in your head. It quickly escalates into an argument and you remember Boreas' nasty condescension as if he were still alive in the room with you. Good riddance. 
+ [Continue] -> turn

=== self_d_7 ===
D7 - Speckling your jacket is yet more horse hair. No matter how many times you brush it and have someone clean it, there always seems to be more. It gets everywhere. It's so hard to find good help. 
+ [Continue] -> turn

///Body 1///
=== body1_1 ===
Body11 - Boreas was never your favorite, but that long groove smashed into his face by something heavy does not look like a good way to go. Maybe it could have been something like a pipe? Or a narrow bat? 
+ [Continue] -> turn

=== body1_2 ===
Body12 - If you look closely at his hands, it looks like there is ink smeared on them. Could he have been writing something at the time of his demise? 
+ [Continue] -> turn

=== body1_3 ===
Body13 - You know for a fact that Boreas despised animals and never had any pets - so what could be this animal hair here on his clothes? 
+ [Continue] -> turn

=== body1_4 ===
Body14 - Boreas was no small man and the scrapes on his knuckles show that he tried to stop his killer. Just wasn’t fast enough. 
+ [Continue] -> turn

=== body1_5 ===
Body15 - Inside his closed fist, you’re able to pry open the fingers to see a torn piece of paper. It’s just the corner, but from the small portion you can read, it’s a contract. Or at least, was a contract.
+ [Continue] -> turn

///Crime Scene 1///
=== cs_1_1 ===
CS11 - For such a large bash in Boreas' head, you thought there would be more blood. The pillows, the sheets... there's only a few drops of blood. 
+ [Continue] -> turn 

=== cs_1_2 ===
CS12 - You go to sit at a chair in the lounge and notice a smear near the head of the armchair. You look closer and there is some dried blood flecks on the upholstery tacks.  
+ [Continue] -> turn

=== cs_1_3 ===
CS13 - You're sure next to the fireplace in the lounge there was a poker, but the holder for it is empty. 
+ [Continue] -> turn 

=== cs_1_4 ===
CS14 - The soot around the lounge fireplace look disturbed. Poking around a bit through the ashes, there are bits of a document. You can only make out some of it. It reads like a personal investment contract. What was Boreas personally investing his money in? 
+ [Continue] -> turn 

=== cs_1_5 ===
CS15 - Most of the potted plants on the train are fake. Maintenance of the type of plants he wanted weren't worth the cost to Boreas. Yet, that one potted plant in the corner is tilted. 
    Stuffed into the fake dirt is a pair of bloody gloves.
+ [Continue] -> turn 

=== cs_1_6 ===
CS16 - On the floor outside Boreas' sleeper car are scuff marks. Following the stray marks, it leads to the lounge. 
+ [Continue] -> turn 

///Inspect Desponia///
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
ID4 - Gossip magazine
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

/// Khione Self //////////////////////////////////////////////
=== self_k_1 === 
K1 - Crumpled up in your pocket is an abused piece of paper, the creases and folds almost tearing through it from being opened and crumpled again. 
    
    It contains a list of chores. A never ending list. Everything from keeping the train running smoothly to menial tasks like making the beds and scrubbing the toilets. The more you did, the more he added. Can't add anything anymore.
+ [Continue] -> turn

=== self_k_2 ===
K2 - Tucked away in a small box in the closet you get to call your room is stack of letters. Different names on the return addresses and all far off locations. Each one writes wistfully that they wish you could visit. Maybe now... without the shackle of your father tying you down...
+ [Continue] -> turn

=== self_k_3 === 
K3 - A small black key lives on your keychain separate from the others. The study. It goes to the safe in the study. In the study, you open the safe. 

    It's stuffed with envelopes. Each one containing details on all of the invitees of the party. Secrets. Secrets that you now remember that you helped collect. Why else would Boreas have invited all these people except to have you go through all their belongings and find the skeletons in their closets? 
+ [Continue] -> turn

=== self_k_4 === 
K4 - In the mirror, you glimpse a streak of red on you jaw. A fresh bruise. You can almost see the handprint from the slap. So hard that it left an impression from the ring.
+ [Continue] -> turn

=== self_k_5 === 
K5 - You start cleaning up the discarded drink glasses before remembering that you don't have to do his dirty work anymore. You don't have to clean up or serve these rich snobs ever again.  
+ [Continue] -> turn

=== self_k_6 === 
K6 - You examine a small notebook in your pocket. At the top of each page is a calendar date with times and details inside it. Even at his own party, he still scheduled business and you had to track it and make sure he made all the deadlines. 
+ [Continue] -> turn

=== self_k_7 === 
K7 - Stashed away in the pocket of your jacket is a lump of keys. One for every door on the whole train. You have full access to any room and everything therein. Better to keep those tucked away. 
+ [Continue] -> turn

///Body 2///
=== body2_1 ===
Body21 - Two gunshots wounds straight to the chest seem to be the most obvious cause of death. Very neat and professional. 
+ [Continue] -> turn

=== body2_2 ===
Body22 - Hanging on Boreas’ jacket as if it had been snagged somehow is a dazzling ruby earring. As a pair it would be worth a fortune, but the stones alone are worth quite the pretty penny. 
+ [Continue] -> turn

=== body2_3 ===
Body23 - Near the corners of Boreas’ mouth is a weird dried foam. Could it have been part of his drink? As you get closer, the smell is pungent and acrid. Poison?
+ [Continue] -> turn

=== body2_4 ===
Body24 - A small notebook, tucked into his jacket, is full of scribbles. The most disorganized ledger imaginable - it’s hard to make out what the payments are for and even what the numbers. You can count the commas, though. And there are a lot of unusually large payments from an “X”. 
+ [Continue] -> turn

=== body2_5 ===
Body25 - Boreas was right handed and wasn't afraid to hit anyone. You can make out a red tinge on his hand, irritated. Must've fought back. 
+ [Continue] -> turn

///Crime Scene 2////
=== cs_2_1 ===
CS21 - Most of the potted plants on the train are fake. Maintenance of the type of plants he wanted weren't worth the cost to Boreas. Yet, that one potted plant in the corner is tilted. 
    Stuffed into the fake dirt is a pair of bloody gloves.
+ [Continue] -> turn 

=== cs_2_2 ===
CS22 - In an unlocked drawer in the study is Boreas' Last Will and Testament. It seems like he's splitting his fortune and company between all his children... and there are a lot. 
+ [Continue] -> turn

=== cs_2_3 ===
CS23 - The killer left in a hurry and left behind a handkerchief on the floor under the desk chair. 
+ [Continue] -> turn

=== cs_2_4 ===
CS24 - Knocked over on the desk is Boreas' drink. The booze soaks into some of the documents around it, but a sludge is left behind at the bottom of the glass. Not sugar or egg white... it has a chemical scent.
+ [Continue] -> turn 

=== cs_2_5 ===
CS25 - Kicked under the desk is the gun! It's a professional glock with a silencer. A killer's best friend. 
+ [Continue] -> turn 

=== cs_2_6 ===
CS26 - Tossed in the trash can is an empty pill bottle. The pharmaceutical label is almost completely torn off except for a name, "Marzanna". 
+ [Continue] -> turn 

=== cs_2_7 ===
CS27 - Caught in the drawer of Boreas' desk is a thread of yarn. Perhaps pulled from the killers clothing? 
+ [Continue] -> turn 

///Inspect Khione///
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
IK4 - Bruise on face
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

/// Ded Moroz Self //////////////////////////////////////////////
=== self_dm_1 === 
DM1 - After shifting your weight onto the cane, you notice it feels off. A little light? You fiddle with the top and -- fwoop! The handle pulls out to reveal a long steel blade hidden in the cane. 
+ [Continue] -> turn

=== self_dm_2 ===
DM2 - What's that? Something on your sleeve is bugging you and you reach into your pocket to grab something - your handkerchief. But it's not there. You're sure you had it before the party. 
+ [Continue] -> turn

=== self_dm_3 === 
DM3 - Tucked away in an inner jacket pocket is a small notebook. You flip through it. Numbers. Dates. Your ledger. Underlined with angry emphasis are a lot of payments to "Boreas Trans." The numbers kept increasing even over the span of a few short months. Boreas always believed that if someone was able to pay, they could always pay more. Good riddance. 
+ [Continue] -> turn

=== self_dm_4 === 
DM4 - You're seized by a craving and your hands instinctively grab a cigar from a box you stashed in the lounge. A quick flick of the wrist with the match and you're able to scratch your itch. At least you're still able to afford the good ones. 
+ [Continue] -> turn

=== self_dm_5 === 
DM5 - Shuffling around, you notice clumps of fur being shed by your boots. They weren't top dollar boots, but they should be holding better for the price you paid! Damn those swindler salesmen!
+ [Continue] -> turn

=== self_dm_6 === 
DM6 - Walking by the game table you see a set of cards dealt on the table. Not a winning hand for the poker game. Not by a long shot. Those numbers laughed at you, just like Boreas had when you failed your bluff. Not laughing now, are you? 
+ [Continue] -> turn

=== self_dm_7 === 
DM7 - Jingle jingle. Jingle jingle. You are going to kill the saleswoman who convinced you that beaded coats were "in". Sure, it looked good in the store. It looks good now! You look great in anything! But damn does it sound awful. 
+ [Continue] -> turn

///Body 3///
=== body3_1 ===
Body31 - Multiple blood spots on Boreas' silk shirt indicate the location of maybe seven stab wounds. Someone must have been very angry... not to mention strong enough to get through his sternum. 
+ [Continue] -> turn

=== body3_2 ===
Body32 - Boreas had hidden his ledger away in the inside of his jacket. While the edges of the pages are stained with his blood, the contents are relatively dry. Not that it makes it easier to understand. The ledger isn't coded, but sloppy and disorganized. Something stands out to you. Ridiculous "admininstrative fees" and "processing fees" are added to vendors until their payments almost double. 
+ [Continue] -> turn

=== body3_3 ===
Body33 - Under the shirt you can see the imprint of a bruise around the stab wounds. The murder weapon must have had a small round hilt.
+ [Continue] -> turn

=== body3_4 ===
Body34 - Boreas despised animals so her never owned a pet or allowed them near his presence. Yet, on the cuff of his pants and in the folds of his clothes are some animal hairs. Fur maybe? You're not quite sure, but it's definitely not human. 
+ [Continue] -> turn

=== body3_5 ===
Body35 - A bruise on Boreas' face is about the size of a very large fist. Someone didn't think fists were enough. 
+ [Continue] -> turn

///Crime Scene 3///
=== cs_3_1 ===
CS31 - Boreas never missed an opportunity to show off his latest expensive purchase. At this party, he was particularly fond of flashing his million dollar wrist watch and gaudy cufflinks. All of which are now missing, including his signature sapphire ring.
+ [Continue] -> turn 

=== cs_3_2 ===
CS32 - The ashtray on the poker table was knocked over in the scuffle, scattering ashes along the velvet. You aren't able to tell what kind, but someone at the table was smoking. 
+ [Continue] -> turn

=== cs_3_3 ===
CS33 - Blood pools all around the chair that Boreas died in. So much blood. Too much for the killer to avoid. Large boot prints were left in the blood. 
+ [Continue] -> turn

=== cs_3_4 ===
CS34 - The chair Boreas sat in has splintered chunks on it. The same placement of the stabs line up - the blade was long enough to go through Boreas and chip the chair. And the killer was angry enough to do it multiple times. 
+ [Continue] -> turn 

=== cs_3_5 ===
CS35 - Discarded under the table is a balled up handkerchief. Blood is striped on it like it was used to clean up the blade. The killer may still have it with them. 
+ [Continue] -> turn 

=== cs_3_6 ===
CS36 - Stuck in the blood pool under Boreas' chair are a couple of beads. Since Boreas doesn't have any beads on his clothes, they must have dropped off the killer.
+ [Continue] -> turn 

=== cs_3_7 ===
CS37 - Shreds of a document are scattered in the pool of blood. Some are stained beyond legibility, but it looks like an invoice. A heavy sum was being demanded, but of who?
+ [Continue] -> turn 

///Inspect Ded Moroz///
=== inspect_dm_1 ===
IDM1 - Concealed sword in cane 
+ [Continue] -> turn

=== inspect_dm_2 ===
IDM2 - Handkerchief
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
IDM7 - Beads on his coat 
+ [Continue] -> turn

/// Itzlacoliuhqui Self //////////////////////////////////////////////
=== self_i_1 === 
I1 - A small lump inside your jacket irritates you. Stashed inside the hem of your jacket in a hidden pocket is a folded piece of paper. The paper is covered in weird symbols. A coded message. The document is hard to parse with the throbbing hang over, but you can make out two things: a demand for a ring... and the printed letterhead - an ornate "Z"... the logo of Zephyr International Transit. 
+ [Continue] -> turn

=== self_i_2 ===
I2 - You jacket lips to the side slightly and you adjust it. A few loose threads peek out from the shoulder seam and you angrily inspect the damage. It all comes back, helping the stumbling drunk Boreas into the lounge from the dining room had been a bad idea. His weight tucked almost completely on the sleeve. Had you known then that he tore your designer jacket... good riddance. 
+ [Continue] -> turn

=== self_i_3 === 
I3 - Alone at last in the supply room. If only those women knew you're not really interested in them, not really. Whatever need you had to get close to them, it's no of use to keep up the charade. To scorn them now would bring on too much suspicion, so hiding in the supply room is the best solution for now. 
+ [Continue] -> turn

=== self_i_4 === 
I4 - Snug under your armpit is your best friend, your trusted sidekick. You check your holster for that warm, friendly grip and... nothing. It's empty. You have to see it to believe it, but your holster is empty. Your gun has been stolen right from under you. If you don't find it quick there will be more dead bodies than just the old man. 
+ [Continue] -> turn

=== self_i_5 === 
I5 - You check the time on your one-of-a-kind timepiece knowing its worth more than the accessories of everyone on the train. This isn't something you get from just being a pretty face. Your cufflinks alone could pay for an entire train car. These people have fortunes - you're paid in fortunes. Only the best for those in your kind of work. 
+ [Continue] -> turn

=== self_i_6 === 
I6 - In a flair of boredom, you pull out a pack of thin hand-rolled cigarettes and light one. Just playing with the affect of your breath on the embers on the end. You must look rather mysterious with your face intermittently lit by the glow. You quickly find a dark corner to brood. Perfect. 
+ [Continue] -> turn

=== self_i_7 === 
I7 - A tiny bottle secured in your luggage is a lifesaver. While everyone else takes on the stench of nervous energy and fear, you easily walk about with an expertly crafted scent that is as delicate as a flower and lingers like the smell of gunpowder. 
+ [Continue] -> turn

///Body 4///
=== body4_1 ===
Body41 - Near the corners of Boreas’ mouth is a weird dried foam. Could it have been part of his drink? As you get closer, the smell is pungent and acrid. Poison?
+ [Continue] -> turn

=== body4_2 ===
Body42 - You expected to find something amiss like in the great novels: a hair, a note, something that would bring about that a-ha moment! But you struggle to see anything amiss. Not even a wrinkle. Perhaps this killer cleaned up after themselves. 
+ [Continue] -> turn

=== body4_3 ===
Body43 - Boreas never missed an opportunity to show off his latest expensive purchase. At this party, he was particularly fond of flashing his million dollar wrist watch and gaudy cufflinks. The murderer didn't take any of those, but instead just his signature sapphire ring. 
+ [Continue] -> turn

=== body4_4 ===
Body44 - A small booklet tucked inside Boreas' jacket contains numbers and logs of invoices - his ledger. Scribbled almost illegibly, it's hard to make out any information. A folded document falls out of the pages. It's a letter that Boreas must've intercepted about a new rail line that is being designed in the southwest. The same exact location that Boreas is hastily building his own rail line. Printed on the stationery letter head is an ornate "Z".
+ [Continue] -> turn

=== body4_5 ===
Body45 - As you get close to the body, a smell overwhelms you. It's not the smell you'd expect a dead body to smell like. Instead of rotting meat, a strange fragrance hovers over the body. 
+ [Continue] -> turn

///Crime Scene 4///
=== cs_4_1 ===
CS41 - The glass still in Boreas' hand. A thick sludge settles at the bottom of the drink. It wasn't sugar or egg whites. It smells like... chemicals. 
+ [Continue] -> turn 

=== cs_4_2 ===
CS42 - Tossed in the trash can is an empty pill bottle. The pharmaceutical label is almost completely torn off except for a name, "Marzanna". 
+ [Continue] -> turn

=== cs_4_3 ===
CS43 - Resting on the arm of the chair is a feather. Nothing from a real bird, this is a synthetic feather made for accessories and decor. Not Boreas' usual style. 
+ [Continue] -> turn

=== cs_4_4 ===
CS44 - In the lounge fireplace, there are bits of a document still smoldering in the ashes. You pull out the biggest pieces, but it looks to be written in some sort of code. Luckily, at the bottom of one of the documents fragments is a stylized "Z" for the letterhead. 
+ [Continue] -> turn 

=== cs_4_5 ===
CS45 - The ash tray next to the armchair looks to be emptied, but the smudges at the edge show that there were ashes in it. Someone doesn't want it to be known that they were smoking. 
+ [Continue] -> turn 

=== cs_4_6 ===
CS46 - Between the dining room and the lounge, strange scuff marks are on the floor. As if Boreas was half dragged from the dining room into the lounge. 
+ [Continue] -> turn 

///Inspect Itzlacoliuhqui///
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
II7 - Cologne 
+ [Continue] -> turn

/// Marzanna Self //////////////////////////////////////////////
=== self_m_1 === 
M1 - Your chest grips with panic. Panic! You scramble through your purse to find your pills. Where are your pills? You need your pills! You all but dump out your purse onto the floor of the train car in a feverish state. Your pills are missing! 
+ [Continue] -> turn

=== self_m_2 ===
M2 - With every move you make, clang! You reach for another drink, clang! Every moment your purse moves there's an awful noise. You open it up to discover - you've been a busy little bee. Silverware, a gold ash tray, an engraved lighter... even some steak knives. 
+ [Continue] -> turn

=== self_m_3 === 
M3 - Adorned like a night sky with stars, beads cover your dress. Which would be fine if your numerous bangles and rings wouldn't keep getting caught in them! You're not sure how many beads have snapped off already, but enough to regret wearing this dress. You can't even take off the bangles or you'll reveal the green marks their cheap metal is leaving on your skin. 
+ [Continue] -> turn

=== self_m_4 === 
M4 - Every wealthy business man in the papers has a pipe and so, in order for wealthy people to take you seriously - you needed one! The smoke tastes awful so you really only chew on the end, but you're sure that you look very refined. Almost assuredly. 
+ [Continue] -> turn

=== self_m_5 === 
M5 - Something you've never understood about trains is that they have so many walls. Why not have windows so you can see the marvels you pass through? The viewing room at the back of the train with its top-to-bottom windows is your favorite room by far. Just to see the mountains and the valleys as they zip by! You'd have spent the whole party there if you didn't have business to do. 
+ [Continue] -> turn

=== self_m_6 === 
M6 - A breeze ruffles the sleeves of your dress and you pull them closer as if they can do anything more than flutter about. Didn't you have something warmer? That knit shawl, the only thing left of your mother. It may have been fraying at the edges, but your mother was the definition of grace and beauty, thus so was her shawl. 
+ [Continue] -> turn

=== self_m_7 === 
M7 - The one item in your purse separated from the rest of the rabble in a pocket is a faded photograph. The woman looks exactly like you and wears a shawl around her shoulders. A man holds her, his arms encircling her in a loving embrace. If you squinted just right and pretended that the warm gaze was instead a cruel scowl, the man looked exactly like Boreas. 
+ [Continue] -> turn

///Body 5///
=== body5_1 ===
Body51 - Sticking out of Boreas' gut is the black hilt of a steak knife... the very same you used to cut your meal in the dining room. Anyone could have had access to them. 
+ [Continue] -> turn

=== body5_2 ===
Body52 - While the knife plunged all the way to the hilt in Boreas' gut, it doesn't take that much strength to do so - especially with these professionally sharpened Japanese steak knives. 
+ [Continue] -> turn

=== body5_3 ===
Body53 - Boreas never missed an opportunity to show off his latest expensive purchase. At this party, he was particularly fond of flashing his million dollar wrist watch and gaudy cufflinks. All of which are now missing, including his signature sapphire ring. 
+ [Continue] -> turn

=== body5_4 ===
Body54 - Tucked away inside a jacket pocket is Boreas' ledger. A veritable gold mine of information completely useless thanks to Boreas' sloppy illegible handwriting. What stands out to you are large sum payments under "alimony". As far as you're aware, Boreas' wife died young and this payment was dated this year. 
+ [Continue] -> turn

=== body5_5 ===
Body55 - Peeking out from Boreas' closed fist are a few knit threads. It's hard to tell what color they are since the blood has stained them red. 
+ [Continue] -> turn

///Crime Scene 5///
=== cs_5_1 ===
CS51 - In Boreas' private study, a stack of papers smolder in the fireplace. You shake loose some of the soot and while not a lot is legible, what little snippets you can read have you reaching for a glass of water. They must be some very intimate love letters. 
+ [Continue] -> turn 

=== cs_5_2 ===
CS52 - Boreas' will, discovered in his desk, mentions that upon his death, his assets and company would be divided among his children. All of his children. The will doesn't say only the ones from his wife. 
+ [Continue] -> turn

=== cs_5_3 ===
CS53 - The blood pooling under Boreas' body is smeared, almost as if the killer attempted to drag the body and hide it. With Boreas' bulk, it was no surprise that the killer gave up. 
+ [Continue] -> turn

=== cs_5_4 ===
CS54 - Tucked under an armchair, a strange prescription bottle glints. The killer may have kicked it during the struggle. The bottle is empty. The pharmaceutical label is almost completely torn off except for a name that begins with "M". 
+ [Continue] -> turn 

=== cs_5_5 ===
CS55 - A strange powder on the ground looks like soot, but upon closer inspection you think maybe it's ash? Like from a cigarette or a cigar?
+ [Continue] -> turn 

=== cs_5_6 ===
CS56 - Dropped in the blood like sprinkles are a few beads. The kind that can be shed from clothing or accessories. They're coated in blood and hard to discern the color.  
+ [Continue] -> turn 

=== cs_5_7 ===
CS57 - The viewing car has very few places to hide anything. Floor to ceiling windows and only a few chairs, not a lot of furniture. And yet, threads are poking out of a cushion of an armchair. Pulling on them, reveals a bloody knit shawl. 
+ [Continue] -> turn 

///Inspect Marzanna///
=== inspect_m_1 ===
IM1 - Missing pills / bottle
+ [Continue] -> turn

=== inspect_m_2 ===
IM2 - Purse full of stolen items 
+ [Continue] -> turn

=== inspect_m_3 ===
IM3 - Clothing covered in beads, fake gems
+ [Continue] -> turn

=== inspect_m_4 ===
IM4 - Smokes a pipe 
+ [Continue] -> turn

=== inspect_m_5 ===
IM5 - Seen gawking in viewing room 
+ [Continue] -> turn

=== inspect_m_6 ===
IM6 - Missing scarf/shawl
+ [Continue] -> turn

=== inspect_m_7 ===
IM7 - Old photograph of mother/Boreas
+ [Continue] -> turn

/// Skadi Self //////////////////////////////////////////////
=== self_sk_1 === 
SK1 - You're used to the cold, you thrive in the cold... but the fur-lined jacket that is your signature look is somehow not wrapped around you. How will people recognize you as the most accomplished snow sports athlete in the world? You must find it. It's too late now to change your look. 
+ [Continue] -> turn

=== self_sk_2 ===
SK2 - Crumpled in the pocket of your snow pants is a document. After flattening it out, you read over a response clearly written in Boreas' unforgiving hand and your blood boils again. That bastard thinks he can refuse you? Even when you laid out the profits he would make with the new train line, he demanded more! More! If only a man could be killed more than once!
+ [Continue] -> turn

=== self_sk_3 === 
SK3 - Tucked away in the inner pocket of your vest is an envelope. Inside is the contract you were going to present to Boreas. Your final offer for the train line to be directed straight to the resort. Something was off about the signature. It looked hesitant and harsh. Not at all like the arrogant swoops and flourishes of the real Boreas signature. Who would know? 
+ [Continue] -> turn

=== self_sk_4 === 
SK4 - You head to the drink station for a little hair of the dog, but you notice the ice has all melted. Again. You remember the same thing happened last night. No ice. No Khione to fetch some. You had to trudge through the supply room to find the damn ice block and chip away at it yourself. 
+ [Continue] -> turn

=== self_sk_5 === 
SK5 - A feather drifts past your face as it makes an escape off your headband. What a cheap headband! Feathers littering everywhere. Not something you'll purchase again. 
+ [Continue] -> turn

=== self_sk_6 === 
SK6 - Poking out from under other magazines in the lounge is the brochure you handed Boreas last night. He tucked it under all this other gossip garbage as if was worth less. Your brochure for your new resort in the lovely northwest mountains! That man has no taste. 
+ [Continue] -> turn

=== self_sk_7 === 
SK7 - Ach, your boots! Top of the line ski boots and they have black powder on them! Soot! On your boots! 
+ [Continue] -> turn

///Body 6///
=== body6_1 ===
Body61 - It doesn't take much to nick an artery. Something skinny and sharp pierced Boreas' neck at just the right spot. He must have bled out in seconds. 
+ [Continue] -> turn

=== body6_2 ===
Body62 - Boreas despised animals so her never owned a pet or allowed them near his presence. Yet there are short hairs clinging to his clothing and all over. They're definitely not human. 
+ [Continue] -> turn

=== body6_3 ===
Body63 - Slick with blood, you find Boreas' ledger nestled inside his jacket pocket. Most of the pages are stained with blood and practically illegible. However, the most recent pages are relatively dry. An entry mentions a contract that would create a new rail line to the mountains in the northwest, but it's been scratched out. 
+ [Continue] -> turn

=== body6_4 ===
Body64 - Boreas' hands have fresh ink stains on the fingers, almost as if he had been writing something when he was killed. 
+ [Continue] -> turn

=== body6_5 ===
Body65 - Boreas was always quick tempered and would rather argue with his fists that with his words, so it is no surprise when you notice brusing on his knuckles. He lashed out, but it looks like he met his match. 
+ [Continue] -> turn

///Crime Scene 6///
=== cs_6_1 ===
CS61 - Blood is smeared all over the floor as if the killer tried to clean up, just not well. Despite being in the supply room, the killer didn't use the mop. What else could they have used?
+ [Continue] -> turn 

=== cs_6_2 ===
CS62 - Boreas' body is slumped in a chair in the dining room, but there are scuff marks on the floor. You follow them toward the kitchen and into the supply room. This must be where he was really killed. 
+ [Continue] -> turn

=== cs_6_3 ===
CS63 - The towel hamper in the kitchen is white, but there's a little red stain. Could be sauce, but you decide to look through it. How strange. A fur coat. Slick with blood. 
+ [Continue] -> turn

=== cs_6_4 ===
CS64 - The wood-burning oven is a little warmer than it should be after last night's dinner. You carefully open up the oven and look inside. The wood ashes protected some of the documents from the smoldering coals. You can make out some details from the document. It looks like a contract about a new rail line to the northwest mountains. 
+ [Continue] -> turn 

=== cs_6_5 ===
CS65 - Blown under a storage shelf, you see a little feather. Is that a chicken feather? You pull it out. The color isn't natural for any real bird. It must be decorative for clothing or accessories. 
+ [Continue] -> turn 

=== cs_6_6 ===
CS66 - The sticky residue left over from the killer trying to clean up the supply room floor stuck to the killer's boots. Large boot prints stomp about between the supply room and the kitchen. 
+ [Continue] -> turn 

=== cs_6_7 ===
CS67 - You almost missed it. Dropped with the other dirty dishes in the kitchen. A thin ice pick with just a little bit of blood left on the hilt attempting to hide. Such a small little tool, just to chip ice. 
+ [Continue] -> turn 

///Inspect Skadi///
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
ISK6 - Brochure for new resort 
+ [Continue] -> turn

=== inspect_sk_7 ===
ISK7 - Soot on boots
+ [Continue] -> turn

/// Hine-Takurua Self //////////////////////////////////////////////
=== self_ht_1 === 
HT1 - You twirl, looking at yourself in the reflection in the windows. The feathers fan out from your dress and surround you like graceful falling leaves. Dazzling, simply dazzling. You could look at yourself in the reflection all day. 
+ [Continue] -> turn

=== self_ht_2 ===
HT2 - A newspaper is folded open on a table in the dining car to a page you recognize. The international news page. The picture features a wealthy political figure, your husband, with another woman on his arm. That tramp! The puff piece about his habits and interests never once mentions his wife. He wouldn’t want to scare his mistress away after all. 
+ [Continue] -> turn

=== self_ht_3 === 
HT3 - You make a quick break for it when Marzanna enters reeking of cheap tobacco. Just in case, you apply some delicate perfume to your wrists and neck. You don’t want anyone to think that smell is coming from you. Especially such a cheap smell. 
+ [Continue] -> turn

=== self_ht_4 === 
HT4 - This is the first time you’ve ever seen Boreas host an event without any sort of camera. Where are the cameras? You hung on his arm all night, laughing at his jokes, and dancing when beckoned and yet no one here would be able to humiliate your husband with a photograph. Unacceptable.  
+ [Continue] -> turn

=== self_ht_5 === 
HT5 - You start to fiddle with your earrings. It’s been a nervous habit you’ve never been able to get rid of. Your husband used to think it was cute or at least that’s what he’d tell you. That’s when you notice it. One is missing! Someone must’ve stolen it. After all, the rubies in them are worth a fortune. 
+ [Continue] -> turn

=== self_ht_6 === 
HT6 - Stashed away at the bottom of your suitcase is a neat stack of letters. Full of lovelorn drivel from Boreas, just waiting for the moment you leave one lying around for your husband to see. Two can play at this game. 
+ [Continue] -> turn

=== self_ht_7 === 
HT7 - Two men discreetly stand nearby as you step into the viewing room. Usually you don’t notice your own bodyguards, but they’ve been sticking closer since Boreas’ untimely murder. It’s good to remind everyone that you have well-armed security at the ready.
+ [Continue] -> turn

///Body 7///
=== body7_1 ===
Body71 - Boreas never missed an opportunity to show off his latest expensive purchase. At this party, he was particularly fond of flashing his million dollar wrist watch and gaudy cufflinks. However, the only thing missing is his signature sapphire ring. 
+ [Continue] -> turn

=== body7_2 ===
Body72 - Even while he's sleeping, Boreas keeps a ledger on him. The scribbled mess inside makes it difficult to believe this man owned a million dollar railroad company, especially with all the expenses! A receipt tucked into folds is for a pair of ruby earrings worth a small fortune. 
+ [Continue] -> turn

=== body7_3 ===
Body73 - Despite the silent scream frozen on Boreas' face, his eyes are closed. Perhaps the killer had some regret. It's hard to think anyone on this train would care enough to close his eyes. 
+ [Continue] -> turn

=== body7_4 ===
Body74 - Boreas always had a rosy glow to his face. Whether it was from drinking too much or indulging too much in his chef's cooking, it always had a warm flush. It's strange to see him now, his pale face not only drained of color, but almost a pale blue. Like someone would look after asphyxiation. 
+ [Continue] -> turn

=== body7_5 ===
Body75 - It doesn't seem polite to rifle through a dead man's bed sheets, but it ended up being worth it when you pull out a single ruby earring. Who has the matching one?
+ [Continue] -> turn

///Crime Scene 7///
=== cs_7_1 ===
CS71 - Boreas' room is a treasure trove of information, but you only have a quick moment to look around. The best stuff is under the bed, right? Jackpot! A small bundle of letters are kept in a small box. And boy what letters! The kind that have you reaching for a glass of water. 
    They're not signed, but they have international stamps on the envelopes. 
+ [Continue] -> turn 

=== cs_7_2 ===
CS72 - It could have easily been overlooked as a down feather from the pillow, but the garish color was obviously not a natural bird feather. It must have fallen off a piece of clothing or accesory. 
+ [Continue] -> turn

=== cs_7_3 ===
CS73 - A strange stain on the pillow looks more than just drool. Someone pressed it over Boreas' mouth. 
+ [Continue] -> turn

=== cs_7_4 ===
CS74 - Boreas always had a repulsive smell of booze and stale sweat. But there's an aroma in the air, not only is it pleasant - it's expensive. 
+ [Continue] -> turn 

=== cs_7_5 ===
CS75 - Boreas is not someone who would easily be suffocated. He would thrash and fight back. Why did the room look relatively clean? But is it? The clock is off, the bedside lamp isn't plugged in... Once you start pulling at the thread, the sweater unravels. The scene was cleaned up. 
+ [Continue] -> turn 

=== cs_7_6 ===
CS76 - Inside the bedside table drawer is a small box. A velvet box. Boreas doesn't spend money on anyone other than himself and his company and yet, inside the box is a diamond ring. 
+ [Continue] -> turn 

=== cs_7_7 ===
CS77 - A small bottle of hair gel was cleaned up, the broken bits in the trash, but smears of gel scuff the floors. From the amount of smears it's from multiple boots.  
+ [Continue] -> turn 

///Inspect Hine-Takurua///
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
IHT7 - Security 
+ [Continue] -> turn

/// Shakok Self //////////////////////////////////////////////
=== self_sh_1 === 
SH1 - You find yourself in the study trying to find the dining car to refill your beverage. This door isn’t usually open and not many people are even allowed inside, but you know this room. It brings along with it memories of heated debates and anger. He never listened. 
+ [Continue] -> turn

=== self_sh_2 ===
SH2 - There are very few creature comforts that you care for. While cosmetics are not something you usually purchase, you make an exception for a specific coconut oil hand lotion that has saved your skin from the bitter winter dryness. 
+ [Continue] -> turn

=== self_sh_3 === 
SH3 - You must have walked the whole train at least a dozen times by now. While you would never keep original documents in your briefcase, you know there was something important in it you couldn’t let fall into the wrong hands. Perhaps someone stole it for that very reason. 
+ [Continue] -> turn

=== self_sh_4 === 
SH4 - The utmost important documents are always kept on your person. You open the small notebook tucked away inside your jacket just to look at the numbers. Order. Structure. That’s what numbers provide you. Dozens of companies are tracked with their finances. Near the end of the list, red numbers disrupt the order. Boreas Transcontinental. 
+ [Continue] -> turn

=== self_sh_5 === 
SH5 - You pull a sliver of embossed card stock out from your pocket. It’s your business card. Shakok Investments - Success Starts Here. 
+ [Continue] -> turn

=== self_sh_6 === 
SH6 - One of the guests rudely bumped into you, causing you to spill a little of your drink on your pants. When you reach for your handkerchief, you only find an empty pocket. 
+ [Continue] -> turn

=== self_sh_7 === 
SH7 - This train is filthy - what is Boreas spending all that money on? You have sticky floorboards, stained upholstery and - look! - soot on your shoes! Absolutely disgraceful. 
+ [Continue] -> turn

///Body 8///
=== body8_1 ===
Body81 - The stab would on Boreas' body is rather small and thin. The options for what it could be would have been innumerable except that the letter opener sits on the desk as if on display. It looks as if someone cleaned it, but a flect of red can be seen in the groove of the design on the handle. 
+ [Continue] -> turn

=== body8_2 ===
Body82 - Tucked away in an inside pocket of Boreas' jacket is a small booklet. His ledger. Inside are scribbles and logs of illegible transactions. Rumors had been going around that Boreas Transcontinental was hemmoraging money from bad deals and investments, but Boreas' own ledger shows a modest profit. 
+ [Continue] -> turn

=== body8_3 ===
Body83 - At the tips of Boreas' hands, a black ink dries. Perhaps he was taking some notes before he died? Or drafted up a document? 
+ [Continue] -> turn

=== body8_4 ===
Body84 - A piece of paper peeks out between the gaps in his clenched fist. You gently pull it free, but only have a slice of a document. The tone of the partial section of document is very harsh and corporate. One word in particular stands out. "Audit". 
+ [Continue] -> turn

///Crime Scene 8///
=== cs_8_1 ===
CS81 - Burned correspondence by candle, stomped it out 
+ [Continue] -> turn 

=== cs_8_2 ===
CS82 - Bloody handkerchief stashed into a drawer 
+ [Continue] -> turn

=== cs_8_3 ===
CS83 - Will / executor 
+ [Continue] -> turn

=== cs_8_4 ===
CS84 - Scent 
+ [Continue] -> turn 

=== cs_8_5 ===
CS85 - Bloody letter opener cleaned on desk 
+ [Continue] -> turn 

=== cs_8_6 ===
CS86 - 
+ [Continue] -> turn 

///Inspect Shakok///
=== inspect_sh_1 ===
ISH1 - Seen shouting with Boreas about finances 
+ [Continue] -> turn

=== inspect_sh_2 ===
ISH2 - Scent
+ [Continue] -> turn

=== inspect_sh_3 ===
ISH3 - Missing briefcase
+ [Continue] -> turn

=== inspect_sh_4 ===
ISH4 - Ledger 
+ [Continue] -> turn

=== inspect_sh_5 ===
ISH5 - Business card 
+ [Continue] -> turn

=== inspect_sh_6 ===
ISH6 - Missing handkerchief
+ [Continue] -> turn

=== inspect_sh_7 ===
ISH7 - Soot on shoes 
+ [Continue] -> turn

/// Naneh Sarma Self //////////////////////////////////////////////
=== self_ns_1 === 
NS1 - Your hands continue to move in smooth, uninterrupted motions as you knit. From the outside, no one can really tell what it is you are making. Is it part of a sweater? A hat? A scarf? The stitches look irregular and strange, but you know better. And so do those that need to know. 
+ [Continue] -> turn

=== self_ns_2 ===
NS2 - Your knitting bag is full of strange small projects. A glove missing two fingers, a hat too big for any head, a sock with two toes, but strangely no balls of yarn. They’re not meant to be worn. Those irregular stitches and imperfections are a code. One that only someone in the close inner circle can decipher. 
+ [Continue] -> turn

=== self_ns_3 === 
NS3 - While you did indulge in a little brandy during the festivities, enough to cloud your memory, you prefer the taste of tea. One of your attendants brings you a fresh cup and as they lean forward, you can see the gun holstered under their arm. Ahhh… Persian Chai. Your favorite. 
+ [Continue] -> turn

=== self_ns_4 === 
NS4 - While many see beads as a fashion statement, to you, the large clunky beads on your knitting bag pose a different function: security. It’s very difficult to steal a bag that sounds like a wind chime in a violent storm.  
+ [Continue] -> turn

=== self_ns_5 === 
NS5 - That terrible smoke from the lounge is picking up again and you reach for your handkerchief to cover your mouth and nose, but it’s not there! It wasn’t expensive enough to be stolen, so maybe it has been misplaced. Or it fell out of your pocket in a rare moment where you decided to walk about. 
+ [Continue] -> turn

=== self_ns_6 === 
NS6 - You don’t write anything down as a rule. You’re not that sloppy. But you knit and the cardigan that you wear has been getting longer and longer over the years, accumulating more and more of those irregular stitches. To a clever enough eye, to your eye, one can read years and years of invoices and sensitive information, but no one on this train is smart enough to decipher it. 
+ [Continue] -> turn

=== self_ns_7 === 
NS7 - Click, clack. Click, clack go the long steel knitting needles in your hand. They just don’t make them like they used to. The new plastic ones wouldn’t even be able to puncture skin. 
+ [Continue] -> turn

///Body 9///
=== body9_1 ===
Body91 - Boreas wasn't a paranoid man, but he was difficult to surprise. Always wary and nosy, preferring to know anything and everything he could. Yet somehow, someone got the drop on him and bashed his head in from behind with something large. 
+ [Continue] -> turn

=== body9_2 ===
Body92 - Boreas had tucked away his ledger inside his jacket pocket, but the real security was his terrible handwriting. Without knowing what you're looking for, the scribbles created a distracting mess of information. On the most recent pages, there are large deposits made under "alternative shipping fees". 
+ [Continue] -> turn

=== body9_3 ===
Body93 - In Bores' pocket is a small knit hair tie. The stitches on it are irregular and uneven. He must have had this on him for a reason. Maybe it was a message? 
+ [Continue] -> turn

=== body9_4 ===
Body94 - Boreas always had a thick skin and thick skull. Just bashing him on the head wasn't enough to guarantee his death. Underneath his jacket, right over his heart, is a single bullet hole. Someone wanted to make sure he wouldn't recover. 
+ [Continue] -> turn

=== body9_5 ===
Body95 - Something falls to the floor when you pat down Boreas' jacket. It rolls away, but you catch it before it rolls under display case. It looks to be a bead of some sort. 
+ [Continue] -> turn

///Crime Scene 9///
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
CS94 - Handkerchief on floor 
+ [Continue] -> turn 

=== cs_9_5 ===
CS95 - Professionally staged to look like an accident 
+ [Continue] -> turn 

=== cs_9_6 ===
CS96 - Briefcase
+ [Continue] -> turn 

///Inspect Naneh Sarma///
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
INS5 - Missing handkerchief 
+ [Continue] -> turn

=== inspect_ns_6 ===
INS6 - Ledger
+ [Continue] -> turn

=== inspect_ns_7 ===
INS7 - Knitting needles
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
            + [Return] -> turn
        - accuse == 2: 
            Khione innocent
            + [Return] -> turn
        - accuse == 3:
            Ded Moroz innocent
            + [Return] -> turn
        - accuse == 4: 
            Itzlacoliuhqui innocent
            + [Return] -> turn
        - accuse == 5: 
            Marzanna innocent
            + [Return] -> turn
        - accuse == 6: 
            Skadi innocent
            + [Return] -> turn
        - accuse == 7: 
            Hine Takurua innocent
            + [Return] -> turn
        - accuse == 8: 
            Shakok innocent
            + [Return] -> turn
        - else: 
            Naneh Sarma innocent
            + [Return] -> turn
    }

}
