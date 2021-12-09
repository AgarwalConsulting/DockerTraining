# Setup

## Using VirtualBox & Vagrant

Install these two tools:

- https://www.virtualbox.org/
- https://www.vagrantup.com/

You might have to restart your system during this phase.

### Setting up vagrant to interact with VBox

Then from Terminal (Mac/Linux) or Git Bash (Windows), execute the following...

```bash
vagrant --version

vagrant plugin install vagrant-vbguest
```

### Creating the image and instal tools

Clone the Docker repository into a suitable location...

```bash
git clone https://github.com/AgarwalConsulting/DockerTraining.git

cd DockerTraining

vagrant up
```
