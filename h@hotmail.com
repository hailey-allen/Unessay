[33mcommit 2524d61c014c530ccab25227f205e4b22d0a6ba5[m[33m ([m[1;36mHEAD -> [m[1;32mtiles_and_background[m[33m)[m
Author: Hailey Allen <haileyaln@shaw.ca>
Date:   Sun Nov 15 11:38:41 2020 -0700

    Adding the new tiles and background for levels

[33mcommit acb4ffe7768ee153f0cdb9a9f79c510bc4b906df[m[33m ([m[1;31morigin/tiles_and_background[m[33m, [m[1;31morigin/main[m[33m, [m[1;31morigin/HEAD[m[33m, [m[1;32mmain[m[33m)[m
Merge: afc2041 cff4f43
Author: monsoonssn <22012050+monsoonssn@users.noreply.github.com>
Date:   Fri Nov 13 17:30:57 2020 -0700

    Merge pull request #9 from hailey-allen/interact
    
    Interaction input

[33mcommit cff4f436227e53d3afa7dd1078998bf1016f1aec[m[33m ([m[1;31morigin/interact[m[33m)[m
Author: Lubdhak Juyal <22012050+monsoonssn@users.noreply.github.com>
Date:   Fri Nov 13 01:04:20 2020 -0700

    test object for interaction added

[33mcommit 80508df61c1242db5300bd557666564fc0c125be[m
Author: Lubdhak Juyal <22012050+monsoonssn@users.noreply.github.com>
Date:   Fri Nov 13 00:33:08 2020 -0700

    added a raycast and an interaction input for interaction with interactable objects

[33mcommit afc2041a1559a3b30a15894f3dce1ddeefae6227[m
Author: Lubdhak Juyal <22012050+monsoonssn@users.noreply.github.com>
Date:   Thu Nov 12 12:38:37 2020 -0700

    tweaking a couple things and rearranging files

[33mcommit d578cc4cc0bec39715010aeae5f26399a1c93e03[m
Author: Lubdhak Juyal <22012050+monsoonssn@users.noreply.github.com>
Date:   Thu Nov 12 12:11:43 2020 -0700

    fixing things

[33mcommit 5ac108323e52300f2c7056b2b93d9586e015a6b6[m
Author: Lubdhak Juyal <22012050+monsoonssn@users.noreply.github.com>
Date:   Thu Nov 12 11:58:07 2020 -0700

    deleting duplicate electronic tracks

[33mcommit c30e3f93d1a4b5ac3089343fa533e2ee8a5bb963[m
Merge: 72abf26 eb7c489
Author: monsoonssn <22012050+monsoonssn@users.noreply.github.com>
Date:   Thu Nov 12 11:54:47 2020 -0700

    Merge pull request #8 from hailey-allen/newBranch
    
    Adding music, help popup button, background

[33mcommit eb7c48941c4c321c71aa40eadd5bd75c681259ca[m
Author: unknown <haileyaln@shaw.ca>
Date:   Thu Nov 12 11:52:24 2020 -0700

    Adding music, help popup button, background

[33mcommit 72abf269438c813e17aa756683c510ab9688018c[m
Merge: 9241826 bc1e123
Author: hailey-allen <47430391+hailey-allen@users.noreply.github.com>
Date:   Thu Nov 12 11:32:43 2020 -0700

    Merge pull request #7 from hailey-allen/New-Updates---didn't-want-to-ruin-main-lol
    
    Updating main screen, music, and help button

[33mcommit bc1e123de65e4383febdfe0eae24399751ff3fba[m
Author: hailey-allen <47430391+hailey-allen@users.noreply.github.com>
Date:   Thu Nov 12 00:36:41 2020 -0700

    Updating main screen
    
    Adding music, main screen background, and a pop-up help button although it isn't done

[33mcommit 924182664eaa805d153c0d503bbe54cd71d39214[m
Author: Lubdhak Juyal <22012050+monsoonssn@users.noreply.github.com>
Date:   Wed Nov 11 18:34:35 2020 -0700

    adding basic default theme

[33mcommit 85f6c8946b2119b4d648f140b6a0d5433917c7ef[m
Author: monsoonssn <22012050+monsoonssn@users.noreply.github.com>
Date:   Tue Nov 10 22:20:25 2020 -0700

    Update asset_credits.md

[33mcommit b973d11e91f08295f523da69f1e2b27cd6209170[m
Author: Lubdhak Juyal <22012050+monsoonssn@users.noreply.github.com>
Date:   Tue Nov 10 22:19:11 2020 -0700

    Credits for assets WIP

[33mcommit 0307da27b81686cfa400e79945a4390806d1a87e[m
Merge: f72c637 a018627
Author: monsoonssn <22012050+monsoonssn@users.noreply.github.com>
Date:   Tue Nov 10 22:07:47 2020 -0700

    Merge pull request #6 from hailey-allen/ui_theme
    
    Adding basic default theme and some more assets

[33mcommit a01862740c80dba0456c813f083ee371046900cb[m
Author: Lubdhak Juyal <22012050+monsoonssn@users.noreply.github.com>
Date:   Tue Nov 10 21:51:11 2020 -0700

    Adding basic default theme and some more assets

[33mcommit f72c637541fd4b8babc22ed7205182a0aaee6579[m
Author: Lubdhak Juyal <22012050+monsoonssn@users.noreply.github.com>
Date:   Tue Nov 10 15:15:51 2020 -0700

    tweak input map

[33mcommit e1cbf0976ed2d203c52df688f27a865e51e6a387[m
Author: Lubdhak Juyal <22012050+monsoonssn@users.noreply.github.com>
Date:   Tue Nov 10 14:57:27 2020 -0700

    Small tweaks to main screen

[33mcommit 66473f6c16a0dd87445e10facf6a85cb4dcc5dd4[m
Merge: 17cef55 c9d6161
Author: monsoonssn <22012050+monsoonssn@users.noreply.github.com>
Date:   Tue Nov 10 14:45:48 2020 -0700

    Merge pull request #5 from hailey-allen/main_screen
    
    basic main screen, will work on more ui

[33mcommit c9d61613762d07c048f7b2701c58d452881a5b23[m
Author: Lubdhak Juyal <22012050+monsoonssn@users.noreply.github.com>
Date:   Tue Nov 10 14:42:06 2020 -0700

    basic main screen, will work on more ui

[33mcommit 17cef559554925800bfa0e131fa2074a105af8f3[m
Merge: 0fd228a 50292f5
Author: monsoonssn <22012050+monsoonssn@users.noreply.github.com>
Date:   Fri Nov 6 15:10:07 2020 -0700

    Merge pull request #4 from hailey-allen/todo
    
    putting things to do in the GitHub projects project

[33mcommit 50292f5b0b0ec95f0b49457644a5b68f8427de4d[m
Author: monsoonssn <22012050+monsoonssn@users.noreply.github.com>
Date:   Fri Nov 6 15:09:03 2020 -0700

    putting things to do in the GitHub projects project

[33mcommit 0fd228ab2233903e5adb6f505d991f6f2feaf561[m
Author: Lubdhak Juyal <22012050+monsoonssn@users.noreply.github.com>
Date:   Fri Nov 6 11:27:39 2020 -0700

    Adding the rubric in proposal

[33mcommit 91b3e8e21cd89f9ad5d8b48633a9d9826c737e3f[m
Author: Lubdhak Juyal <22012050+monsoonssn@users.noreply.github.com>
Date:   Fri Nov 6 02:39:57 2020 -0700

    minor change to .gitignore

[33mcommit 495dac52b8434330161dfa1a91a26327e80cbf68[m
Merge: 66bc51c 6f84811
Author: monsoonssn <22012050+monsoonssn@users.noreply.github.com>
Date:   Fri Nov 6 02:36:26 2020 -0700

    Merge pull request #3 from hailey-allen/proposal
    
    Adding proposal

[33mcommit 6f84811e53f56479b2777232aa20e8bfcc2e5fba[m
Author: Lubdhak Juyal <22012050+monsoonssn@users.noreply.github.com>
Date:   Fri Nov 6 02:35:47 2020 -0700

    Adding proposal

[33mcommit 66bc51cf12b112293ce61dd226990c131d3abfac[m
Author: monsoonssn <22012050+monsoonssn@users.noreply.github.com>
Date:   Fri Nov 6 02:10:50 2020 -0700

    adding debug launch instructions

[33mcommit 1cc2955af3f6308c4c4d78b9d4113c8089bf3433[m
Merge: 1b3e568 90527ee
Author: monsoonssn <22012050+monsoonssn@users.noreply.github.com>
Date:   Fri Nov 6 02:06:47 2020 -0700

    Merge pull request #2 from hailey-allen/beginnings
    
    Adding basic gameplay, assets and modifying text files

[33mcommit 90527ee8b98006f7513601c6c71fb9225a3af9a6[m
Author: Lubdhak Juyal <22012050+monsoonssn@users.noreply.github.com>
Date:   Fri Nov 6 01:59:04 2020 -0700

    Adding basic gameplay, assets and modifying text files

[33mcommit 1b3e568e150e0eba05b2d8cd2a780c84f9e4a7ca[m
Author: monsoonssn <22012050+monsoonssn@users.noreply.github.com>
Date:   Mon Oct 26 12:57:28 2020 -0600

    Update README.md

[33mcommit 94ca85a4b73d30ce56604c0b57767fdc8f043868[m
Author: monsoonssn <22012050+monsoonssn@users.noreply.github.com>
Date:   Mon Oct 26 12:57:13 2020 -0600

    Update README.md
    
    nothing much

[33mcommit 10d0b4cdd2d03f21b9cc183f85ffbc62fa2d2be4[m
Merge: 34d22b4 5f21b1b
Author: monsoonssn <22012050+monsoonssn@users.noreply.github.com>
Date:   Mon Oct 26 12:54:46 2020 -0600

    Merge pull request #1 from hailey-allen/licensing
    
    Licensing

[33mcommit 5f21b1b8a9d600ae5b36d3530c56d85b0a03f188[m
Author: Lubdhak Juyal <22012050+monsoonssn@users.noreply.github.com>
Date:   Mon Oct 26 12:49:08 2020 -0600

    removing LICENSE line on readme

[33mcommit bf0ddb2fd5b303e621065fd58dc329deee4a209e[m
Author: Lubdhak Juyal <22012050+monsoonssn@users.noreply.github.com>
Date:   Mon Oct 26 12:45:44 2020 -0600

    adding the required licenses

[33mcommit 34d22b4aeabaca293dd1c898fba29dfddd497b81[m
Author: Lubdhak Juyal <22012050+monsoonssn@users.noreply.github.com>
Date:   Sun Oct 25 16:09:07 2020 -0600

    updating .gitattributes to make it look like .gitattributes from godot-demo-projects

[33mcommit 83ec8bcbe5e8edc9a39b85cbd6513d0b0dd9dda0[m
Author: Lubdhak Juyal <22012050+monsoonssn@users.noreply.github.com>
Date:   Sun Oct 25 16:07:17 2020 -0600

    adding .gitattributes

[33mcommit e553874e4cfd9f53a33fa2c9d8399ca131df49d6[m
Author: Lubdhak Juyal <22012050+monsoonssn@users.noreply.github.com>
Date:   Sun Oct 25 15:53:34 2020 -0600

    making .gitignore more comprehensive

[33mcommit d32a1c94a052cbe8659e5e52366e8947a38df337[m
Author: monsoonssn <22012050+monsoonssn@users.noreply.github.com>
Date:   Sun Oct 25 15:23:57 2020 -0600

    Update README.md

[33mcommit 5307efd1441b77b07c8a5348809ce320ad11be11[m
Author: monsoonssn <22012050+monsoonssn@users.noreply.github.com>
Date:   Sun Oct 25 15:23:14 2020 -0600

    Update README.md

[33mcommit 1b792ca810430cb0a76c4b57716baaa56243ce48[m
Author: monsoonssn <22012050+monsoonssn@users.noreply.github.com>
Date:   Sun Oct 25 15:21:33 2020 -0600

    fixing typos

[33mcommit bb9e45245ed20bde3bdb3a014c1166d1a950550b[m
Author: monsoonssn <22012050+monsoonssn@users.noreply.github.com>
Date:   Sun Oct 25 15:12:01 2020 -0600

    adding a blank Godot project

[33mcommit 2c7ced25dd9ad5b87c29e01963e0ec32476870b9[m
Author: monsoonssn <22012050+monsoonssn@users.noreply.github.com>
Date:   Sun Oct 25 13:47:07 2020 -0600

    adding .gitignore

[33mcommit 5ced4aa050840516c43686ec9d6f102f888ed8c5[m
Author: monsoonssn <22012050+monsoonssn@users.noreply.github.com>
Date:   Sun Oct 25 13:32:11 2020 -0600

    updating readme

[33mcommit 20dbe9c5c11d3dda7d7dee93df71d92aa608bc97[m
Author: monsoonssn <22012050+monsoonssn@users.noreply.github.com>
Date:   Sun Oct 25 13:09:00 2020 -0600

    Update README.md

[33mcommit d470bd3d5154bf5dcf205367da8e60c3c506f92c[m
Author: monsoonssn <22012050+monsoonssn@users.noreply.github.com>
Date:   Sun Oct 25 13:08:21 2020 -0600

    Change readme so it actually has heading

[33mcommit 8d13b3729deebb7a9a39b88e637507bfd272483e[m
Author: monsoonssn <22012050+monsoonssn@users.noreply.github.com>
Date:   Sun Oct 25 13:03:02 2020 -0600

    First commit, starting repository and adding README.md
