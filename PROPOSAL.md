# Unessay Group 33 proposal <!-- omit in toc -->

## Title: None yet we seriously need a game title <!-- omit in toc -->

- [Mini Game Ideas](#mini-game-ideas)
- [Proposal](#proposal)
- [Write-up](#write-up)
- [Contributions](#contributions)
- [Rubric](#rubric)

### Mini Game Ideas

- Password Decryption
  - This game would be similar to that of the tutorial; maybe there would be lots of passwords hashed with hints similar to what was shown in class and then the user would have to solve for three passwords based on that? Or you just get a password hash and then there are 3-5 hints so you start with one and a basic dehashing software (just import a list of most basic passwords) and then can slowly unlock hints like “The password contains 3 numbers”. We would just have to make sure this makes sense in the context of the game (i.e there is a password which must be cracked to log in to where the virus is saved?? Lmao idk enough about viruses but just use the password decryption as a way to fix the computer, not just hacking someone).
- Diffie Helmann game
  - Don’t wanna go over the specifics of Diffie Helmann here, but maybe some dumb henchman leaks the exponent somehow and then you use it to make the key to unlock some sort of gate to get to the next level.
- Maze game?
  - Corresponds to the lattice quantum cryptography
  - Go up to a solution of a question to continue on

### Proposal

- Which game engine we are using to create this video game; how we will each access it to work on it
  - Describe what language the game engine uses (uses its own language which is very similar to Python)
  - Setting deadlines to ensure everyone stays focused on the project and is completing things in a timely manner
- Outline what each member of the group will be completing, a brief description of what they will be doing and briefly how this will be done/how it ties into what were doing in class

- The minigames are based on some concepts that we are learning in the class, like cryptography, privacy, and security, and will attempt to educate a little bit about proper practices to follow in order to increase their knowledge about this field.
- Try to show the relevancy of these concepts and how it can affect the everyday user.
- We will try to make the game as fun as possible
- The setting, enemies and plot of the game will all be tied to concept in class

### Write-up

For our unessay project, we are proposing to create a short video game in which the player decides to take on a most dastardly malware, which is plotting to take over the mocha server and release all of the assignment answers to the students. This game is going to be a 2D platformer in which you go through a series of levels and mini-games in order to reach the end and defeat the malware and its (quite generous) plans once and for all!

To create this game, we will be using a game engine called Godot. Godot is an open source game engine that can be used to make all types of games. Godot supports a variety of languages that can be used to make games, including its own scripting language called GDScript, which is a language similar to Python that we are planning to use- although this may be subject to change depending on how the development goes. We will also set internal deadlines so that everyone stays focused and we don’t run out of time trying to complete the game. Additionally, throughout the developmental process, we will assess our progress in order to ensure that the scope of the gameplay can still plausibly be completed within a timely manner.

For the basic set-up of the game, there will be a main character (Dr. Ryan Henry, henceforth referred to as “the player”) who, whilst attempting to use mocha, encounters the most dreadful malware he has ever seen. In order to combat it’s evil attacks, he must delve into the inner workings of mocha—if you want something done right, you must do it yourself! While doing so, the player must complete various different tasks within the mocha server to fend off the big, bad virus (he’ll huff, he’ll puff, he’ll ruin the server). The overall setting of the game takes place inside mocha where the malevolent malware is running rampant; the player needs to traverse mocha in order to locate hidden malware and defeat them! There will be running dialogue throughout the gameplay that gives nods to concepts learned in class. This running dialogue will also serve an educational role by indicating how the malware is able to interfere with mocha to conduct it’s negative acts and narrating the ways the player hinders these actions. Behaviours of malware learned in class will also determine where the malware is found, as well as what the malware is doing in mocha to steal and release the assignment files.

The player can defeat the malware by playing through a series of three minigames. These minigames will be created with concepts taught throughout the class in mind, such as security, privacy, and cryptography. As of now, the mini games are simply general ideas and therefore are subject to change as classes continue, in an effort to ensure that these mini games fit and utilize the concepts related to class. Thus far, we have some examples that we have come up with that show the gist of what we are trying to accomplish. The first minigame is going to deal with passwords and password decryption; concepts which were covered and explored in tutorial 2. Within this mini game, the player will attempt to decrypt a number of encrypted/hashed passwords based on knowledge covered at the beginning of the mini game, hints corresponding to each hashed password, and similarities between hashed passwords. The second mini game will be using the concept of Diffie-Hellman key exchange somewhat, and will cover the importance of  public and private keys. In this manner, the mini game will teach the user about keeping their private keys (or what is used to make the private key) absolutely private! The third and final mini game will incorporate file permissions and changing file permissions, as well as how important they can be in maintaining security.

We have tried to outline all of the contributions that our members will be making during the development of this game, although this of course will be re-evaluated throughout the process to make sure that everything that is needed to be created will be done so. The creation of this video game will be a team effort, so we will endeavour to help each other out wherever possible in order to create the best possible project that we can make! We have identified a rough idea of what is needed in order to make the characters, mini games, and overall basics of gameplay and have delegated tasks to the members of the group, as outlined below.

### Contributions
<!-- We can add all of our contributions here as we work on the project. We should be able to get pretty detailed, so essentially these are for now just examples -->

Everyone:

- Working on the ‘storyline’: This encompasses making sure that gameplay is overall cohesive, incorporates concepts taught within the class, and has a logical timeline.
- Audio: Incorporating sound effects and background music at appropriate times throughout the entirety of the game.

Hailey:

- Creation of the first mini game: This mini game will likely correspond to/contain similarities to tutorial 2 in that the user will have to decrypt multiple passwords from their hashed versions based on hints and similarities between the passwords.
- Working on the creation of the game menus: This includes the initial start page, instructions/’how to’ for each game, hints throughout gameplay, and the final end page.

Hrithvik:

- Creation of the second mini game: Based on an implementation of Diffie-Hellman key exchange algorithm.
Mohamed:

Hayden:

- Visual aspects:  This is creating sprites/images for all characters, backgrounds, menu and objects. Making sure that visuals that deal with gameplay are clear and easily understood.

Lubdhak:

- Creating a game that has to do with UNIX file permissions and how having important file permissions is absolutely crucial in maintaining a secure system. I will also contribute a bit to the visual aspect of the game.
  - I might change this up btw because I don't really have an idea for this game but we'll see

### Rubric

|        Criteria:         |                                                            Outstanding                                                             |                                                                                    Adequate                                                                                     |                                                                                          Poor                                                                                          | Weight |
| :----------------------: | :--------------------------------------------------------------------------------------------------------------------------------: | :-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------: | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: | :----: |
|     Visuals/graphics     |         The game is aesthetically pleasing to look at; the entirety of the game maintains cohesive visuals.    Points - 15         | The entirety of the game maintains fairly cohesive and aesthetically pleasing visuals, but some of the visuals don’t match or do not have clear gameplay purposes.  Points - 10 | The visuals are not aesthetically pleasing or cohesive. The entirety of the game does not have completed visuals to it and/or visuals do not serve clear gameplay purposes. Points - 5 |  /15   |
|       Mini Game 1        | This mini game utilizes or expands upon concepts taught in class and serves an educational purpose in the gameplay.    Points - 15 |                        This mini game has slight connections to concepts covered in class, and has an educational purpose in the gameplay.   Points - 10                        |                   This mini game barely or does not at all connect to concepts covered in class, and does not serve an educational purpose in gameplay.  Points - 5                    |  /15   |
|       Mini Game 2        | This mini game utilizes or expands upon concepts taught in class and serves an educational purpose in the gameplay.   Points - 15  |                        This mini game has slight connections to concepts covered in class, and has an educational purpose in the gameplay.   Points - 10                        |                   This mini game barely or does not at all connect to concepts covered in class, and does not serve an educational purpose in gameplay.  Points - 5                    |  /15   |
|       Mini Game 3        | This mini game utilizes or expands upon concepts taught in class and serves an educational purpose in the gameplay.   Points - 15  |                        This mini game has slight connections to concepts covered in class, and has an educational purpose in the gameplay.   Points - 10                        |                   This mini game barely or does not at all connect to concepts covered in class, and does not serve an educational purpose in gameplay.  Points - 5                    |  /15   |
| Runs with no majors bugs |      The overall project, including mini games, compiles and runs without encountering any game-changing bugs.   Points - 10       |              The overall project, including mini games, compiles and runs with minor bugs but none that affect the overall quality of the gameplay.   Points - 7.5              |                        The overall project, including mini games, is not able to properly compile and run. The game contains game-changing bugs.  Points - 2.5                         |  /15   |
|         Controls         |            Character movements, menu usage, and general playability of the game is smooth and easy to do.   Points - 10            |                   Character movements, menu usage, and general playability is adequate and/or the gameplay is not straightforward for the user.  Points - 7.5                   |                        Character movement, menu usage, and general playability is poorly created and/or the gameplay is difficult to understand.   Points - 2.5                        |  /15   |
|          Audio           |                   The gameplay contains sound effects and background music that enrich the gameplay.  Points - 5                   |                      The gameplays sound effects and/or background music do not enrich gameplay. Do not make sense in the context of the game.  Points 2.5                      |                                                     The gameplay does not contain sound effects or background music.    Points - 1                                                     |   /5   |
|           Fun            |                               You do not want to rip your hair out playing this game.    Points - 5                                |                             The gameplay causes you to rip out a few hairs, but you still have a manageable amount of hair leftover.  Points - 2.5                              |                                              The process of playing this game caused you to go bald… Mr. Clean, is that you?   Points - 1                                              |   /5   |
