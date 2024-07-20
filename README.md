# Source Engine Model Junk File Remover

A Simple VBScript that will make modelers lifes much easier in the Source Engine space, especially when it comes to GMod since recently, GMod now requires addons to remove `sw.vtx` files, since `sw.vtx` files are the same as `dx80.vtx` and `dx90.vtx`. 

If you have a few models, then that wouldn't be a big deal, but if you had lots of models, like props, NPC models, Playermodels, then it's more of a chore to select the files and delete them, well no more.

**This will work for any Source Engine Game (Garry's Mod, Left 4 Dead, Left 4 Dead 2, Team Fortress 2) Any game that is on Source 1.**

This will search `dx80.vtx` and `sw.vtx` files and you can choose to move the `dx80.vtx` files, `sw.vtx` files, or both into the Recycling Bin.

# How to Use?
To use the script, place the VBS script into and directory (where your models are located) that you want to move the junk files into the Recycling Bin. It will not move everything, as you need to go into each directory and repeat the steps.

This is my first time messing with VBScripts, so I tend to make sure that no severe mistakes are made, if you're cautious *I do not blame you*, you can make a backup of your model directory before you attempt to clear, it should at least tell you the files that it finds.

You can choose to not delete `dx80.vtx` files and skip to `sw.vtx` files. I would recommend to delete both since It's 2024, and there's barely any hardware that is running DirectX 8.

## The script has found `DX80.VTX` files.
![image](https://github.com/user-attachments/assets/ca7a41e8-0452-49b6-9eaf-fa52c49938cb)
## It will ask you to move them to the Recycling Bin.
![image](https://github.com/user-attachments/assets/223a1bda-0052-4fc7-a9bc-aef78ad2fdb3)
### Files been moved to the bin.
![image](https://github.com/user-attachments/assets/2940146c-78d5-4ddb-ba65-8d83ea8d3d68)
## Same thing for `SW.VTX` files
![image](https://github.com/user-attachments/assets/42333487-4de3-44c5-89e2-717ee4da3069)
![image](https://github.com/user-attachments/assets/ba538411-f62a-48be-bd89-964aaa4f82c5)
![image](https://github.com/user-attachments/assets/f12a6646-33cd-4f25-9acc-1ed218506139)

## Files moved to the Recycling Bin, waiting to be deleted by you.
![image](https://github.com/user-attachments/assets/61ea98e7-fecb-4d3b-8e42-0ca43daf2753)
## This does save you space, based on how large the model is (Lots of textures, bodygroups). This is both `sw.vtx` and `dx80.vtx` files here.
![image](https://github.com/user-attachments/assets/b134a445-b5a3-40a6-853e-490aa78c36d0)


# FAQ
- **Will this delete other files?**
  - No, it will only delete `dx80.vtx` and `sw.vtx` files. It should never delete any other files besides those two.

- **It's saying it doesn't detect X files, but there are files that it's suppose to find.**
  - Make sure the VBScript is inside the directory of the folder that you want to remove the junk files, please reference this [screenshot](https://github.com/CombineSlayer24/Source-Engine-Model-Junk-File-Remover?tab=readme-ov-file#the-script-has-found-dx80vtx-files)

# Conclusion
Make modding Source Engine games easier and fun by spending less time manually deleting model junk files, thanks and have fun.

PSA: *No files were harmed in the making of this script and screenshots, please laugh for comedic purposes.*
