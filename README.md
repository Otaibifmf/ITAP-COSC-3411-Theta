# Port Listener 

## Ethical Disclaimer
This project is intended strictly for educational purposes.

## Explanation
Our project is a Bash script that automates port listening using Netcat.
The code is set up by the Attacker where he needs to plug his IP Address and the Port he will be listening on. The attacker can set up a delay if needed.
Then the netcat command takes in the Attacker's IP and Port and gives him access to the Victim's shell when the Victim runs the file. 


## How to use
1. The Attacker plugs the IP and PORT.
2. The Attacker makes the scipt executable `chmod +x Listener.sh`
3. The Attacker sends the file to a Victim.
4. The Attacker then starts listening to the port he chose using `nc -lnvp $PORT`.
5. When the Victim double clicks the file, the Attacker will gain access.

## Demo
The Attacker starts listening.
<img width="1422" height="596" alt="AttackerListening" src="https://github.com/user-attachments/assets/b0ff020f-9146-4caf-abb8-b6d4d45f4ca3" />

The Victim clicks the file, and after ten seconds the Attacker connects.
<img width="1427" height="601" alt="VictimClicks" src="https://github.com/user-attachments/assets/70ec051c-057c-41ef-9a22-78d1188f95d0" />

The Attacker gained control and has full access to Victims shell.
<img width="1430" height="599" alt="AttackerControls" src="https://github.com/user-attachments/assets/36f35b1a-da31-40ee-b107-651d43fe1daa" />
