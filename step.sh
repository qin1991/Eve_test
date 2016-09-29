#!/usr/bin/expect
set password m
#download
cd worksoft
#spawn scp guoqingma@192.168.17.228:/home/guoqingma/worksofts/soft/apache-maven-3.2.5-bin.tar.gz /home/guoqingma/worksofts/soft/jdk.tar.gz /home/guoqingma/worksofts/soft/ideaIU-14.0.2.tar.gz /home/guoqingma/worksofts/soft/wine-qqintl.zip ./

spawn scp guoqingma@192.168.13.153:/home/guoqingma/worksofts/soft/apache-maven-3.2.5-bin.tar.gz ./
expect {
 "(yes/no)?"
  {
  send "yes\n"
  expect "*assword:" { send "$password\n"}
 }
 "*assword:"
{
 send "$password\n"
}
}
expect "100%"
expect eof

spawn scp guoqingma@192.168.13.153:/home/guoqingma/worksofts/soft/jdk.tar.gz ./
expect {
 "(yes/no)?"
  {
  send "yes\n"
  expect "*assword:" { send "$password\n"}
 }
 "*assword:"
{
 send "$password\n"
}
}
expect "100%"
expect eof

spawn scp guoqingma@192.168.13.153:/home/guoqingma/worksofts/soft/ideaIU-14.0.2.tar.gz ./
expect {
 "(yes/no)?"
  {
  send "yes\n"
  expect "*assword:" { send "$password\n"}
 }
 "*assword:"
{
 send "$password\n"
}
}
set timeout 300
expect "100%"
expect eof

spawn scp guoqingma@192.168.13.153:/home/guoqingma/worksofts/soft/wine-qqintl.zip ./
expect {
 "(yes/no)?"
  {
  send "yes\n"
  expect "*assword:" { send "$password\n"}
 }
 "*assword:"
{
 send "$password\n"
}
}
set timeout 300
expect "100%"
expect eof



path=`pwd`

tar -zxvf apache-maven-3.2.5-bin.tar.gz
tar -zxvf jdk.tar.gz
tar -zxvf ideaIU-14.0.2.tar.gz
sudo unzip wine-qqintl.zip

echo "export MAVEN_HOME=$path/apache-maven-3.2.5" >> ~/.bashrc
echo 'export PATH=$PATH:$MAVEN_HOME/bin' >> ~/.bashrc
echo "export JAVA_HOME=$path/jdk" >> ~/.bashrc
echo 'export PATH=$PATH:$JAVA_HOME/bin' >> ~/.bashrc


sudo apt-add-repository ppa:jtaylor/keepass
sudo apt-get update
sudo apt-get install keepass2


sudo apt-get install krb5-kdc krb5-admin-server

