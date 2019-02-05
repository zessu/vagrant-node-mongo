Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/tasty64"
  # config.vm.box_check_update = false
  config.vm.network "forwarded_port", guest: 3000, host: 8080
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
  # config.vm.network "public_network"
  config.vm.synced_folder ".", "/var/www"
  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.memory = "1024"
  end
  config.vm.provision "shell", path: "bootstrap.sh"
end
