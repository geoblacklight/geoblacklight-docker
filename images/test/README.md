## Docker Image for Geoblacklight Testing


Use github repo

	docker run --name test --rm -it -p 3000:3000 geoblacklight/test /bin/sh run_tests.sh
	docker run --name test --rm -it -p 3000:3000 geoblacklight/test /bin/sh run_tests.sh branch-name

	or...

	docker run --name test -dit -p 3000:3000 geoblacklight/test /bin/sh
	docker exec test /bin/sh run_tests.sh branch-name

Use local repo


	docker run --name test -dit -v ~/local/path/geoblacklight:/usr/src/geoblacklight  -p 3000:3000 geoblacklight/test /bin/sh run_tests.sh --local
	docker run --name test -dit -v  ~/local/path/geoblacklight:/usr/src/geoblacklight  -p 3000:3000 geoblacklight/test /bin/sh run_tests.sh --local branch-name