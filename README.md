# Scheduled Reverse Shell using Netcat 

## Ethical Disclaimer
This project is intended **strictly for educational purposes**.

---

## Explanation
This project demonstrates how a **scheduled reverse shell connection** can be automated using a *Bash* script and *Netcat*.
The script starts a **outbound connection** from the **Victim's machine** to the **Attacker's machine** where a **Netcat Listener** is waiting.

The script is configured by the attacker by defining:
- The Attacker's IP address
- The listening port
- An optional execution delay

When the script is executed on the target system, Netcat connects back to the Attacker and gives him access to the Victim's shell.

---

## How to use
1. The Attacker plugs the IP and PORT in the script.
2. The Attacker makes the scipt executable `chmod +x Listener.sh`
3. The script is sent to the Victim.
4. The Attacker then starts listening to the port he chose using `nc -lnvp $PORT`.
5. When the Victim executes the file, the Attacker will gain access.

---

## Demo
The Attacker starts listening.
<img width="1422" height="596" alt="AttackerListening" src="https://github.com/user-attachments/assets/b0ff020f-9146-4caf-abb8-b6d4d45f4ca3" />

The Victim clicks the file, and after ten seconds the Attacker connects.
<img width="1427" height="601" alt="VictimClicks" src="https://github.com/user-attachments/assets/70ec051c-057c-41ef-9a22-78d1188f95d0" />

The Attacker gained control and has full access to Victims shell.
<img width="1430" height="599" alt="AttackerControls" src="https://github.com/user-attachments/assets/36f35b1a-da31-40ee-b107-651d43fe1daa" />
