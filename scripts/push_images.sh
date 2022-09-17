TRAVIS_TAG="release-$(git rev-parse --short ${TRAVIS_COMMIT})"
echo "$TRAVIS_TAG" "$TRAVIS_COMMIT"

# udagram-api-feed image

docker tag $DOCKER_USERNAME/udagram-api-feed $DOCKER_USERNAME/udagram-api-feed:latest

docker push $DOCKER_USERNAME/udagram-api-feed:latest

# udagram-api-user image

docker tag $DOCKER_USERNAME/udagram-api-user $DOCKER_USERNAME/udagram-api-user:latest

docker push $DOCKER_USERNAME/udagram-api-user:latest



# udagram-frontend image

docker tag $DOCKER_USERNAME/udagram-frontend $DOCKER_USERNAME/udagram-frontend:latest

docker push $DOCKER_USERNAME/udagram-frontend:latest

# reverseproxy image

docker tag $DOCKER_USERNAME/reverseproxy $DOCKER_USERNAME/reverseproxy:latest

docker push $DOCKER_USERNAME/reverseproxy:latest
