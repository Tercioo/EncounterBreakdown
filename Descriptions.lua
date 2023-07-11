

--[[
Descriptions of the various game mechanics, types of data and nomenclatures of this project

Game Mechanics:
Npc: is a non player character, this is an actor that is controlled by the game
Enemy: is an actor that is controlled by the game and is hostile to the player
Player: is an actor that is controlled by a player
Actor: any object in the game that was Health
Boss: is an actor which has a large amount of health, boss abilities are usually more powerful than other actors
Add: an Add is considered an actor which got summoned by an enemy actor
Pet: a Pet is considered an actor which got summoned by a friendly actor
Dead: an actor that has health = 0 is considered dead
Ability: is a special action that an actor can perform
Spell: is an Ability, but can have a cast time, cooldown, can be instant cast, in some cases can be interrupted or can be channeled
Cast: is the act of using a spell
Cast Time: the time it takes from the moment of the use of the spell to have it's effect applyed, during this time the spell can be interrupted
Interrupt: is the act of stopping an ability while it is being casted, this is usually done by abilities that are designed to interrupt other abilities
Cooldown: the time it takes for an ability to be ready to cast again
Instant Cast: is an ability that can be casted without a cast time, instant casts cannot be interrupted
Channeled: is a spell that its effect is applyed over the period of its cast time, the spell can be interrupted
Buff: is an ability that gives a positive effect to an actor
Debuff: is an ability that gives a negative effect to an actor
Stun: is an ability that prevents an actor from performing any action for a period of time, including moviment and the use of abilities
Root: is an ability that prevents an actor from moviment for a period of time, the actor can still use abilities
Silence: is an ability that prevents an actor from casting spells for a period of time, the actor can still moviment
Dispel: is an ability that removes a debuff from an actor
Damage: is the amount (number) of health that is removed from an actor due to an ability
Heal: is the amount (number) of health that is added to an actor due to an ability
Combat: is the act of fighting, this can only be done by actors
Moviment: is the act of moving, actors can move within the game world freely
Void Zone: is an area of the game world that is considered dangerous, actors that are inside this area will take damage over time
Friendly Fire: is the act of damaging an actor that is friendly to the player
Area of Effect: is a spell that affects all actors within a certain area
Resting Zone: when the character can logout without waiting 20 seconds to logout, this is usually an inn or a citym resting zone also give the player that is not in the max level a buff which gives extra experience while killing mobs
Dungeon: is a place where the player can fight mobs and bosses, dungeons are usually instanced, meaning that the player can only be in the dungeon with other players that are in the same group
Dungeon Mythic Plus: or just "mythic+" is a dungeon that has an increased difficulty level, this level goes from 2 up to 30, the higher the level the more difficult the dungeon is
Dungeon Mythic Plus Affix: is a modifier applyed to the dungeon, there are 2 main affixes: 'fortified' and 'tyrannical', there are also other affixes: 'bursting', 'sanguine', 'volcanic', 'necrotic', 'quaking', 'raging', 'explosive', 'grievous', 'bolstering', 'storming', 'spiteful', 'inspiring'
Dungeon Mythic Plus Level: is the difficulty level of the dungeon, this level goes from 2 up to 30, the higher the level the more difficult the dungeon is
Dungeon Mythic Plus Score: is the score that the player gets after completing a dungeon, this score is based on the time it took to complete the dungeon and the difficulty level of the dungeon
Dungeon Mythic Plus Time: is the time it took to complete a dungeon
Dungeon Mythic Plus Best Time: is the best time it took to complete a dungeon
Dungeon Mythic Plus Best Score: is the best score that the player got after completing a dungeon
Dungeon Mythic Plus Best Level: is the best difficulty level that the player got after completing a dungeon

Types of Data:
Spell Table: is a table containing information about a spell used by an actor, the table contains information about damage/healing etc.
UIObject: is an object that is used to display information to the player, this object can be a frame, a texture, a fontstring, etc.
FontString: is a UIObject that is used to display text to the player in the user interface
Texture: is a UIObject that is used to display an image to the player in the user interface


Nomenclatures:
Damage Done: is the amount of damage that an actor did, this does not count friendly fire
Dps: is the amount of damage that an actor did in a period of time, formula: totalDamage / combatTime
Damage Taken: is the amount of damage that an actor took

Project Structure:
Main Object: Details | get: _G.Details

Combat Object: is a table that contains information about a combat, this table is created when a combat starts and stored within the segments containers

get Details Object from the global namespace
local Details = _G.Details

get a combat table
combatID: "overall" for overall data; "current" for current combat; number between 1 and 40 to get an older combat
local combatTable = Details:GetCombat(combatID)

 

--get the current combat, this is the same as Details:GetCombat("current")

local currentCombat = Details:GetCurrentCombat()

 

--get damage done container which stores damage information for all players

local damageContainer = currentCombat:GetContainer(DETAILS_ATTRIBUTE_DAMAGE)

 

--get healing done container which stores healing information for all players

local healingContainer = currentCombat:GetContainer(DETAILS_ATTRIBUTE_HEAL)

 

--get energy gain container which stores from where players got their energy from

local energyContainer = currentCombat:GetContainer(DETAILS_ATTRIBUTE_ENERGY)

 

--get the container where is stored the utilities players used during combat, example: cooldowns, interrupts, dispels, etc...

local utilityContainer = currentCombat:GetContainer(DETAILS_ATTRIBUTE_MISC)


--]]