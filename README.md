# ohm-containerized

## Publishing the container image

The GitHub Actions workflow publishes the image to Docker Hub as
`<Docker Hub username>/ohm-containerized`.

Add these repository secrets in **Settings → Secrets and variables → Actions**:

- `DOCKERHUB_USERNAME`: your Docker Hub username
- `DOCKERHUB_TOKEN`: a Docker Hub access token with permission to push the repository

The workflow builds the image for pull requests without publishing it. Pushes to
`master` publish the `latest` and commit-SHA tags, while version tags such as
`v1.2.3` publish the corresponding version tag.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.