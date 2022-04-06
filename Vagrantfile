# -*- mode: ruby -*-
# vim: set ft=ruby :

MACHINES = {
  :web1 => {
        :box_name => "centos7-custom",
        :ip_addr => '192.168.11.111'
  },
  :web2 => {
        :box_name => "centos7-custom",
        :ip_addr => '192.168.11.112'
  },
  :proxy1 => {
        :box_name => "centos7-custom",
        :ip_addr => '192.168.11.113'
  },
  :proxy2 => {
        :box_name => "centos7-custom",
        :ip_addr => '192.168.11.114'
  }
}

Vagrant.configure("2") do |config|

  MACHINES.each do |boxname, boxconfig|

      config.vm.define boxname do |box|

          box.vm.box = boxconfig[:box_name]
          box.vm.host_name = boxname.to_s

          #box.vm.network "forwarded_port", guest: 3260, host: 3260+offset

          box.vm.network "private_network", ip: boxconfig[:ip_addr]

          box.vm.provider :virtualbox do |vb|
            vb.customize ["modifyvm", :id, "--memory", "256"]
            # Подключаем дополнительные диски
            #vb.customize ['createhd', '--filename', second_disk, '--format', 'VDI', '--size', 5 * 1024]
            #vb.customize ['storageattach', :id, '--storagectl', 'IDE', '--port', 0, '--device', 1, '--type', 'hdd', '--medium', second_disk]
          end
          config.vm.provision "shell" do |s|
			ssh_pub_key = File.readlines("/home/sirius/.ssh/id_rsa.pub").first.strip
			s.inline = <<-SHELL
			mkdir -p /home/vagrant/.ssh
			sudo mkdir -p /root/.ssh
			echo #{ssh_pub_key} >> /home/vagrant/.ssh/authorized_keys
			echo #{ssh_pub_key} >> /root/.ssh/authorized_keys
            sed -i '65s/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
            systemctl restart sshd
			SHELL
		  end
      end
  end
end
