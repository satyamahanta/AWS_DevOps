
Puppet commands

Setup Puppet Server
-----------------------------------------------------------------

```sh
cd /tmp && wget https://apt.puppetlabs.com/puppetlabs-release-pc1-trusty.deb
sudo dpkg -i puppetlabs-release-pc1-trusty.deb
sudo apt-get update
sudo apt-get -y install puppetserver
sudo vi /etc/default/puppetserver
## edit this line JAVA_ARGS="-Xms3g -Xmx3g"
sudo service puppetserver restart
sudo /etc/puppetlabs/bin/puppet resource service puppetserver ensure=running enable=true
```
Setup Puppet Client
-----------------------------------------------------------------

```sh
cd ~ && wget https://apt.puppetlabs.com/puppetlabs-release-pc1-trusty.deb
sudo dpkg -i puppetlabs-release-pc1-trusty.deb
sudo apt-get update
sudo apt-get install puppet-agent
sudo /opt/puppetlabs/bin/puppet resource service puppet ensure=running enable=true
```
```sh
puppet agent -t 
puppet agent -t --noop
puppet agent -t -vv
puppet agent -d
```

Managing Modules
-----------------------------------------------------------------
```sh
puppet module list
puppet module install <name>
puppet module uninstall <name>
puppet module upgrade <name>
puppet module search <name>
```

Display facts
-----------------------------------------------------------------
```sh
facter              # All system facts
facter -p           # All system and Puppet facts
facter -y	        # YAML
facter -j	        # JSON

facter [-p] <name>  # A specific fact

# Examples
facter memoryfree
facter is_virtual processor0

```

Inspecting Resources/Types
-----------------------------------------------------------------
```sh
puppet describe -l
puppet resource <type name>

# Querying Examples
puppet resource user john.smith
puppet resource service apache
puppet resource mount /data
puppet resource file /etc/motd
puppet resource package wget

```


Misc
-----------------------------------------------------------------
```sh
facter
facter -p
hiera -c /etc/puppet/hiera.yaml sshservicename osfamily=Debian

```


Resources
-----------------------------------------------------------------
http://tonkersten.com/2014/05/141-puppet-environments/

http://www.allgoodbits.org/articles/view/38


https://opencredo.com/overriding-puppet-resources-with-class-inheritance/

https://docs.puppet.com/puppet/5.0/lang_classes.html
