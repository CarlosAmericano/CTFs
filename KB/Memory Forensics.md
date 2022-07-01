# Memory Forensics

## Volatility

## Memory capture

	Live Machines
	-	FTK Imager - Link

	-	Redline - Link *Requires registration but Redline has a very nice GUI
	
	-	DumpIt.exe
	
	-	win32dd.exe / win64dd.exe - *Has fantastic psexec support, great for IT departments if your EDR solution doesn't support this

	Offline Machines
	-	Offline machines, however, can have their memory pulled relatively easily as long as their drives aren't encrypted. For Windows systems, this can be done via pulling the following file: 
	%SystemDrive%/hiberfil.sys

	VMs
	-	VMware - .vmem file

	-	Hyper-V - .bin file
	
	-	Parallels - .mem file
	
	-	VirtualBox - .sav file *This is only a partial memory file. You'll need to dump memory like a normal bare-metal system for this hypervisor