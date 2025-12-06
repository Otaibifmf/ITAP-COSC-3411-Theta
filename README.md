# Crontab Listener 

## Explanation
Our project is a Bash script that automates port listening using `netcat` and `crontab`.
The program asks the user for which port to listen to and saves it into the `PORT` variable. It then creates the `COMMAND` variable where we store our netcat listening command using the selected port.
After that, the program asks for the crontab timing settings (Minutes, Hour, Day of Month, Month, and Day of Week) and stores them into variables. 
These valutes are then combined into a single variable called `CRONLINE`, which is used to set up the crontab entry automatically.


## How to use
1. Clone the repository to your device.
2. Make the script executable `chmod +x crontabListener.sh`.
3. Compile the file by using `./crontabListener.sh`
4. Insert the desired port, then the minutes, hour, and other timing values when prompted. ( You can use `*` if you want it to always run. For example, setting MON = * means it will run for all months.
5. After that, the cron jon will be added automatically. You can verifiy using: `crontab -l`.
6. You can alsto check if you device is listening on the selected port using: `sudo lsof -i :yourPortNumber`.

 If you run it before the scheduled time it will be empty, as expected.
 Check again when the selected time comes, and you will find your device listening on that port.
 
<img width="1274" height="801" alt="image" src="https://github.com/user-attachments/assets/9dcaccbf-67f2-47a0-b865-eea8313ac595" />

