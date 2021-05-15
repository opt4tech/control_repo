class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDXolPLuoAaBuI+9j6jSn1tiDXFDBSxkao4nj2Jf1LSH08O23jL7ZiSeAS5GPcbWyxOw45ubI/XPzCEV+pC+UDfL4pMGeNPCNTgbRKBHFQap92eR93sQfR4OpjYx4ROdafU94/i4pX+ePuEfrWq77fha8zLvk7otap+LKiso+t3RGx7ww3xuGspPtkBZ4BNrsCdab5pB+bC242ms6KoaU4k+CpkVQaQk/Uv4RMH3j65wTqvDuXpzuu8QcQA7/WLLYkMKjrl6kWbxPu3LF6gYOvxzJMYv12k3q4F8iYbcwJYmfScoP2E2gcuk9D7OoEMC5+c6yH6WlkCgNY1rCNXHac9',
	}  
}
