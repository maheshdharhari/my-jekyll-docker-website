# Create a Jekyll container from a Ruby Alpine image

# At a minimum, use Ruby 2.5 or later
FROM ruby:2.7-alpine3.16

# Add Jekyll dependencies to Alpine
RUN apk update
RUN apk Add --no-cache build-base gcc cmake git
# update the Ruby budler and  isntall Jekyll
RUN gem update bundler && gem install bundler jekyll