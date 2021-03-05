#!/bin/bash

answers="Recon Pentesting Cryptography Backups Concepts Close!" 
select choice in $answers
do	
case $choice in

Recon)

answers="Automated Custom Close!"
select choice in $answers
do
case $choice in
	       		Automated)

				answers="Stealthy Loud Detected Close!"
		       		select choice in $answers
		       		do
			       	case $choice in
				       Stealthy)
					       echo "What is the IP?" &&
					       read StealthyIP &&
					       ping -c 5 $StealthyIP &&
					       nmap -sS $StealthyIP
					       ;;
				       Loud) 
					       echo "First, are you sure you wish to continue? What is the IP you wish to probe and discover petential vulns?" &&
					       read LoudIP &&
					       ping -c 5 $LoudIP &&
					       nmap -sV -sC -p- --open --reason $LoudIP
					       ;;
				       Detected)
					       echo "The -A"
					       echo "Whhat is the IP?"
					       read DetectedIP &&
					       ping -c 5 $DetectedIP && 
					       nmap -A $DetectedIP
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
				answers="Ping NMAP Traceroute Close!"
				select choice in $answers
				do
				case $choice in
					Ping)
						
						echo "stuff"
						answers="Ping TTL_Ping Resolve_Host_Ping Hyper_V_Ping Close!"
						select choice in $answers
						do
						case $choice in
							Ping)

								echo "What is the IP?" &&
								read PingIP &&
								ping $PingIP
								;;
							TTL_Ping)
								
								echo "Use CTRL+C to cancel"
								echo "What is the IP?" &&
								read PingIP &&
								echo "What is the time to live?" &&
								read TTL
								ping -t $TTL $PingIP
								;;
							Resolve_Host_Ping)

								echo"This will try to find the Hosts name." &&
								echo "What is the IP?" &&
								read PingIP &&
								ping -a $PingIP
								;;
							Hyper_V_Ping)

								echo "Use this Ping against a Hyper-V Network Virtualization address." &&
								echo "What is the IP?" &&
								read PingIP &&
								ping -p $PingIP
								;;

							Close!)
								exit
								;;
							*)
								echo "Invalid option $REPLY"
								esac
								done
								;;

					NMAP)

						echo "stuff"
						answers="Update_Scripts NMAP_Specific_Script NMAP_Default_Safe_Scripts NMAP_Scan_Text_File 100_Common_Ports Scan_UDP_Ports Service_Scan_Intensity Close!"
						select choice in $answers
						do
						case $choice in
							Update_Scripts)
								echo "Updating..."
								sleep 2
								nmap --script-updatedb
								;;
							NMAP_Specific_Script)
								echo "Scan using a specific script. Please choose one:" &&
								echo &&
								sleep 3 &&
								ls /usr/share/nmap/scripts &&
								echo
								echo "Please copy the exact script name from above.:"
								read NMAPscript
								echo "Which port do you want to scan with the script?" &&
								read port 
								echo "What is the IP?"
								read IP
								nmap -sV -p $port -script=$NMAPscript $IP 
								;;
							NMAP_Default_Safe_Scripts)
								echo "What is the IP to scan?" &&
								read IP
								nmap -sV -sC $IP
								;;
							NMAP_Scan_Text_File)
								echo "This will scan Targets from a text file. Please make sure it is structured correctly." &&
								echo "Please enter the ABSOLUTE PATH to the file. Open another tab if necessary:" &&
								read absolutepath
								nmap -iL $absolutepath
								;;
							100_Common_Ports)
								echo "THis will scan the most common 100 ports only." &&
								echo "What is the IP to scan?" &&
								read IP
								nmap -F $IP
								;;
							Scan_UDP_Ports)
								echo "What ports would you like to scan? They must be typed in the following syntax < X,X,X,X,etc. > :" &&
								read ports
								echo "What is the IP to scan?" &&
								read IP
								nmap -sU -p $ports $IP
								;;
							Service_Scan_Intensity)
								echo "This NMAP scan uses a scale from 1-9 in intensity. Please choose an intensity level:" &&
								read intensity
								echo "What is the IP to scan?" &&
								read IP
								nmap -sV --version-intensity $intensity $IP
								;;
							Close!)
								exit
								;;
							*)
								echo "Invalid option $REPLY"
								;;
								esac
								done
								;;

					Traceroute)
						echo 
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
				answers="Create Extract Close!"
				select choice in $answers
				do
				case $choice in
					Create)
						echo "What would you like to name the backup tarball no extension needed?" &&
						read tarball
						echo "What is the absolute path for the directory and files you want to save?" &&
						read path
					        tar -cvzf $tarball.gz.tar $path 
						;;
					Extract)
						echo "What file would you like to extract?" &&
						read extract
						echo "Where to extract?" &&
						read path 
						tar -xvzf $path $extract
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
