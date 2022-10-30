Vagrant.configure("2") do |config|
  config.vm.define "control-plane-node-1" do |vm|
    vm.vm.provider :libvirt do |domain|
      domain.cpus = 2
      domain.memory = 2048
#      domain.serial :type => "file", :source => {:path => "/tmp/control-plane-node-1.log"}
      domain.storage :file, :device => :cdrom, :path => "/tmp/talos-amd64.iso"
      domain.storage :file, :size => '32G', :type => 'raw'
      domain.boot 'hd'
      domain.boot 'cdrom'
    end
  end

  config.vm.define "control-plane-node-2" do |vm|
    vm.vm.provider :libvirt do |domain|
      domain.cpus = 2
      domain.memory = 2048
#      domain.serial :type => "file", :source => {:path => "/tmp/control-plane-node-2.log"}
      domain.storage :file, :device => :cdrom, :path => "/tmp/talos-amd64.iso"
      domain.storage :file, :size => '32G', :type => 'raw'
      domain.boot 'hd'
      domain.boot 'cdrom'
    end
  end

  config.vm.define "control-plane-node-3" do |vm|
    vm.vm.provider :libvirt do |domain|
      domain.cpus = 2
      domain.memory = 2048
#      domain.serial :type => "file", :source => {:path => "/tmp/control-plane-node-3.log"}
      domain.storage :file, :device => :cdrom, :path => "/tmp/talos-amd64.iso"
      domain.storage :file, :size => '32G', :type => 'raw'
      domain.boot 'hd'
      domain.boot 'cdrom'
    end
  end

  config.vm.define "worker-node-1" do |vm|
    vm.vm.provider :libvirt do |domain|
      domain.cpus = 2
      domain.memory = 2048
#      domain.serial :type => "file", :source => {:path => "/tmp/worker-node-1.log"}
      domain.storage :file, :device => :cdrom, :path => "/tmp/talos-amd64.iso"
      domain.storage :file, :size => '64G', :type => 'raw'
      domain.boot 'hd'
      domain.boot 'cdrom'
    end
  end

  config.vm.define "worker-node-2" do |vm|
    vm.vm.provider :libvirt do |domain|
      domain.cpus = 2
      domain.memory = 2048
#      domain.serial :type => "file", :source => {:path => "/tmp/worker-node-2.log"}
      domain.storage :file, :device => :cdrom, :path => "/tmp/talos-amd64.iso"
      domain.storage :file, :size => '64G', :type => 'raw'
      domain.boot 'hd'
      domain.boot 'cdrom'
    end
  end

  config.vm.define "worker-node-3" do |vm|
    vm.vm.provider :libvirt do |domain|
      domain.cpus = 2
      domain.memory = 2048
#      domain.serial :type => "file", :source => {:path => "/tmp/worker-node-2.log"}
      domain.storage :file, :device => :cdrom, :path => "/tmp/talos-amd64.iso"
      domain.storage :file, :size => '64G', :type => 'raw'
      domain.boot 'hd'
      domain.boot 'cdrom'
    end
  end
end

