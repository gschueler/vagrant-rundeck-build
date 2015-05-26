
Vagrant.configure("2") do |config|

  config.vm.box = "chef/centos-6.5"

  # config.vm.network :forwarded_port, guest: 4440, host: 14440
  config.vm.provider :virtualbox do |v|
    v.customize ["modifyvm", :id, "--memory", 2048]
  end

  REPO="https://github.com/rundeck/rundeck.git"
  PATH="/home/vagrant/rundeck"

  config.vm.provision :shell, :path => "install-java.sh"
  config.vm.provision :shell, :path => "clone.sh", :args => "#{REPO} #{PATH}"
  # config.vm.provision :shell, :path => "build.sh", :args => PATH
  config.vm.provision :shell,
    :inline => "su - vagrant -c 'bash /vagrant/build.sh #{PATH}'"

end
