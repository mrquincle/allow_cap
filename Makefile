all: net_raw net_bind_service

net_raw:
	gcc -o allow_net_raw allow_net_raw.c -lcap-ng
	sudo setcap 'cap_net_raw+p' ./allow_net_raw

net_bind_service:
	gcc -o allow_net_bind_service allow_net_bind_service.c -lcap-ng
	sudo setcap 'cap_net_bind_service+p' ./allow_net_bind_service

.PHONY: all
