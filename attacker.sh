apt-get update
apt-get install --yes git
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
python sqlmap-dev/sqlmap.py -h
echo 'alias "sqlmap=python ~/sqlmap-dev/sqlmap.py"' >> /home/vagrant/.bashrc
