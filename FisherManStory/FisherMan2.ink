//Intro 
Once a upon a time. 
You are a struggling fisherman. Lately, your usual fishing spots have turned up nothing, and your family is hungry. Last night at the tavern, a stranger whispered to you about a place — strange, remote, but rich with fish. With few options left, you decide to investigate.

As the morning fog lifts, you set sail toward this unfamiliar destination. The air grows heavy. Something feels... off. But desperation dulls your caution.

You reach a fork in the water. It’s time to choose your path.

// Decision 1
 * [Stay close to the coast.] -> coast
 * [Follow the inland river.] -> river
VAR bait = 2
VAR fish = 0

// Coast Path 
=== coast ===
You stay close to the coastline, and start to fish. 
// Sub decision fishing spots
*[ Fish under a tree on the coast] -> FishTrees

*[ Fish by the inland] -> fishInland
*[ Fish in the deep water far from the coast] -> FishDeep
=== FishTrees ===

You cast out your line you feel a slight pull

*[Pull] -> Pull
*[Wait] -> Wait

=== Pull ===
you caught nothing but lost your bait you load another bait and wait for another bite, eventually something bites do you wait or pull 

~ bait = 1
*[Pull2] -> Pull2
*[Wait2] -> Wait2

=== Wait ===
your patience pays off as now you got an even bigger pull on your line 

*[Pull2] -> Pull2
*[Wait2] -> Wait2

=== Pull2 ===
You pulled and caught the biggest fish you have ever seen its the size  of three fish 

~ fish = 3
~ bait = 0

// Decision 2 
You just caught the biggest fish in your career and now your feeling tired and ready to pack it up — until you hear singing. A woman’s voice, echoing from the nearby island.

* [Ignore the voice and head home.] -> coast_ignore
* [Investigate the singing.] -> coast_sing

=== Wait2 ===
You waited again but this time your flung into the water you lost your rod but you see something shiny and decide to swim and pick it up it seems to be a key of some kind

VAR key = 1

You make it back to your boat safely thinking your day is done 
— until you hear singing. A woman’s voice, echoing from the nearby island.// decision two
* [Ignore the voice and head home.] -> coast_ignore
* [Investigate the singing.] -> coast_sing


=== fishInland ===
You decide to fish on the mouth of the water you cast your line but dont get any bites but you notice something shiny in the water 

*[ Jump in after it] -> JumpIn
*[ Keep fishing] -> KeepFishing

=== JumpIn ===
you jump in the water and find what looks like a key you make it back to your boat safely and you keep fishing and get 2 fish 
~ key = 1
~ bait = 0 
~ fish = 2

Relief washes over you — until you hear singing. A woman’s voice, echoing from the nearby island.

Now you must choose.

// decision two
* [Ignore the voice and head home.] -> coast_ignore
* [Investigate the singing.] -> coast_sing

=== KeepFishing ===
you keep fishing and get two nice sized fish the shiny object seems to have drifted away 
~ bait = 0 
~ fish = 2

Your about to go home — until you hear singing. A woman’s voice, echoing from the nearby island.

Now you must choose.

// decision two
* [Ignore the voice and head home.] -> coast_ignore
* [Investigate the singing.] -> coast_sing


=== FishDeep ===
 You find the deepest water on the coast you can, and cast your line out, somethign starts pulling on your line what do you do 
 ~ bait = 2
 ~ fish = 0
 
 *[WaitDeep] -> WaitDeep
 *[PullDeep] -> PullDeep
 // Pull or Wait
 === WaitDeep ===
 You tried to be patient but the fish overpowered you and pulled you in the water and ate you
 * [Eaten ending.] -> END
 
 === PullDeep ===
 You pull up a nice fish thats as big as 2 fish 
 ~ bait = 1 
 ~ fish = 2
You cast another line out and immediately get another bite

// Pull or wait 2
*[WaitDeep2] -> WaitDeep2
*[PullDeep2] -> PullDeep2


=== WaitDeep2 ===
You wanted to play this one patiencly but this fish was stronger then you thought and pulled you in and ate you 
    * [Eaten ending.] -> END

=== PullDeep2 ===
You pulled that fish up in record time and scored another pristine fish the size of 2 fish 
~ bait = 0 
~ fish = 4

// Decision 2
* [Ignore the voice and head home.] -> coast_ignore
* [Investigate the singing.] -> coast_sing


=== coast_ignore ===
You resist curiosity and head home with a boat full of fish. It’s your best haul in months. Your family eats well. You sleep peacefully.

* [Go Home.] -> END // ending one (good ending)


=== coast_sing ===
You can’t ignore the haunting melody. You dock on the island and follow the sound. Deep in the trees, you discover an ancient stone temple. The singing stops. The island is very still the quite is very loud.

Now what?

// Decision 3
* [Leave the island.] -> coast_leave
* [Enter the temple.] -> coast_temple


=== coast_leave ===
As you turn to leave, a sharp pain hits your neck. Darkness falls. You wake up... over a fire.

* [Eaten ending.] -> END // ending two (bad ending)


=== coast_temple ===

You approach the temple and notice a large, ancient door with a keyhole in its center.

{key == 1:
The key in your pocket begins to glow faintly. You insert it into the lock — it fits perfectly.
Inside, you find a golden fish statue—gleaming, untouched. A hidden passage leads you back to your boat. You return home, rich with treasure and fish.

* [Rich ending.] -> END
- else:
You search for a way in, but the temple door is sealed shut. Without a key, you have no choice but to head back.

* [Go home empty-handed.] -> coast_leave
}

// River path
=== river ===
You steer inland, following a narrow river. It’s quiet. Too quiet. Hours pass, and your nets remain empty. Strange ancient statues line the banks—silent watchers.

Just as you prepare to turn back, you hear a woman singing, deep in the jungle.

You hesitate.

// decision four
* [Leave the river and head home.] -> river_leave
* [Follow the voice.] -> river_follow


=== river_leave ===
You turn back. The silence is unnerving, but you make it home safe, though empty-handed.

* [Poor but Alive.] -> END // ending four (neutral ending)


=== river_follow ===
You push forward. Deeper into the jungle. You find the source: an indigenous woman, cloaked in feathers and bone. She turns sharply—too late, you feel a dart hit your neck.

You wake up tied, roasting over a fire.

* [Eaten Alive.]-> END // ending five (bad ending)
