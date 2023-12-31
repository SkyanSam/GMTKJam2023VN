-> EllegardScene

// Implement All the variables first that are in notion
VAR currentNPC = "Bartender"

VAR canSwap = false

VAR canUseTim = false

VAR canUseBarkeeper = false

VAR canUseMaid = false

VAR canUseBard = false

VAR canUsePatroness = false

VAR MCLetter = "A"

VAR MCEmotion = "Neutral"

VAR susMeter = 0

VAR canUseInventory = false

VAR hasAlchoholDrink = true

VAR hasHorseBagScroll = true

VAR hasDarts = true

VAR currentCharacterImage = ""

VAR currentBackground = ""

VAR hasSwitched = 0

=== Exposition ===

This is a game, but you're not the one playing it.
This story is wrong. Set it right.
Your goal is to drive our protagonist towards their destiny.

 -> BartenderScene

===  BartenderScene ===

 ~MCLetter = "C" 
 ~MCEmotion = "Smirk"
 ~currentNPC = "Bartender"

Raymond: "Get me a drink, bartender."
*   Bartender:  What'cha want?
    Raymond:  Beer. Thanks.
*   Bartender:  I've got a name, you know.

 ~MCLetter = "C" 
 ~MCEmotion = "Pissed"

    Raymond:  Don't care. Get me a beer.
*   Bartender:  (Narrow eyes and slide over a glass of beer.)

 ~MCLetter = "C" 
 ~MCEmotion = "Neutral"

- Raymond:  Thanks.

(He leaves three silver coins on the table. They've been stained with mud, soot...and tears.)

(The man hides his face as he takes a swig of his drink.)

*   Bartender:  So, where'd you come from?

 ~MCLetter = "D" 
 ~MCEmotion = "Neutral"

    Raymond: Doesn't matter.
*   Bartender:  Anything else?

 ~MCLetter = "D" 
 ~MCEmotion = "Annoy"

- Raymond: I want another drink...and a room for tonight.

- Bartender: Sure thing. Who's it for?

 ~MCLetter = "C" 
 ~MCEmotion = "Smirk"

Raymond: Feller. Raymond Feller.

*   Bartender: Cool. (Charge 10 coins).

 ~MCLetter = "D" 
 ~MCEmotion = "Neutral"


*   Bartender: Cool. (Charge 20 coins).

 ~MCLetter = "D" 
 ~MCEmotion = "Annoy"



*   Bartender: Sorry, none available.

 ~MCLetter = "D" 
 ~MCEmotion = "Annoy"


- Raymond grumbles and takes a seat at an empty table in the corner by the fire

Press S to swap to another NPC!**

~canSwap = true

~canUseTim = false

~canUseBarkeeper = false

~canUseMaid = true

~canUseBard = false

~canUsePatroness = false

-> DONE

//After this only allow the player to swap to the barmaid

===  EllegardScene ===

 ~MCLetter = "B" 
 ~MCEmotion = "Sad"

*   Ellegard:  Drowning your sorrows?

    Raymond:  Yeah, sure. Something like that.
*   Ellegard:  Need some company?
    Raymond:  Sure. Whatever.

- Ellegard: So, uh, what's your story?

Raymond: (Grunts.) You first.


*   Ellegard :  I've been here...just making a living doing this. Not really a fan of it...
  Patron: That's not true Ellie, you love this work. Ever since yer father made you get a job off that farm...
  (Your suspicion meter rises a bit.)

(This is your suspicion meter. It tells you how close you are to being found out. Keep it as low as possible to keep the story going.)

(If your suspicion meter gets too high, the characters will realize you're not one of them!)
~MCLetter = "B" 
 ~MCEmotion = "Neutral"
 ~ susMeter += 1
  
*   Ellegard :  I'm here to find a hero and...help him out a bit.


  Raymond: Hmm? What did you say? 
  
  (Your suspicion meter rises a lot.)

(This is your suspicion meter. It tells you how close you are to being found out. Keep it as low as possible to keep the story going.)

(If your suspicion meter gets too high, the characters will realize you're not one of them!)
~MCLetter = "B" 
 ~MCEmotion = "Pissed"
 ~ susMeter += 2

-

*Ellegar: Umm, I don't know what I was thinking. 

-> END

*Ellegar: Oh sorry, I just really want to meet a real adventurer...




 ~MCLetter = "B" 
 ~MCEmotion = "Sad"

- Raymond: Well girl, I don't have much to tell. Only person in my life is gone.

Ellegard: That's a start...

Raymond: You heard of Sir Sharpe, right? I was his squire a long, long time ago. Those days are over.

*   Ellegard:  How come?
Raymond: Look, it's not a tale for ladies. Why don't you just piss off and do your job.
Raymond: ...
Raymond: ...sorry, girl. I don't want company.
-> DONE
*   Ellegard:  What happened?

Raymond: Look, it's not a tale for ladies. Why don't you just piss off and do your job.
Raymond: ...
Raymond: ...sorry, girl. I don't want company.


-> DONE
// need to switch
~canUseBard = true
===  BardScene ===

~ hasSwitched += 1
 ~MCLetter = "D" 
 ~MCEmotion = "Neutral"

Raymond: Bard. What are you looking over here for?

*   Red:  I'm seeing the face of someone who needs a little merriment. 
    ~ susMeter += 1
    
    Barkeep: Nice to see you loosen that lead tongue of yours, Red!
*   Red:  Just uh...glancing in your general direction.
Raymond: Sure...
    ~ susMeter += 1
-
*   Red:  I listened in on what..uh, you just said to Ellie.
*   Red:  Heard what you were talking about over there. 
    ~ susMeter += 1
    ~MCLetter = "D" 
    ~MCEmotion = "Annoy"

- Red: Loss can be hard to deal with.

Raymond: What do you know of loss, bard? You traipse around in your boots and your hat... have you ever even experienced hardship?

* Red:  I have. I...uh...lost someone important to me too. Th-they meant a lot to me. 
    ~ susMeter -= 1
    ~MCLetter = "D" 
    ~MCEmotion = "Neutral"
* Red:  No, I haven't. But I can lend an empathetic ear. 
    ~ susMeter += 2
    ~MCLetter = "D" 
    ~MCEmotion = "Neutral"

- Raymond: Sure, bard. (He takes a large swig of his drink.) I watched him die, you know? It's hard when you watch them die...

Red: I'm sorry.

    ~MCLetter = "D" 
    ~MCEmotion = "Annoy"

Raymond: Don't apologize. Don't apologize unless you did it! Unless you killed him! But you didn't kill him... that damned lord did. Bastard killed him in a duel.

Red: I'm sor-

Raymond: Get out of my face. Don't make me talk about this!

-> DONE
// switch



~canUseTim = true
===  TimScene ===
~ hasSwitched += 1

// LABEL: TimScene

Bartender: Oi Tim, come over here, let me get you a drink.

*   Tim:  Yes, sir?
*   Tim:  What is it you want? 
~ susMeter += 1
    
- Bartender: That guy that walked in...Feller, he's got a horse he left here. A beige horse. See to it, would you?

*   Tim:  Walk outside the tavern into the stables.
*   Tim:  Stay in the tavern.

-> END
-

(Raymond's horse stands in a stall with a saddlebag attached to him.)

*   Tim:  (Open the saddlebag.)
    (Inside the saddlebag you see coins stained with some sort of ash, and a scroll.)
    The scroll reads: Today, on the fifth in the season of harvest, the magister confirms the unfortunate passing of Sir Sharpe. He perished during a duel with Lord Corwell, in which the two agreed to fight until first blood. The opponent allegedly drew blood on the Sir's neck, leading to an unlucky demise. Sir Sharpe was a knight in His Majesty's army, and will be remembered for both his honor and his spirit.
    (A good number of the words are crossed out with black ink. There are cliffnotes reading "LIAR," "WRONG," and "TRAITOR.")
*   Tim:  (Leave the saddlebag.)
 -> END
-

-> DONE
~canUsePatroness = true
===  PatronScene ===

    ~MCLetter = "B" 
    ~MCEmotion = "Neutral"

Bartender: ...get you another after you manage to hit the damn board. Laileth, you're too damn drunk to see straight.

*   Patron:  Damn drunk my arse!
    Bartender:  Okay, just... be careful. 'specially around that one over there. (He points a finger at Raymond.)
*   Patron:  You're right. I should probably go home... 

    Bartender:  You've had enough. Just don't get into any scuffles. Especially with that one over there. (He ponts a finger at Raymond.)
 -> END
*   Patron:  I can see just fine.
    Bartender:  You've had enough. Just don't get into any scuffles. Especially with that one over there. (He ponts a finger at Raymond.)

- Patron: Hey. Mind if I sit?

    ~MCLetter = "D" 
    ~MCEmotion = "Annoy"

Raymond: You're the third person today to ask that. What's the deal?

*   Patron:  No deal. I just don't like to see unhappy customers. 
    ~ susMeter += 1
*   Patron:  Look, I know what's happened to you. 
    ~ susMeter += 2

- Raymond: Word travels fast, eh?

    ~MCLetter = "D" 
    ~MCEmotion = "Neutral"


*   Patron:  I know. I know about Sharpe. I know about Corwell. I know how he killed him and how all anyone is doing is sweeping it under the rug. 
    ~ susMeter += 99
    Raymond:  ...you aren't supposed to know this. 
    -> END
*   Patron:  I mean...it's rather obvious, yes? You're sulking.
    Raymond:  I'm not sulking. I'm finding my answers in this bottle of... whatever the hell this is.
*   Patron:  I'm a traveler too. But you're on the wrong path here. 
    Raymond:  'Wrong path.' What do you mean by 'wrong path?' There's no right one to take.
    ~ susMeter += 1

- Patron: There's something for you to do about it.

Patron: You owe this man, Sir Sharpe, for how he took you under his wing.

Patron: You were there when he was killed.

    ~MCLetter = "C" 
    ~MCEmotion = "Pissed"

Patron: They ruled it an accident. Lord Corwell used his influence to get out of it.

Patron: So what are you going to do?

Raymond: I want to kill that son of a swine. (He sighs). I guess that means avenging my- avenging Sir Sharpe.

Patron: Then get off your arse, Feller.

    ~MCLetter = "C" 
    ~MCEmotion = "Smirk"

-> DONE

=== SusMeterTooSus ===

GAMEOVER

-> DONE