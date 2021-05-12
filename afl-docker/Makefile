.PHONY : all stop build run root

stop:
	-docker stop fuzzer
	sleep 2
	
build:
	docker build --no-cache -t fuzzer:latest .
run:
	docker run --rm --privileged -v $(CURDIR):/pwd --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -d --name fuzzer -i fuzzer

root:
	docker exec -u root -it fuzzer /bin/bash