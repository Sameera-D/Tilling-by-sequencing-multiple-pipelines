# Tilling-by-sequencing-multiple-pipelines
Analysis of NGS data from tilling experiments using six pipelines and processing output from them

#Dependencies
sudo apt-get install libncurses5-dev libncursesw5-dev
sudo apt-get install liblzma-dev
sudo apt-get install libbz2-dev
sudo apt-get install libz-dev

#Installing bwa 0.7.17
	tar -xvjf bwa-0.7.17.tar.bz2
	cd bwa-0.7.17
	sudo make
	sudo cp bwa /usr/bin/

#Installing samtools 1.6
	tar -xvjf samtools-1.6.tar.bz2
	cd samtools-1.6
	sudo make
	sudo make install

#Downlad GATK3.8
	#Use the GATK jar file
		
#Download picard 2.17.1
	#Use the picard jar file

#Installing Java8: --> for picard and GATK
	sudo add-apt-repository ppa:openjdk-r/ppa
	sudo apt-get update 
	sudo apt-get install openjdk-8-jdk

#Dependencies For Camba pipeline:
  sudo apt-get install python-matplotlib
	sudo apt-get install ghostscript
	sudo apt-get install python-numpy
	sudo apt-get install python-scipy
	sudo apt-get install imagemagick php5-imagick
  
#VipR:
	https://sourceforge.net/projects/htsvipr/
	tar -xvzf vipR_0.0.16.tar.gz
  sudo apt-get install rkward
  
#SNVer
	tar -xvzf SNVer-0.5.3.tar.gz

#CRISP
	https://github.com/vibansal/crisp/
	tar -xvf crisp-master.zip
	make all
	sudo cp CRISP /usr/bin
  
#Lofreq
	http://csb5.github.io/lofreq/
	tar -xvzf lofreq_star-2.1.3.1_linux-x86-64.tgz
	sudo cp lofreq_star-2.1.3.1_linux-x86-64/lofreq /usr/bin
  
