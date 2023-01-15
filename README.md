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

Please note that running the script will block all internet access for the specified programs, so use it carefully.
