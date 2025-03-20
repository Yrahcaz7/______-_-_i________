The story title is "███[']█ █i████". [Dodeca's Divergence]
The story author is "Yrahcaz7".
The story headline is "An █teract█e F█t█n".

Chapter 1 - Setup

Use American dialect and the serial comma. Use no deprecated features.

Include Locksmith by Emily Short.

Does the player mean unlocking with a passkey (this is the likely to mean unlocking with a passkey rule):
	it is likely;

Section 1 - Removing Unnecessary Words

The last command is a text that varies.

The parser error flag is a truth state that varies. The parser error flag is false.

Rule for printing a parser error when the latest parser error is the only understood as far as error and the player's command matches the regular expression "with|of":
	now the last command is the player's command;
	now the parser error flag is true;
	let unnecessary be "[the player's command]";
	replace the regular expression ".* (with|of) (.*)" in unnecessary with "\1 \2";
	say "(ignoring the unnecessary words '[unnecessary]')";
	replace the regular expression "(with|of) .*" in the last command with "";

Rule for reading a command when the parser error flag is true:
	now the parser error flag is false;
	change the text of the player's command to the last command;

Section 2 - New Properties

A thing can be small or big. A thing is usually big. Keychains and passkeys are always small.

A thing can be solid or liquid. A thing is usually solid.

A thing can be heavy or light. A thing is usually heavy. Wearable things, small things, and liquid things are usually light.

A thing can be grounded. A thing is usually grounded. Wearable things and small not fixed in place things are usually not grounded.

A thing has some text called the take objection. The take objection is usually "".

Section 3 - Horns

A horn is a kind of thing. A horn is always small and wearable.

A horn has some text called color. The color of a horn is usually "white".

A horn has some text called command. The command of a horn is usually "_____".

Check examining a horn:
	say "It is a crystalline [the color of the item described] horn with '[the command of the item described]' inscribed on it. The horn feels rather familiar..." instead.

Section 4 - The Player

The player is neuter. The carrying capacity of the player is 4. The description of the player is "You appear to be [if player is wearing something]wearing [a list of things worn by player][else]not wearing anything[end if]. [if we have examined player]You can't remember who you are. You feel more blood trickle down your face.[else]You pause and think for a good while, trying to remember who you are. While thinking, you feel drops of blood trickle down your face. You soon realize this is a waste of time, as you can't remember anything at all. Maybe if you had a mirror...[end if]"

Understand "player" and "yourself" as yourself.

Check eating (this is the can't eat yourself rule):
	if the noun is the player:
		say "No, no, you're not that desperate for food." instead;

The can't eat yourself rule is listed before the can't eat unless edible rule in the check eating rulebook.

Section 5 - New Out-of-World Actions

Requesting help is an action out of world.

Understand "h", "help", "what to do", and "what can/do I do" as requesting help.

Carry out requesting help (this is the annouce help rule):
	say "Actions you can take:[line break]  take inventory  /  inventory  /  i[line break]  take 'things'  /  get 'things'  /  pick 'things' up[line break]  drop 'things'  /  put 'things' down[line break]  put 'things' on 'something'[line break]  eat 'something'[line break]  go 'a direction'  /  'a direction'[line break]  enter 'something'  /  go in 'something'[line break]  exit  /  stand up  /  get out[line break]  look around  /  look[line break]  examine 'something'  /  x 'something'[line break]  look under 'something'[line break]  search 'something'  /  look in 'something'[line break]  lock 'something' (optionally, with 'a key')[line break]  unlock 'something' (optionally, with 'a key')[line break]  open up 'something'  /  open 'something'[line break]  close up 'something'  /  close 'something'[line break]  wear 'something'  /  put 'something' on[line break]  remove 'something'  /  take 'something' off[line break]  throw 'something' at 'something else'[line break]  push 'something'  /  move 'something'[line break]  squeeze 'something'  /  crush 'something'[line break]  press 'a button'  /  push 'a button'[line break]  pour 'something' on 'something else'[paragraph break]Out-of-world actions:[line break]  quit / q[line break]  save[line break]  restore[line break]  restart[line break]  superbrief[line break]  verbose[line break]  brief[paragraph break]You can interact with anything that is in your inventory or the room that you are currently in.";

Requesting the room tally is an action out of world.

Understand "rooms", "room progress/tally", and "exploration progress" as requesting the room tally.

Carry out requesting the room tally (this is the annouce the room tally rule):
	say "You have been to [number of visited rooms] out of [number of rooms] room[s]."

Section 6 - Useless Actions

Screaming is an action applying to one thing.

Understand "scream", "shout", "yell", "scream at/to [something]", "shout at/to [something]", and "yell at/to [something]" as screaming.

Rule for supplying a missing noun while screaming (this is the scream at nothing rule):
	say "You scream fruitlessly.";

Report screaming (this is the standard report screaming rule):
	say "You scream at [the noun] fruitlessly.";

Toileting is an action applying to one thing.

Understand "fart", "toot", "poop", "pee", "urinate", "pass gass", "use the/-- toilet", "fart on [something]", "toot on [something]", "poop on [something]", "pee on [something]", "urinate on [something]" as toileting.

Rule for supplying a missing noun while toileting (this is the don't toilet anywhere rule):
	say "You don't feel the urge to do that right now.";

Report toileting (this is the standard report toileting rule):
	say "You don't think you should do that to [the noun].";

Knocking is an action applying to one thing.

Understand "knock on/-- [something]" as knocking.

Check knocking (this is the can't knock yourself rule):
	if the noun is the player:
		say "You really don't think that's a good idea." instead;

Report knocking (this is the standard report knocking rule):
	say "You knock on [the noun] and wait a little, but nothing happens.";

Section 7 - Walking up to

Walking up to is an action applying to one thing.

Understand "go up/-- to [something]", "walk up/-- to [something]", "jog up/-- to [something]", "run up/-- to [something]", and "dart up/-- to [something]" as walking up to.

Check walking up to (this is the can't walk up to what's held rule):
	if the noun is enclosed by the player:
		say "That doesn't make any sense. You're holding [the noun]." instead;

What the player's by is an object that varies.

Check walking up to (this is the can't walk up to what you're already by rule):
	if the noun is what the player's by:
		say "You're already by [the noun]." instead;

Carry out walking up to (this is the standard carry out walking up to rule):
	now what the player's by is the noun;

Report walking up to (this is the standard report walking up to rule):
	if the player's command matches the regular expression "run|dart":
		say "You run up to [the noun].";
	else:
		say "You walk up to [the noun].";

Carry out exiting (this is the be by what's been exited rule):
	now what the player's by is the container exited from;

Carry out getting off (this is the be by what's been gotten off of rule):
	now what the player's by is the noun;

Carry out going (this is the be by nothing after going rule):
	now what the player's by is nothing;

Carry out entering (this is the be by nothing after entering rule):
	now what the player's by is nothing;

Walking away from is an action applying to one thing.

Understand "walk away", "jog away", "run away", "go away", "get away", "dart away", "walk away from [something]", "jog away from [something]", "run away from [something]", "go away from [something]", "get away from [something]", and "dart away from [something]" as walking away from.

Rule for supplying a missing noun while walking away from (this is the walk away from what you're by rule):
	if what the player's by is something:
		now the noun is what the player's by;
	else:
		say "You're not next to anything in particular right now.";

Check walking away from (this is the can't walk away from what you're not by rule):
	if the noun is not what the player's by:
		say "That doesn't make any sense. You're not next to [the noun]." instead;

Carry out walking away from (this is the standard carry out walking away from rule):
	now what the player's by is nothing;

Report walking away from (this is the standard report walking away from rule):
	if the player's command matches the regular expression "run|dart":
		say "You dart away from [the noun].";
	else:
		say "You walk away from [the noun].";

Section 8 - Horn Powers

XYZZY is an action applying to nothing.

Understand "XYZZY", "say XYZZY", "use XYZZY", and "cast XYZZY" as XYZZY.

Check XYZZY (this is the need XYZZY horn rule):
	say "You lack the power to perform this action." instead;

CHILL is an action applying to nothing.

Understand "CHILL", "say CHILL", "use CHILL", and "cast CHILL" as CHILL.

Check CHILL (this is the need CHILL horn rule):
	say "You lack the power to perform this action." instead;

Section 9 - New Responses

Check eating (this is the can't eat what's big rule):
	if the noun is big:
		if the noun is edible:
			say "That's too big to eat! Doesn't look like you can nibble off any, either..." instead;
		otherwise:
			say "That's too big to eat! Not that it would taste good anyway." instead;

The can't eat what's big rule is listed before the can't eat unless edible rule in the check eating rulebook.

Check pushing (this is the can't push yourself rule):
	if the noun is the player:
		say "Move yourself? Yeah, just walk around." instead;

Check pushing (this is the can't push what's heavy rule):
	if the noun is heavy:
		say "You clearly aren't strong enough to move the [noun]." instead;

Check pushing (this is the can't push what's liquid rule):
	if the noun is liquid:
		say "How are you supposed to push around liquid?" instead;

The can't push what's liquid rule is listed first in the check pushing rulebook.
The can't push what's heavy rule is listed first in the check pushing rulebook.
The can't push yourself rule is listed first in the check pushing rulebook.

Check taking (this is the can't take what objects rule):
	if the take objection of the noun is not empty:
		say "[the take objection of the noun][line break]" instead.

Check taking (this is the can't take what's heavy rule):
	if the noun is heavy:
		say "You clearly aren't strong enough to move the [noun]." instead;

Check taking (this is the can't take what's liquid rule):
	if the noun is liquid:
		say "How are you supposed to take liquid with your hands?" instead;

The can't take what objects rule is listed first in the check taking rulebook.
The can't take what's heavy rule is listed before the can't take other people rule in the check taking rulebook.
The can't take what's liquid rule is listed before the can't take other people rule in the check taking rulebook.

Check looking under (this is the can't look under what's grounded rule):
	if the noun is grounded:
		say "You would need to move the [noun] first." instead;

Check attacking (this is the can't attack yourself rule):
	if the noun is the player:
		say "Harming yourself doesn't seem like a good idea." instead;

The can't attack yourself rule is listed first in the check attacking rulebook.

Check throwing something at (this is the can't throw things at yourself rule):
	if the second noun is the player:
		say "Throwing the [noun] at yourself is probably a bad idea." instead;

The can't throw things at yourself rule is listed first in the check throwing it at rulebook.

First reaching outside a closed liquid container:
	say "You can't reach that from here.";
	deny access;

Section 10 - Buttons

A button is a kind of thing. A button is usually fixed in place and small.

A button can be pressed or unpressed. A button is usually unpressed.

A button has a number called the duration. The duration of a button is usually 1.

A button has a number called the timer. The timer of a button is usually -1.

Understand the command "press" as something new.

Pressing is an action applying to one thing.

Understand "press [thing]" as pressing.

Check pressing something that is not a button (this is the can't press what's not a button rule):
	say "You can't press that." instead;

Check pressing a pressed button (this is the can't press what's already pressed rule):
	say "[The noun] is already pressed." instead;

Carry out pressing a button (this is the standard pressing rule):
	now the noun is pressed;
	now the timer of the noun is the duration of the noun;

Report pressing (this is the standard report pressing rule):
	say "You press [the noun].";

Instead of attacking, touching, pushing, squeezing, or rubbing a button:
	try pressing the noun;

Check throwing something at (this is the throw things at buttons rule):
	if the second noun is a button and the second noun is not pressed:
		if the noun is not held:
			carry out the implicitly taking activity with the noun;
			if the noun is not held:
				stop the action;
		silently try pressing the second noun;
		now the noun is in the location;
		say "You throw [the noun] at [the second noun], pressing it. [The noun] falls onto the floor." instead;

The throw things at buttons rule is listed before the futile to throw things at inanimate objects rule in the check throwing it at rulebook.

Letting time pass for something is an activity.

Rule for letting time pass for something (called the item):
	if the item is a button:
		if the timer of the item is 0:
			now the item is unpressed;
			say "You hear a click as [the item] unpresses itself.";
		if the timer of the item is at least 0:
			decrement the timer of the item;

Section 11 - Fluid Receptacles

Fluid is a kind of value. The fluids are air, putrid, and water.

Understand "liquid" and "putrid liquid" as putrid. Understand "clear" and "clear water" as water.

A fluid has some text called the name. The name of a fluid is usually "empty".

The name of putrid is "putrid liquid". The name of water is "clear water".

A fluid has some text called the description. The description of a fluid is usually "nothing".

The description of putrid is "strange liquid emitting a putrid smell". The description of water is "crystal clear water".

A fluid receptacle is a kind of thing.

A fluid receptacle has a fluid called the content. The content of a fluid receptacle is usually air.

Understand the content property as describing a fluid receptacle.

Rule for printing the name of a fluid receptacle:
	if the content of the item described is air:
		say "[the name of the content of the item described] [the printed name of the item described]";
	else:
		say "[the printed name of the item described] of [the name of the content of the item described]";

Check examining a fluid receptacle:
	if the content of the item described is air:
		say "[the description of the item described] It appears to be empty." instead;
	else:
		say "[the description of the item described] You can see [the description of the content of the item described] inside." instead;

Check inserting something into (this is the can't insert what's not liquid into fluid receptacles rule):
	if the noun is not liquid and the second noun is a fluid receptacle:
		say "The [noun] can't fit inside the [second noun]." instead;

The can't insert what's not liquid into fluid receptacles rule is listed before the convert insert to drop where possible rule in the check inserting it into rulebook.

Section 12 - Pouring it on

Pouring it on is an action applying to two things.

Understand "pour [something preferably held] on/onto/into/inside [something]", "pour [something preferably held]'s content/contents on/onto/into/inside [something]", and "pour the content/contents of [something preferably held] on/onto/into/inside [something]" as pouring it on.

Check pouring something on (this is the can't pour what's not held rule):
	if the noun is not held:
		carry out the implicitly taking activity with the noun;
		if the noun is not held:
			stop the action;

Check pouring something on (this is the can't pour what's not a fluid receptacle rule):
	if the noun is not a fluid receptacle:
		say "That would probably be a bad idea." instead;

Check pouring something on (this is the can't pour what's empty rule):
	if the content of the noun is air:
		say "There's nothing in the [the printed name of the noun] to pour out." instead;

The can't pour what's empty rule is listed first in the check pouring it on rulebook.
The can't pour what's not a fluid receptacle rule is listed first in the check pouring it on rulebook.
The can't pour what's not held rule is listed first in the check pouring it on rulebook.

Carry out pouring something on (this is the standard pouring rule):
	say "You pour the [the name of the content of the noun] from the [the printed name of the noun] all over [the second noun].";
	now the content of the noun is air;

Check inserting something into (this is the convert insert to pour where possible rule):
	if the noun is a fluid receptacle and the second noun is not an open container:
		try pouring the noun on the second noun instead;

The convert insert to pour where possible rule is listed first in the check inserting it into rulebook.

Section 13 - Drinking

Understand nothing as drinking.

Understand "drink [something preferably held]" and "drink all of/-- [something preferably held]" as drinking.

The block drinking rule is not listed in the check drinking rulebook.

Check drinking (this is the drinking from fluid receptacles rule):
	if the noun is a fluid receptacle:
		if the noun is not held:
			carry out the implicitly taking activity with the noun;
			if the noun is not held:
				stop the action;
		if the content of the noun is air:
			say "The [the printed name of the noun] is clearly empty." instead;
		else if the content of the noun is putrid:
			say "The [the name of the content of the noun] in the [the printed name of the noun] is obviously not potable." instead;
		else:
			say "You drink all of the [the name of the content of the noun] in the [the printed name of the noun].";
			now the content of the noun is air instead;

Check drinking (this is the can't drink what's not liquid rule):
	if the noun is not liquid:
		say "How would you drink something that's solid?" instead;

Check drinking (this is the can't drink what's big rule):
	if the noun is big:
		if the noun is edible:
			say "There's too much of that to drink all of it, but you can manage a few handfuls. It tastes fine, not particularly good or bad." instead;
		else:
			say "There's way too much of that to drink all of it! Not that it would taste good anyway." instead;

Check drinking (this is the can't drink what's not edible rule):
	if the noun is not edible:
		say "That's obviously not potable." instead;

Carry out drinking (this is the standard carry out drinking rule):
	if the noun is not held and the noun is not heavy and the noun is not part of something and the noun is not scenery and the noun is not fixed in place:
		carry out the implicitly taking activity with the noun;
		if the noun is not held:
			stop the action;
	now the noun is off-stage;

Report drinking (this is the standard report drinking rule):
	say "You drink [the noun]. Not bad.";

Check eating (this is the convert eating to drinking where possible rule):
	if the noun is liquid:
		try drinking the noun instead;
	else if the noun is a fluid receptacle and the content of the noun is not air:
		try drinking the noun instead;

The convert eating to drinking where possible rule is listed first in the check eating rulebook.

Section 14 - Understanding

Understand "walk", "jog", "run", "travel", "walk [direction]", "jog [direction]", "run [direction]", and "travel [direction]" as going.

Understand "throw away [things preferably held]", "throw [things preferably held] away", "toss [things preferably held]", and "trash [things preferably held]" as dropping.

Understand "jump in/into/on/onto [something]" as entering.

Understand "look around", "x the/-- room", "examine the/-- room", and "look through/around/at/-- the/-- room" as looking.

Understand "open up [something]" as opening.

Understand "move [something]", "move aside [something]", "move [something] aside", "move [something] out of the way", "push aside [something]", "push [something] aside", and "push [something] out of the way" as pushing.

Understand "throw [something preferably held] at/against [something]", "toss [something preferably held] at/against [something]", "fling [something preferably held] at/against [something]", "swing [something preferably held] at/against [something]", "hurl [something preferably held] at/against [something]", and "chuck [something preferably held] at/against [something]" as throwing it at.

Understand "fill [something] with [other things]" as inserting it into (with nouns reversed).

Understand "beat [something]", "harm [something]", "hit [something]", "stab [something]", "strike [something]", "bash [something]", "punch [something]", and "smack [something]" as attacking.

Understand "crush [something]" as squeezing.

Understand "lick [something]" as tasting.

Understand nothing as removing it from.

Understand "take [something] from/off [something]", "get [something] from [something]", and "remove [something] from [something]" as removing it from.

Chapter 2 - The Old Prison

The Old Prison is a region.

Section 1 - The Overgrown Prison Cell

When play begins:
	say "You wake up in an old prison cell, lying in a pool of blood in the middle of the floor.";

The Overgrown Prison Cell is a room. "It appears to have been abandoned long ago. Various plants are growing in many cracks in the floor. On the east side of the room, there is a [broken bars] with a hallway past them.[if the player is in the pool of blood] Lying in a pool of blood feels unnerving... maybe you should get up soon.[end if]". The Overgrown Cell is in the Old Prison.

Check going outside when the player is in the Overgrown Cell:
	try going east instead;

The large pool of blood is an enterable closed unopenable transparent liquid container in the Overgrown Cell. "You can see a large pool of blood in the middle of the floor." The description of the pool of blood is "Unlike everything else in the room, the blood appears to be new, as it has not yet dried."

Understand "puddle", "large puddle", "puddle of blood", and "large puddle of blood" as the pool of blood.

Instead of taking, tasting, or drinking the pool of blood:
	if the player is in the pool of blood:
		say "You feel a bit queasy and decide to close your eyes for a bit instead.";
	else:
		say "You feel a bit queasy and decide to look away instead.";

Check exiting from the pool of blood:
	say "You stand up, dripping with blood.";
	now the player is in the Overgrown Cell;
	now what the player's by is the pool of blood instead;

Check entering the pool of blood:
	say "You really don't want to lay back down in that." instead;

The player is in the pool of blood.

The player wears some rags. The description of the rags is "Tattered gray rags that provide virtually no warmth. They are covered in bloodstains which are likely yours. Perhaps the rags were once fashionable clothing, but there is no way to tell now."

Instead of taking off or dropping the worn rags:
	say "The rags aren't very useful, but they're better then nothing. Better keep them on.";

Check eating the worn rags:
	say "The rags aren't very useful, but they're better then nothing. Better not eat them." instead;

The various plants are small scenery in the Overgrown Cell. "There seems to be a great variety of plants growing, but you don't remember what any of them are called." The take objection of the plants is "You can't bring yourself to rip the little plants out of the floor."

Check eating the plants:
	say "You're not THAT hungry, are you?" instead;

The pair of cracked handcuffs is in the Overgrown Cell. "You can see a pair of cracked handcuffs in the corner of the room." The handcuffs are wearable. The description of the handcuffs is "The damaged handcuffs appear to be made out of an exotic material that is different from everything else you can see around you."

Understand "cuffs", "hand cuffs", and "handcuffs" as "[cuffs]".

Understand "[cuffs]", "cracked [cuffs]", "pair of [cuffs]", "pair of cracked [cuffs]", and "cracked pair of [cuffs]" as the handcuffs.

Report wearing the handcuffs:
	say "You manage to squeeze your left hand into the handcuff that has more cracks. You can't manage to get your right hand in the other handcuff, though. Maybe this wasn't such a great idea." instead;

Instead of taking off or dropping the worn handcuffs:
	say "You struggle to squeeze your left hand out of the handcuff you put it in. Eventually you give up. Maybe putting it on wasn't that great of an idea.";

Section 2 - The Hall of Prison Cells

The Hall of Prison Cells is a room. "It has a few different cells along each wall, all of which are eerily empty. There is a glowing orb attached to one of the walls that is lighting up the hall and most of the cells. The hallway [if pile is open]leads both north and south, as the [pile] in the south has been pushed aside[else]is blocked by a [pile] in the south, but it seems to lead somewhere northwards[end if]." The Hall is in the Old Prison.

Report going to the Hall for the first time:
	say "You step out of the cell into the hall.";

The rusted broken cell bars is east of the Overgrown Cell and west of the Hall. The broken bars is an open door. The broken bars is not openable. The printed name of the broken bars is "set of rusted and broken cell bars". The description of the broken bars is "The bars seem broken beyond repair. [if the location is Overgrown Cell]You can probably just walk out of the cell at this point[else]They look marginally older than all of the other cell's bars[end if]."

The glowing orb is scenery in the Hall. "Apon closer inspection, you see that the orb has a transparent outer layer and a glowing inner layer, both made out of materials you don't recognize. The outer layer appears to have many cracks in it but is still holding together."

The mostly transparent shard is a small thing. "You can see a mostly transparent shard lying on the floor[if the location is Hall] underneath the glowing orb[end if]." The description of the shard is "Taken from the outer layer of one of the glowing orbs in the prison. You wonder if it has any use."

Check taking the orb:
	if the location of the shard is nowhere:
		move the shard to the location;
		say "You can't take it as it's mounted to the wall. However, you do manage to break off a shard from the outer layer." instead;
	else:
		say "You can't take it as it's mounted to the wall. There doesn't seem to be any more loose pieces of the outer layer, either." instead;

The pile of rubble is a closed door. The pile is south of the Hall. The pile is not openable. The description of the pile is "It seems to be made out of the same sturdy material as the walls. This rubble was likely part of the ceiling before. There are both large and small pieces of rubble in the pile."

Check going south in the Hall when the pile is closed:
	say "The south end of the hall is filled with rubble. You lack the strength to move it." instead;

The piece of rubble is a small thing. "You can see a small piece of rubble sitting on the ground." The description of the piece is "Taken from a pile of rubble that likely used to be a part of the ceiling of the prison. You wonder if it has any use."

Understand "small piece", "small rubble", and "small piece of rubble" as the piece.

Check taking the pile:
	if the location of the piece is nowhere:
		move the piece to the location;
		say "You search around and find small piece of rubble. You swiftly extract it from the giant pile and it falls on the floor." instead;
	else:
		say "You can't find any more small pieces of rubble in the pile that you can easily extract." instead;

Section 3 - The Prison Lobby

The Prison Lobby is north of the Hall of Prison Cells. "It is very spacious and it seems to lead to many different hallways and rooms in different directions. There are many glowing orbs attached to the ceiling in different spots, lighting up the lobby with a pleasant glow. The [front door] in the north appears to be [if front door is open]open[else]closed[end if]. There is also a [decaying door] in the east, a [secure door] in the southeast, and a hallway to the west." The Lobby is in the Old Prison.

Report going to the Lobby for the first time:
	say "You walk down the hallway into the lobby.";

Check going outside when the player is in the Lobby:
	try going north instead;

The glowing orbs are scenery in the Lobby. "These orbs seem to be the same as the other glowing orbs found elsewhere in the prison. Judging by how old everything in the prison looks, the orbs must retain their glow for a very long time." The take objection of the orbs is "[The orbs] are too high up to reach."

The front door of the prison is north from the Lobby. The front door is a closed locked door. The indefinite article of the front door is "the". The description of the front door is "It is a large, sturdy door with an elaborate design carved into it depicting a caged devil. It seems to be made out of the same material as the cell bars, and it is similarly rusty. It appears to be [if open]open[else]closed[end if] and [if unlocked]un[end if]locked."

The reception desk is in the Lobby. "You can see what seems to be a reception desk near the front door." The description of the desk is "It looks fairly old and is barely holding together, as it is made out of rotting wood. There seems to be some kind of design carved on the side, but the wood is too rotten to make out what it once was."

The inkwell is a small thing supported by the desk. The description of the inkwell is "A small inkwell. There seems to be very little ink in it, [if wet]but what is left seems to be still usable[otherwise]and what is left appears to be all dried up[end if]."

The inkwell can be dry or wet. The inkwell is dry.

Understand "ink" and "ink well" as the inkwell.

The key ring is a keychain supported by the desk. The description of the key ring is "Dissapointingly, all of the keys seem to have been taken off of it except one."

Understand "keyring", "keychain", and "key chain" as the key ring.

The badly bent key is a passkey that is on the key ring. The description of the bent key is "It doesn't look like it can unlock anything anymore, but I suppose it doesn't hurt to try."

The old hat is supported by the desk. The old hat is wearable. The description of the old hat is "It's so old it seems to be coming apart at the seams, growing mold, and decaying all at once.[if we have not examined old hat] You're surprised it's still intact.[end if]"

Report wearing the old hat:
	say "You don the old, dilapidated hat. You don't feel much more fashionable than before." instead;

The lockers are in the Lobby. "There are many lockers in the northeast corner of the room." The description of the lockers is "The lockers are fairly rusty, some more so than others. There seems to be some kind of writing on each locker, but it seems to be written in a language you don't recognise. One of the lockers appears to be doorless."

The writing is a part of the lockers. The description of the writing is "Across all of the writing, you can only make out ten distinct characters, but you don't know what any of them mean."

The doorless locker is a part of the lockers. The doorless locker is an open unopenable light container. The description of the doorless locker is "For some reason, this locker seems to have no door on its hinges. There appears to be a piece of paper inside it that has been stuck to its backside."

The piece of paper is a small scenery in the doorless locker. "It is hard to tell what is drawn on it due to the passage of time, but you can barely make out what looks like the head of a devil. You can also see something written below the picture that you don't know how to read." The take objection of the paper is "The paper is very well stuck to the inside of the locker. You don't want to try harder in case the paper rips. It could be important clue."

Section 4 - The Storage Room

The Storage Room is a room. "There are bits of destroyed things and litter on the floor. You also see a few bloodstains scattered around on the floor and the things on it. The [decaying door] is on the west side of the room." The Storage is in the Old Prison.

Check going outside when the player is in the Storage:
	try going west instead;

The decaying door is east of the Lobby and west of the Storage. The decaying door is an open door. The decaying door is not openable. The description of the decaying door is "It is a decaying wood door that leads to [if the location is Lobby]what looks like a ransacked storage room[else]the prison lobby[end if]."

The litter is scenery in the Storage. "Among the bits scattered across the floor, you can see sharp green fragments, soft black fragments, and very small specks."

Understand "destroyed things", "destroyed litter", "bits of things", "bits of litter", "bits of destroyed things", "bits of destroyed litter", "bits of things and litter", "destroyed things and litter", and "bits of destroyed things and litter" as litter.

The sharp green fragments is a small scenery in the Storage. "These sharp fragments seem like they might be from some kind of weapon breaking, but you're not too sure." The take objection of the green fragments is "You don't think that's a good idea... there's no good place to grab them from."

The soft black fragments is a small scenery in the Storage. "These soft fragments seem like they might have once been food, but you're not too sure. When you get too close, you notice a foul smell."

The small black mush is a small edible thing.

Check taking the black fragments:
	if the location of the mush is nowhere:
		move the mush to the location;
		silently try player taking the mush;
		if the player carries the mush:
			say "You search for the least smelly black fragment and pick it up." instead;
		else:
			now the mush is nowhere instead;
	else:
		say "You really don't think you need another." instead;

Report eating the mush:
	say "As you eat [the mush], an unpleasant sourness fills your mouth. You don't feel noticeably more full." instead;

The small specks are small scenery in the Storage. "They have greatly varied colors and concentrations throughout the room. The area near the door has the most specks, and most of those are brown or red." The take objection of the specks is "You can't manage to scrape any of the specks off of the floor."

The bloodstains are small scenery in the Storage. "The bloodstains seem to have dried long ago... except for a few fresh ones. Oh yeah, your head is bleeding! You can't believe you forgot about that."

Understand "blood", "stains", and "blood stains" as bloodstains.

The strange slate is in the Storage. "You can see a strange slate on the north wall of the room." The slate is fixed in place. The description of the slate is "It is attached to the wall fairly high up. On the slate, there are what appear to be four buttons arranged in a grid. The lower-right button appears to be cracked. You can also see a strange design in the middle of the button grid."

The upper-left button is a button that is a part of the strange slate. The description of the upper-left button is "It seems to have a drawing of a left hand engraved on it. The button is currently [if unpressed]un[end if]pressed."

Understand "u-l/ul button/--" and "upper/u left/l button/--" as the upper-left button.

After pressing the upper-left button:
	if the player is wearing the handcuffs:
		if the lower-left button is pressed:
			say "As you press the upper-left button with your left hand, the loose handcuff smacks into the lower-left button, but it's already pressed.";
		else:
			silently try pressing the lower-left button;
			say "As you press the upper-left button with your left hand, the loose handcuff smacks into the lower-left button and presses it as well.";
	else:
		continue the action;

The upper-right button is a button that is a part of the strange slate. The description of the upper-right button is "It seems to have a drawing of a right hand engraved on it. The button is currently [if unpressed]un[end if]pressed."

Understand "u-r/ur button/--" and "upper/u right/r button/--" as the upper-right button.

The lower-left button is a button that is a part of the strange slate. The description of the lower-left button is "It seems to have a drawing of a left hand engraved on it. The button is currently [if unpressed]un[end if]pressed."

Understand "l-l/ll button/--" and "lower/l left/l button/--" as the lower-left button.

The lower-right button is a pressed button that is a part of the strange slate. The description of the lower-right button is "It seems to have a drawing of a right hand engraved on it, but it is hard to tell with all the cracks running through the design. The button seems to be stuck in a pressed state."

Understand "l-r/lr button/--" and "lower/l right/r button/--" as the lower-right button.

The rusty key is a passkey. The description of the rusty key is "It is incredibly rusty but still intact. Maybe it unlocks a door somewhere?".

Every turn:
	if the location of the rusty key is somewhere:
		do nothing;
	else if the upper-left button is pressed and the upper-right button is pressed and the lower-left button is pressed:
		move the rusty key to the location;
		say "You hear a snapping sound from above and a rusty key falls onto the floor.";
	else:
		repeat with item running through buttons that are a part of the slate:
			carry out the letting time pass activity with the item;

The strange design is a part of the strange slate. The description of the strange design is "It looks like a '∞' carved into the center of the slate. The design looks somewhat familiar, but you're not quite sure what it means..."

The large crate is an open container in the Storage. "[if the ominous hole is open][The crate] that used to be in the corner is now against the south wall[else]There appears to be [a crate] in the corner[end if]."

Carry out examining the crate:
	say "The crate appears to be decaying, but it is in a much better state than the door. Whatever was inside the crate was likely stolen, as there is only some white fluff that appears to be packing material";
	if the number of not scenery things contained by the crate is one:
		say " and [list of not scenery things contained by the crate]";
	else if the number of not scenery things contained by the crate is greater than one:
		say " and some items you put inside: [list of not scenery things contained by the crate]";
	say " inside." instead;

Check closing the crate:
	say "You don't see the lid of the crate anywhere." instead;

The white fluff is scenery inside the crate. "All of the fluff in the crate seems to be interconnected. You haven't seen anything like this material before." The take objection of the fluff is "It seems to be connected to the inside of the crate. When you pull on the fluff you almost feel as if someone trying to pull it the opposite direction as you."

Understand "packing", "material", and "packing material" as fluff.

Section 5 - The Dark Prison Cell

The Dark Prison Cell is a room. "You can't see very well in here due to the lack of light. The [sturdy bars] leading to the hallway are on the west side of the room." The Dark Cell is in the Old Prison.

Check going outside when the player is in the Dark Cell:
	try going west instead;

The sturdy cell bars is east of the Hall and west of the Dark Cell. The sturdy bars is a locked door. The rusty key unlocks the sturdy bars. The printed name of the sturdy bars is "set of sturdy cell bars". The description of the sturdy bars is "[if the location is Hall]Like most of the cell's bars, they seem oddly sturdy even though they are rusty. [end if]There seems to be a section that can open like a door[if locked], but it appears to be locked[end if]. The bars are on the [if the location is Hall]east side of the hallway. The cell beyond the bars is very dimly lit[else]west side of the room[end if]."

The moldy rucksack is a wearable player's holdall in the Dark Cell. "You can barely make out a moldy rucksack on the floor in the darkness." The description of the rucksack is "Surprisingly, it is still intact despite it looking quite old and frankly somewhat dilapidated. When you look inside the rucksack, your head starts aching as your brain tries to comprehend the inconceivably large space inside."

Understand "sack", "ruck sack", "moldy sack", and "moldy ruck sack" as the rucksack.

The crushed bottle is a small fluid receptacle in the rucksack. The description of the bottle is "It is made out of a strange material that is white but somewhat see-through. It appears to be very crushed and has a small opening [if the shaker cap is a part of the bottle]that is now covered by [the shaker cap][else]where it seems like a cap used to be[end if]."

To attach the shaker cap to the crushed bottle:
	if the shaker cap is not part of the bottle:
		if the shaker cap is not held:
			carry out the implicitly taking activity with the shaker cap;
			if the shaker cap is not held:
				stop the action;
		now the shaker cap is part of the bottle;
		say "You try putting [the shaker cap] on [the bottle] and it snaps on perfectly.";

Check putting the shaker cap on the bottle:
	attach the shaker cap to the crushed bottle instead;

Check tying the shaker cap to the bottle:
	attach the shaker cap to the crushed bottle instead;

Check removing the shaker cap from the bottle:
	if the shaker cap is part of the bottle:
		say "You try to take [the shaker cap] off [the bottle], but it's stuck on very tight." instead;

Check taking the shaker cap:
	if the shaker cap is part of the bottle:
		say "You try to take [the shaker cap] off [the bottle], but it's stuck on very tight." instead;

Check drinking the bottle:
	if the shaker cap is part of the bottle:
		say "You try to drink all of the [the name of the content of the bottle] in the [the printed name of the bottle], but only a tiny bit of [the name of water] dribbles into your mouth." instead;

To crush the bottle:
	if the bottle is not held:
		carry out the implicitly taking activity with the bottle;
		if the bottle is not held:
			stop the action;
	if the shaker cap is part of the bottle:
		now the shaker cap is in the location;
		if the content of the bottle is air:
			say "You squeeze [the bottle] as hard as you can, and [the shaker cap] flies off!";
		else:
			say "You squeeze the [the printed name of the bottle] as hard as you can, and the [the name of the content of the bottle] spews everywhere as [the shaker cap] flies off!";
	else if the content of the bottle is air:
		say "You try to squeeze [the bottle], but you can't make it any more crushed than it already is.";
	else:
		say "You squeeze the crushed bottle as hard as you can, and the [the name of the content of the bottle] spews everywhere!";
	now the content of the bottle is air;
	now the player holds the bottle;

Check attacking the bottle:
	crush the bottle instead;

Check squeezing the bottle:
	crush the bottle instead;

Check throwing the bottle at something:
	if the bottle is not held:
		carry out the implicitly taking activity with the bottle;
		if the bottle is not held:
			stop the action;
	if the shaker cap is part of the bottle:
		now the shaker cap is in the location;
		if the content of the bottle is air:
			say "You throw [the bottle] at [the second noun], and when it hits, [the shaker cap] flies off!";
		else:
			say "You throw [the bottle] at [the second noun], and when it hits, the [the name of the content of the bottle] spews everywhere as [the shaker cap] flies off!";
	else if the content of the bottle is air:
		say "You throw [the bottle] at [the second noun]. It doesn't seem very effective.";
	else:
		say "You throw [the bottle] at [the second noun], and when it hits, the [the name of the content of the bottle] spews everywhere!";
	now the content of the bottle is air;
	now the bottle is in the location instead;

Check pouring the bottle on the inkwell:
	if the bottle is not held:
		carry out the implicitly taking activity with the bottle;
		if the bottle is not held:
			stop the action;
	if the shaker cap is part of the bottle:
		now the inkwell is wet;
		say "You try to pour the [the name of the content of the bottle] in the [the printed name of the bottle] out, and a tiny bit of [the name of water] dribbles over the ink in [the inkwell]. The ink might be usable now." instead;
	else:
		say "That would probably be a bad idea. Maybe if you could dribble a little [the name of water]..." instead;

To reveal the secret hole:
	if the bottle is not held:
		carry out the implicitly taking activity with the bottle;
		if the bottle is not held:
			stop the action;
	if the the ominous hole is closed:
		now the ominous hole is open;
		say "You pour the [the name of the content of the bottle] in the [the printed name of the bottle] all over [the white fluff], and your ears are blasted by a horrid screeching. The fluff seems to be moves rapidly back and forth, trying to shake the [the name of the content of the bottle] off of it. As it does so, [the crate] slides along the floor, revealing [a ominous hole] beneath where the crate once was.";
	else:
		say "You pour the [the name of the content of the bottle] in the [the printed name of the bottle] all over [the white fluff], and your ears are blasted by a horrid screeching. The fluff seems to be moves rapidly back and forth, trying to shake the [the name of the content of the bottle] off of it. You start to feel guilty for torturing the mysterious creature.";
	now the content of the bottle is air;

Check pouring the bottle on the large crate:
	if the shaker cap is not part of the bottle:
		reveal the secret hole instead;

Check pouring the bottle on the white fluff:
	if the shaker cap is not part of the bottle:
		reveal the secret hole instead;

Check pouring the bottle on something:
	if the bottle is not held:
		carry out the implicitly taking activity with the bottle;
		if the bottle is not held:
			stop the action;
	if the shaker cap is part of the bottle:
		say "You try to pour the [the name of the content of the bottle] in the [the printed name of the bottle] out, but only a tiny bit of [the name of water] dribbles over [the second noun]." instead;

Section 6 - The Crumbling Hallway

The Crumbling Hallway is west of the Prison Lobby. "The walls are covered with an alarming amount of cracks. The only light is coming from the lobby to the east and two rooms to the south and west. In the west, there are [windowed double doors], but there are no doors to the room in the south." The Hallway is in the Old Prison.

The cracked walls are scenery in the Hallway. "There are so many cracks in the walls that you wonder why the hallway hasn't collapsed yet. You can also see a drawing on one of the walls that seems to be made from some kind of green substance."

Understand "wall" and "cracked wall" as the walls.

The green drawing is scenery in the Hallway. "The green drawing on the north wall seems to depict an arm with its hand pointing west. The fingernails on the hand seem unusually long."

Section 7 - The Prison Kitchen

The Prison Kitchen is a room. "It appears to be infested with rats, but whenever you see a rat, it darts away faster than you can track it. There are a lot of rat droppings on the floor. On the east side of the room, there are [double doors] leading back to the hallway." The Kitchen is in the Old Prison.

The windowed double doors are west of the Crumbling Hallway and east of the Kitchen. The double doors are a closed door. The indefinite article of the double doors is "the". The description of the double doors is "They appear to be made out of a strange shiny material that only has a few cracks in it. The [if open]open[else]closed[end if] doors [if the location is Crumbling Hallway]seem to lead to a room with many rats in it[else]lead back to the crumbling hallway[end if]."

Understand "door", "windowed door", "double door", and "windowed double door" as the double doors.

Report going to the Kitchen for the first time:
	say "You walk down the hallway into the kitchen. You see some gray rats flee out of the corner of your eye.";

The rat poops are small scenery in the Kitchen. "The spindle-shaped [poops] are littered all over the floor." The printed name of the poops is "rat droppings".

Understand "poop", "rat poop", "droppings", and "rat droppings" as the poops.

Check eating the poops:
	say "Eat [the poops]? No, you're not that crazy." instead.

Instead of taking, touching, pulling, pushing, squeezing, or rubbing the poops:
	say "[The poops] are clearly too disgusting to touch."

The counter is in the Kitchen. "You can see a counter that seems to extend out from the west wall." The description of the counter is "It seems to be made out of a fairly sturdy material, yet there are still gnawing marks on it."

Understand "countertop" as the counter.

The broken salt shaker is a small thing on the counter. The description of the salt shaker is "The side has a hole in it and all of the contents are missing."

The shaker cap is a small thing. "You can see a small shaker cap sitting on the ground." The description of the cap is "A shaker cap taken from a broken salt shaker in the prison. You wonder if it has any use."

The glass shards are a small thing. "There are many glass shards littering the floor." The description of the shards is "Shards from a broken salt shaker in the prison. They seem to be too sharp to touch safely." The take objection of the shards is "You don't think that's a good idea... there's no good place to grab them from."

To break the salt shaker:
	["now the location of the the salt shaker is nowhere" does not work here due to a weird runtime error where it tries to move the player instead. there is a strange work-around where the location is set to somewhere and then nowhere (which works but causes a "programming error", saying "property component_parent does not exist", whatever that means). all in all, it's much simpler to use "now the salt shaker is off-stage" because it doesn't trigger the error for some reason.]
	now the salt shaker is off-stage;
	move the cap to the location;
	move the shards to the location;

Check waving the salt shaker:
	if the salt shaker is not held:
		carry out the implicitly taking activity with the salt shaker;
		if the salt shaker is not held:
			stop the action;
	break the salt shaker;
	say "You wave [the salt shaker] around and it accidentally hits something and breaks apart. Glass shards litter the floor and [the cap] rolls to your feet." instead;

Check swinging the salt shaker:
	if the salt shaker is not held:
		carry out the implicitly taking activity with the salt shaker;
		if the salt shaker is not held:
			stop the action;
	break the salt shaker;
	say "You swing [the salt shaker] around and it accidentally hits something and breaks apart. Glass shards litter the floor and [the cap] rolls to your feet." instead;

Check throwing the salt shaker at something:
	if the salt shaker is not held:
		carry out the implicitly taking activity with the salt shaker;
		if the salt shaker is not held:
			stop the action;
	break the salt shaker;
	say "You throw [the salt shaker] at [the second noun] and it breaks apart. Glass shards litter the floor and [the cap] rolls to your feet." instead;

The bite marks are scenery in the Kitchen. "Everything around you is riddled with bite marks. It looks like the rats have done quite a number on this room."

Understand "bite/gnaw/biting/gnawing marks/mark/--" and "mark" as the bite marks.

The icebox is in the Kitchen. "You can see an icebox in the southwest corner of the room." The description of the icebox is "A white icebox that has a top drawer for containing ice ([if the top drawer is open]in which is [list of things contained by the top drawer][else if the top drawer is locked]locked[else]closed[end if]) and a bottom compartment for storing food ([if the bottom compartment is open]in which is [list of things contained by the bottom compartment][else]closed[end if]). It has bite marks all over it.[if the top drawer is open or the bottom compartment is open] Just standing near makes you feel cold.[end if]"

Understand "ice box", "cold closet", "refrigerator", and "freezer" as the icebox.

The top drawer is a locked container that is part of the icebox. The description of the top drawer is "The top drawer of the icebox, used for storing ice. It appears to [if open]have [list of things contained by the top drawer] inside[else if locked]be locked[otherwise]be closed[end if]."

Check unlocking keylessly the icebox:
	try unlocking keylessly the top drawer instead;

Check unlocking the icebox with something:
	try unlocking the top drawer with the second noun instead;

Check locking keylessly the icebox:
	try locking keylessly the top drawer instead;

Check locking the icebox with something:
	try locking the top drawer with the second noun instead;

The CHILL horn is a horn in the top drawer. The color of the CHILL horn is "light blue". The command of the CHILL horn is "CHILL".

The bottom compartment is an open openable container that is part of the icebox. The description of the bottom compartment is "The bottom compartment of the icebox, used for storing food. It appears to [if open]have [list of things contained by the bottom compartment] inside[else]be closed[end if]."

Section 8 - The Prison Washroom

The Prison Washroom is south of the Crumbling Hallway. "There seem to be various stalls and sinks, but most of them seem destroyed. One of the sinks has a [stream] running out of its faucet." The Washroom is in the Old Prison.

The stalls are scenery in the Washroom. "They look like they have been crushed by a large force. The doors to all of the stalls except the stall in the corner have been crushed to the point where they are unopenable."

The stall in the corner is a locked enterable scenery container in the Washroom. "The door to the [stall] seems to be locked from the inside."

The sinks are scenery in the Washroom. "They seem to be made out of a similar material to the walls, but it appears to be slightly different. All of the sinks are destroyed beyond repair except for the one nearest to the hallway."

The sink nearest to the hallway is a scenery supporter in the Washroom. "The [sink] seems to be stuck having water continually flow out of the faucet and into its drain."

The stream of liquid is a liquid thing in the Washroom. The description of the stream is "It seems to be a stream of some manner of putrid liquid, which is likely not potable. You can see spiky shards of various colors within it."

To catch the stream of liquid with the crushed bottle:
	if the content of the crushed bottle is not air:
		say "The [crushed bottle] is already full.";
	else if the shaker cap is part of the crushed bottle:
		now the content of the crushed bottle is water;
		say "The [the name of putrid] slowly trickles through the [shaker cap] into the crushed bottle, being filtered into [the name of water]!";
	else:
		now the content of the crushed bottle is putrid;
		say "The [the name of putrid] fills up the crushed bottle. The stench is nearly unbearable.";

Check putting the crushed bottle on the sink:
	if the crushed bottle is not held:
		carry out the implicitly taking activity with the crushed bottle;
		if the crushed bottle is not held:
			stop the action;
	say "You put the [crushed bottle] on the [sink].";
	if the content of the crushed bottle is air:
		catch the stream of liquid with the crushed bottle;
	now the crushed bottle is on the sink instead;

Check inserting the stream into the crushed bottle:
	if the crushed bottle is not held:
		carry out the implicitly taking activity with the crushed bottle;
		if the crushed bottle is not held:
			stop the action;
	catch the stream of liquid with the crushed bottle instead;

The crushed door is in the Washroom. "You can see a crushed door lying on the ground." The description of the crushed door is "It looks like it has been crushed by an immensely strong force. You wonder what could have possibly done this..."

Section 9 - The Prison Basement

The Prison Basement is a room. "The light entering through [the hole] in the ceiling dimly lights the area around you." The Basement is in the Old Prison.

Report going to the Basement for the first time:
	say "You fall down through [the hole] into the basement of the prison. As you hit the ground, you hear several disturbing noises as multiple parts of your body start to ache.";

The ominous hole is down from the Storage Room and up from the Basement. The hole is a closed not openable door. The hole is privately-named. "[if the location is Storage Room]There seems to be [a hole] in the corner where the crate used to be.[end if]". The description of the hole is "A hole in the floor of [the Storage Room]. It looks rather ominous."

Understand "hole", "ominous", and "ominous hole" as the hole when the hole is open.

Rule for printing the locale description when the hole is closed:
	now the hole is mentioned;
	continue the activity;

Check going down in the Storage Room when the hole is closed:
	say "You can't go that way." instead;

Check going up in the Basement:
	say "You can't reach [the hole] in the ceiling from all the way down here." instead;

Check going through the hole in the Basement:
	say "You can't reach [the hole] in the ceiling from all the way down here." instead;

Section 10 - The Warden's Office

The Warden's Office is a room. "ENTER DESCRIPTION HERE." The Office is in the Old Prison.

To say what the Office seems like:
	say "a room that seems very secure. [if the Office is unvisited]It's probably the office of someone important or a room where something secret is stored[else]It seems to be the office of someone important, most likely the warden of the prison[end if]";

The secure door is southeast of the Lobby and northwest of the Office. The secure door is a locked door. The golden key unlocks the secure door. The description of the secure door is "It is a[if locked] locked[end if] door that leads to [if the location is Lobby][what the Office seems like][else]the prison lobby[end if]."

Chapter 3 - The Outer World

The Outer World is a region.

Section 1 - The Prison Yard

The Prison Yard is a room. "ENTER DESCRIPTION HERE." The Prison Yard is north of the front door of the prison. The Yard is in the Outer World.

Check going inside when the player is in the Yard:
	try going south instead;
