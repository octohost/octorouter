VAGRANTFILE_API_VERSION = "2"
 
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
 
 
  # Turn off shared folders
  # config.vm.synced_folder ".", "/vagrant", id: "vagrant-root", disabled: true
 
  # Begin server1
  config.vm.define "server1" do |server1|
    server1.vm.hostname = "router"
    server1.vm.box = "octorouter"
 
    server1.vm.provider "virtualbox" do |v|
        v.customize [ "modifyvm", :id, "--cpus", "1" ]
        v.customize [ "modifyvm", :id, "--memory", "512" ]
    end

    server1.vm.network "private_network", ip: "192.168.62.86"
  end
  # End server1
 
  # Begin server2
  config.vm.define "server2" do |server2|
    server2.vm.hostname = "host1"
    server2.vm.box = "octohost"
 
    server2.vm.provider "virtualbox" do |v|
        v.customize [ "modifyvm", :id, "--cpus", "1" ]
        v.customize [ "modifyvm", :id, "--memory", "512" ]
    end

    server2.vm.network "private_network", ip: "192.168.62.85"
  end
  # End server2
  
  # Begin server3
  config.vm.define "server3" do |server3|
    server3.vm.hostname = "host2"
    server3.vm.box = "octohost"
 
    server3.vm.provider "virtualbox" do |v|
        v.customize [ "modifyvm", :id, "--cpus", "1" ]
        v.customize [ "modifyvm", :id, "--memory", "512" ]
    end

    server3.vm.network "private_network", ip: "192.168.62.84"
  end
  # End server3
  
end