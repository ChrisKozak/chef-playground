Vagrant::Config.run do |config|
  # If you are unfamiliar with Vagrant, online documentation is at vagrantup.com.

  config.vm.box = "base"
  config.vm.box_url = "http://files.vagrantup.com/lucid32.box"
  config.vm.forward_port 8080, 8080
  
  config.vm.provision :chef_solo do |chef|
    chef.add_recipe("apt")
    chef.roles_path = "roles"
    chef.add_role("web")
  end
end
