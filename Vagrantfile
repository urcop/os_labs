# -*- mode: ruby -*-
# vim: set ft=ruby :

MACHINES = {
  :pg1 => {
        :box_name => "centos7-custom",
        :ip_addr => '192.168.11.20'
  },
  :pg2 => {
        :box_name => "centos7-custom",
        :ip_addr => '192.168.11.21'
  },
  :dcs1 => {
        :box_name => "centos7-custom",
        :ip_addr => '192.168.11.30'
  },
  :dcs2 => {
        :box_name => "centos7-custom",
        :ip_addr => '192.168.11.31'
  },
  :dcs3 => {
        :box_name => "centos7-custom",
        :ip_addr => '192.168.11.32'
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
          case boxname.to_s
          when "pg1"
          box.vm.disk :disk, size: "10GB", name: "pg1_pg_data"
          box.vm.disk :disk, size: "10GB", name: "pg1_pg_wal"
          when "pg2"
          box.vm.disk :disk, size: "10GB", name: "pg2_pg_data"
          box.vm.disk :disk, size: "10GB", name: "pg2_pg_wal"
          end
          config.vm.provision "shell" do |s|
          ssh_pub_key = File.readlines("/home/sirius/.ssh/id_rsa.pub").first.strip
          s.inline = <<-SHELL
            mkdir -p ~root/.ssh; cp ~vagrant/.ssh/auth* ~root/.ssh
            sed -i '65s/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
            echo #{ssh_pub_key} >> /home/vagrant/.ssh/authorized_keys
            echo #{ssh_pub_key} >> /root/.ssh/authorized_keys
            sleep 2
	    systemctl restart sshd
          SHELL
          end
      end
  end
end
