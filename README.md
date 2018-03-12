# Tilling-by-sequencing-multiple-pipelines
Analysis of NGS data from tilling experiments using six pipelines and processing output from them

#Dependencies <br/>
sudo apt-get install libncurses5-dev libncursesw5-dev <br/>
sudo apt-get install liblzma-dev <br/>
sudo apt-get install libbz2-dev <br/>
sudo apt-get install libz-dev <br/>

#Installing bwa 0.7.17 <br/>
	tar -xvjf bwa-0.7.17.tar.bz2 <br/>
	cd bwa-0.7.17 <br/>
	sudo make <br/>
	sudo cp bwa /usr/bin/ <br/>

#Installing samtools 1.6 <br/>
	tar -xvjf samtools-1.6.tar.bz2 <br/>
	cd samtools-1.6 <br/>
	sudo make <br/>
	sudo make install <br/>

#Downlad GATK3.8 <br/>
	#Use the GATK jar file <br/>
		
#Download picard 2.17.1 <br/>
	#Use the picard jar file <br/>

#Installing Java8: --> for picard and GATK <br/>
	sudo add-apt-repository ppa:openjdk-r/ppa <br/>
	sudo apt-get update <br/>
	sudo apt-get install openjdk-8-jdk <br/>

#Dependencies For Camba pipeline: <br/>
  sudo apt-get install python-matplotlib <br/>
	sudo apt-get install ghostscript <br/>
	sudo apt-get install python-numpy <br/>
	sudo apt-get install python-scipy <br/>
	sudo apt-get install imagemagick php5-imagick <br/>
  
#VipR: <br/>
	https://sourceforge.net/projects/htsvipr/ <br/>
	tar -xvzf vipR_0.0.16.tar.gz <br/>
  sudo apt-get install rkward <br/>
  
#SNVer <br/>
	tar -xvzf SNVer-0.5.3.tar.gz <br/>

#CRISP <br/>
	https://github.com/vibansal/crisp/ <br/>
	tar -xvf crisp-master.zip <br/>
	make all <br/>
	sudo cp CRISP /usr/bin <br/>
  
#Lofreq <br/>
	http://csb5.github.io/lofreq/ <br/>
	tar -xvzf lofreq_star-2.1.3.1_linux-x86-64.tgz <br/>
	sudo cp lofreq_star-2.1.3.1_linux-x86-64/lofreq /usr/bin <br/>
  
