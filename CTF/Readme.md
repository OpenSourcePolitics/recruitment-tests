## CTF

We are using for theses tests the wargames offered by the OverTheWire community. You will find more informations here : [OverTheWire website](https://overthewire.org/wargames/) 

In the OverTheWire wargames, each level gives you a password to access the next one.

**Instructions**:

* Write down password for each level encoded in Base64 (As OverTheWire is a well knows game, do not ruin othe people fun by publishing theses passwords in plain text) 

## Bandit level 1 to 5 (or more if you like it)
The Bandit wargame is aimed at absolute beginners. It will teach the basics needed to be able to play other wargames. If you notice something essential is missing or have ideas for new levels, please let us know!

Note for beginners
This game, like most other games, is organised in levels. You start at Level 0 and try to “beat” or “finish” it. Finishing a level results in information on how to start the next level. The pages on this website for “Level <X>” contain information on how to start level X from the previous level. E.g. The page for Level 1 has information on how to gain access from Level 0 to Level 1. All levels in this game have a page on this website, and they are all linked to from the sidemenu on the left of this page.

You will encounter many situations in which you have no idea what you are supposed to do. Don’t panic! Don’t give up! The purpose of this game is for you to learn the basics. Part of learning the basics, is reading a lot of new information.

There are several things you can try when you are unsure how to continue:

First, if you know a command, but don’t know how to use it, try the manual (man page) by entering “man <command>” (without the quotes). e.g. if you know about the “ls” command, type: man ls. The “man” command also has a manual, try it. Press q to quit the man command.
Second, if there is no man page, the command might be a shell built-in. In that case use the “help <X>” command. E.g. help cd
Also, your favorite search-engine is your friend. Learn how to use it! I recommend Google.
Lastly, if you are still stuck, you can join us on IRC
You’re ready to start! Begin with Level 0, linked at the left of this page. Good luck!

[Instructions for Bandit](https://overthewire.org/wargames/bandit.html)

### Answers: 

    Bandit1 -> boJ9jbbUNNfktd78OOpsqOltutMc3MY1
    Bandit2 -> CV1DtqXWVFXTvM2F0k09SHz0YwRINYA9
    Bandit3 -> UmHadQclWmgdLOKQ3YNgjWxGoRMb5luK
    Bandit4 -> pIwrPrtPN36QITSp3EQaw936yaFoFgAB
    Bandit5 -> koReBOKuIDDepwhWk7jZC0RTdopnAYKh

## Natas level 1 and 2 (or more if you like it)

Natas teaches the basics of serverside web-security.
Each level of natas consists of its own website located at http://natasX.natas.labs.overthewire.org, where X is the level number. There is no SSH login. To access a level, enter the username for that level (e.g. natas0 for level 0) and its password.

Each level has access to the password of the next level. Your job is to somehow obtain that next password and level up. All passwords are also stored in /etc/natas_webpass/. E.g. the password for natas5 is stored in the file /etc/natas_webpass/natas5 and only readable by natas4 and natas5.

Start here:

Username: natas0
Password: natas0
URL:      http://natas0.natas.labs.overthewire.org

[Instructions for Natas](https://overthewire.org/wargames/natas/)

### Answers: 

    Natas1 -> gtVrDuiDfck831PqWsLEZy5gyDz1clto
    Natas2 -> ZluruAthQk7Q2MqmDeTiUij2ZvWy2mBi

## Leviathan level 1 and 2 (or more if you like it)
This wargame doesn't require any knowledge about programming - just a bit of common
sense and some knowledge about basic *nix commands. We had no idea that it'd be this
hard to make an interesting wargame that wouldn't require programming abilities from 
the players. Hopefully we made an interesting challenge for the new ones.
Leviathan’s levels are called leviathan0, leviathan1, … etc. and can be accessed on leviathan.labs.overthewire.org through SSH on port 2223.

To login to the first level use:

Username: leviathan0
Password: leviathan0
Data for the levels can be found in the homedirectories. You can look at /etc/leviathan_pass for the various level passwords.

[Instructions for Leviathan](https://overthewire.org/wargames/leviathan/)

### Answers: 

    Leviathan1 -> rioGegei8m
    Leviathan2 -> ougahZi8Ta

## Krypton level 1 and 2 (or more if you like it)
Welcome to Krypton! The first level is easy. The following string encodes the password using Base64:

S1JZUFRPTklTR1JFQVQ=
Use this password to log in to krypton.labs.overthewire.org with username krypton1 using SSH on port 2222. You can find the files for other levels in /krypton/

[Instructions for Krypton](https://overthewire.org/wargames/krypton/krypton0.html)

### Answers: 

    Krypton1 -> KRYPTONISGREAT
    Krypton2 -> ROTTEN