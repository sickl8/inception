LOGIN = isaadi

all:
	sudo mkdir -p /home/$(LOGIN) && sudo chown $(USER):$(USER) /home/$(LOGIN) && sudo sh srcs/sh.sh
	mkdir -p /home/$(LOGIN)/data/wp-files
	mkdir -p /home/$(LOGIN)/data/wp-db
	rm -rf /home/$(LOGIN)/data/wp-files/*
	#rm -rf /home/$(LOGIN)/data/wp-db/*
	cd srcs && docker-compose up --build
re:
	sudo mkdir -p /home/$(LOGIN) && sudo chown $(USER):$(USER) /home/$(LOGIN) && sudo sh srcs/sh.sh
	mkdir -p /home/$(LOGIN)/data/wp-files
	mkdir -p /home/$(LOGIN)/data/wp-db
	rm -rf /home/$(LOGIN)/data/wp-files/*
	rm -rf /home/$(LOGIN)/data/wp-db/*
	cd srcs && docker-compose up --build