# Building a fresh Vagrant Box

    vagrant up

This may time out waiting to provision, so if it does, run this after:

    vagrant halt
    vagrant up --provision

## Clear the free space for better compression

    vagrant ssh
    sudo dd if=/dev/zero of=/EMPTY bs=1M
    sudo rm -f /EMPTY
    sudo sync
    logout
    vagrant halt

## Package it up into a box

    vagrant package --output vagrant-freebsd.box

## Add it locally to test before uploading

    vagrant box add attendease-freebsd-base vagrant-freebsd.box
