# Block Programs from Internet using Firewall

This script will help you block your program from internet access using the Windows firewall automatically.

## What it can do
- The script will automatically block internet access for all `.exe` files in the directory where the script is run and all subfolders.
- This will add two new firewall rules, one for incoming and one for outgoing connections, for each `.exe` file found.

## How to use
1. Download this repository
2. Extract the downloaded file
3. Place the extracted `.bat` file in the folder of the program(s) that you want to block internet access for
4. Run the script as an administrator
5. Delete the `.bat` file from the folder
6. Done

## Explanation
The script is written in `batch` language which is a scripting language for the Windows command line. The script uses the `for` and `netsh` command to add new firewall rules for each `.exe` file found in the current directory and all its subdirectories. The `for /R` command is used to recursively search through all subdirectories while the `%%f` variable holds the current file path. 
It uses the `netsh advfirewall firewall add rule` command to add new firewall rules to block incoming and outgoing connections for each file. The `name`, `dir`, and `program` options are used to specify the name, direction, and path of the program for the new rule. 
The script also uses the `setlocal enableextensions` command to enable the use of extensions in the script and `cd /d "%~dp0"` to change the current directory to the location of the script file.
It also include `pause` command to halt the execution of the script until the user press any key so you can check the results before closing the command prompt.
Please note that running this script will block all internet access for the specified programs, so use it carefully and make sure you have backup copies of the files you want to block.
