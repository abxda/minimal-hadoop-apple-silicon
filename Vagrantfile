Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-22.04-arm64"

  config.vm.provider :vmware_desktop do |vmware|
    vmware.memory = 4096
    vmware.cpus = 4
  end

  config.vm.provision "shell", path: "install-java.sh"
  config.vm.provision "shell", run: "always", path: "start-services.sh", privileged: false
  config.vm.network "forwarded_port", guest: 8888, host: 7171
end
