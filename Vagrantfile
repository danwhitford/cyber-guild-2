Vagrant.configure("2") do |config|
  config.vm.synced_folder '.', '/vagrant', disabled: true
  if Vagrant.has_plugin?("vagrant-vbguest")
    config.vbguest.auto_update = false
  end
  
  config.vm.define "ub1404" do |ub1404|
    ub1404.vm.box = "rapid7/metasploitable3-ub1404"
    ub1404.vm.hostname = "metasploitable3-ub1404"
    config.ssh.username = 'vagrant'
    config.ssh.password = 'vagrant'

    ub1404.vm.network "private_network", ip: '10.0.0.3'

    ub1404.vm.provider "virtualbox" do |v|
      v.name = "Metasploitable3-ub1404"
      v.memory = 2048
    end
  end

  config.vm.define "attacker" do |attacker|
    attacker.vm.box = "bento/ubuntu-18.04"
    attacker.vm.network "private_network", ip: '10.0.0.10'

    attacker.vm.provision "shell", path: "attacker.sh"
  end

end
