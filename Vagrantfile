# Optimized for Vagrant 1.7 and above.
Vagrant.require_version ">= 1.7.0"

Vagrant.configure(2) do |config|

  config.vm.box = "bento/ubuntu-16.04"
  config.vm.hostname = "app"

  # configure vm
  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = false
    vb.name = 'app'

    # Customize the amount of memory on the VM:
    vb.memory = 1024
    vb.cpus = 2
  end

  # network
  config.vm.network "forwarded_port", guest: 80, host: 80
  #config.vm.network "forwarded_port", guest: 3306, host: 3306
  config.vm.network "private_network", ip: "192.168.50.4"

  # sync
  config.vm.synced_folder "~/Sites", "/var/www/html", type: "virtualbox"

  # Disable the new default behavior introduced in Vagrant 1.7, to
  # ensure that all Vagrant machines will use the same SSH key pair.
  # See https://github.com/mitchellh/vagrant/issues/5005
  config.ssh.insert_key = false

  # Run Ansible from the Vagrant VM
  config.vm.provision "ansible_local" do |ansible|
    # ansible.verbose = "vv"
    ansible.playbook = "playbooks/vagrant.yml"
  end

end