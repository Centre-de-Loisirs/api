.PHONY: build
build: build/native

.PHONY: test
test:
	./gradlew test

.PHONY: local
local:
	./gradlew quarkusDev

build/native:
	./gradlew build -Dquarkus.package.jar.enabled=false -Dquarkus.native.enabled=true -Dquarkus.native.container-build=true
	docker compose build api

ci/build/app/native:
	./gradlew quarkusAppPartsBuild -Dquarkus.package.jar.enabled=false -Dquarkus.native.enabled=true -Dquarkus.native.container-build=true

ci/test/app/native:
	./gradlew test -Dquarkus.package.jar.enabled=false -Dquarkus.native.enabled=true -Dquarkus.native.container-build=true
