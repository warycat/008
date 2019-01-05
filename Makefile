admin-image:
	docker build -t admin admin

admin: admin-image
	docker run --rm -ti -v `pwd`/env:/008/env -v `pwd`/admin:/008 admin

node:
	docker run --rm -ti -v `pwd`:/008 node

nyan:
	docker run -it supertest2014/nyan
