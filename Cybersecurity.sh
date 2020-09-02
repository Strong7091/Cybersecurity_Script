#! /bin/bash

# This script is a proof of concept for myself. Its purpose is to demonstrate some of the tools I have learned throughout class.

echo 'opening statement'
answers="Recon Pentesting Cryptography Backups Concepts Close!"
select choice in $answers
do
case $choice in

Recon)

answers="Automated Custom Close! Go_Back"
select choice in $answers
do
case $choice in

	       		Automated)
				echo "Automated explanation"
				answers="Low Medium High Close!"
		       		select choice in $answers
		       		do
			       	case $choice in
				       Low)
					       echo "Low"
					       ;;
				       Medium) 
					       echo "Medium"
					       ;;
				       High)
					       echo "High"
					       ;;
			       		       		       
				       Close!)
						echo "Goodbye"
						exit
						;;
				       *)
				       	       echo "Invalid Option $REPLY"
						;;
						esac
						done	
						;;

	       		Custom)

		      		echo "stuff"
				answers="Ping Fping NMAP Traceroute Close!"
				select choice in $answers
				do
				case $choice in
					Ping)
						echo "Ping"
						;;
					Fping)
						echo "Fping"
						;;
					NMAP)
						echo "NMAP"
						;;
					Traceroute)
						echo "Ping"
						;;
					Close!)
						echo "Goodbye"
						exit
						;;
					*)
						echo "Invalid Option $REPLY"
						;;
						esac
						done
						;;
			Close!)
				echo "Goodbye"
				exit
				;;
			*)
				echo "Invalid Option $REPLY"
				;;
				esac
				done
				;;

Pentesting)

answers="Metasploit Meterpreter Close!"
select choice in $answers
do
case $choice in
			Metasploit)
						echo "Metaspoloit Section"
						;;
			Meterpreter)
						echo "Meterpreter Section"
						;;
			Close!)
						echo "Goodbye"
				exit
				;;
			*)
				echo "Invalid Option $REPLY"
				;;
				esac
				done
				;;
Cryptography)

answers="OpenSSL Steghide HashCat GPG Close!"
select choice in $answers
do 
case $choice in
			OpenSSL)
				echo "OpenSSL"
				;;
			Steghide)
				echo "Steghide"
				;;
			Hashcat)
				echo "Hashcat"
				;;
			GPG)
				echo "GPG"
				;;
			Close!)
				echo "Goodbye"
				exit
				;;
			*)
				echo "Invalid Option $REPLY"
				;;
				esac
				done
				;;
Backups)

answers="Tar Close!"
select choice in $answers
do
case $choice in
			Tar)
				echo "Tar"
				sleep 5
				;;
			Close!)
				echo "Goodbye"
				exit
				;;
			*)
				echo "Invalid Option $REPLY"
				;;
				esac
				done
				;;	
Concepts)
answers="Concepts Close!"
select choice in $answers
do
case $choice in
			Concepts)
				echo"Concepts"
				;;
			Close!)
				echo "Goodbye"
				exit
				;;
			*)
				echo "Invalid Option $REPLY"
				;;
				esac
				done
				;;
Close!)
echo "Goodbye"
exit
;;

*)
echo "Invalid Option $REPLY"
;;
esac
done
;;

esac
done
;;
