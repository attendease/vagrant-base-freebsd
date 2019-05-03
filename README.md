# Building a fresh Vagrant Box

    vagrant up
    vagrant halt
    vagrant package --output vagrant-freebsd.box
    vagrant box add attendease-freebsd-base vagrant-freebsd.box
