LOGIN = isaadi

all:
	sudo mkdir -p /home/$(LOGIN) && sudo chown $(USER):$(USER) /home/$(LOGIN)
	mkdir -p /home/$(LOGIN)/data/wp-files
	mkdir -p /home/$(LOGIN)/data/wp-db
	cd srcs && docker-compose up --build