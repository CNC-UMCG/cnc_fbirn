Bootstrap: shub
From: CNC-UMCG/cnc_base


%environment

%files
    scripts/* /usr/bin/cnc

%post

    apt-get install -y lsb-core
    wget https://www.nitrc.org/frs/download.php/10144/bxh_xcede_tools-1.11.14-lsb30.x86_64.tgz
    tar xvzf bxh_xcede_tools-1.11.14-lsb30.x86_64.tgz -C /usr/share
    
    echo "PATH=$PATH:/usr/share/bxh_xcede_tools-1.11.14-lsb30.x86_64" >> /etc/profile
