# On/off switch for bepinex
 A template .bat file to turn on/off Bepinex mods

# WARNING!
This is not a plug and play mod. This is a template, so you will need to edit most of the files so it works for you. You will need to edit the .bat file in a text editor to include the location of your files. You will also need to edit the other files in this template.

# How to install

## Step 1: Locating files on your PC

There are 2 things you will need find on your computer.

1. **Locate** `doorstop_config.ini` in your Valheim folder and **copy** its address down. 
2. **Choose** a location for the bepswitch folder, and **copy** that down.

*E.g. I have my game and batch folder in my D drive, so my locations look like this:*  
*1. **My** doorstop_config.ini location: `D:\Steam\steamapps\common\Valheim\doorstop_config.ini`*  
*2. **My** bepswitch folder location: `D:\GitHub\bat`*  

Note **yours** down.

## Step 2: Copying your data files into bepswitch
1. **Locate** `doorstop_config.ini` in your Valheim folder and **copy** the file
2. **Paste** the file into `bepswitch\on` **AND** into `bepswitch\off`.
- It should overwrite the `doorstop_config.ini` files which are already there.
3. **Open** `bepswitch\off\doorstop.ini`
4. **Change** `enabled=true` to `enabled=false`

## Step 3: Editing the batch file
Now, you need to open the .bat file.

**Right click**, and select **open with notepad** or whatever text editor you use.

Now, **find** `D:\Steam\steamapps\common\Valheim\doorstop_config.ini` and **replace** with **your** file location.
There are 2 occurences of this, so you need to do it **2 times**.

Next, **find** `D:\GitHub\bat` and **replace** with your location again.
This is also in there twice, so you need to paste **2 times**.

Check your whole file looks something like this:

---

echo off
:begin
echo Select a task:
echo =============
echo -
echo 1) Vanilla
echo 2) Modded
echo -
set /p op=Type option:
if "%op%"=="1" xcopy /s/Y **YOUR-bepswitch-folder-location**\bepswitch\off\doorstop_config.ini **YOUR-doorstop-config-file-location**
if "%op%"=="2" xcopy /s/Y **YOUR-bepswitch-folder-location**\bepswitch\on\doorstop_config.ini **YOUR-doorstop-config-file-location**
echo Please Pick an option:
goto begin

:op1
echo you picked option 1
goto begin

:op2
echo you picked option 2
goto begin

:exit
@exit

## You're done with installation!

You can put the bepswitch.bat file anywhere you want to run it. 

# How to run

Double click bepswitch.bat and type 1 then press return/enter for Vanilla, type 2 for Modded!

# Credits

The idea for this was from here:
https://steamcommunity.com/app/892970/discussions/0/3069740625181087689/?l=portuguese
and sample code from here:
https://stackoverflow.com/questions/4051294/how-to-overwrite-existing-files-in-batch
