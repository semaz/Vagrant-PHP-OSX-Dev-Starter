Set up a MacOS PHP development box 
=======================================

## Install ##

1. `git clone https://github.com/DevCreel/Vagrant-PHP-OSX-Dev-Starter.git ~/Vagrant`
2. Place your projects into folder `~/Sites`
3. Install Homebrew
4. Run `brew cask install vagrant`
5. Run `cd && sh Vagrant/install.sh`

### Provider: VirtualBox
```
cp Vagrantfile_ParallelsDesktop Vagrantfile
brew cask install virtualbox
brew cask install virtualbox-extension-pack
vagrant plugin install vagrant-vbguest
vagrant up
vagrant vbguest
```

### Provider: ParallelsDesktop
```
cp Vagrantfile_ParallelsDesktop Vagrantfile
vagrant plugin install vagrant-parallels
vagrant up
```