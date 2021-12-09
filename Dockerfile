FROM git.octree.ch:4567/decidim/ocsin/024:build-base-a8a7888d AS assets
# Add overrides to basic existing app
COPY . ./
# Run precompile with overrides
RUN source $NVM_DIR/nvm.sh; nvm use $NODE_VERSION && \
    SECRET_KEY_BASE=assets bundle exec rails assets:precompile

FROM git.octree.ch:4567/decidim/ocsin/024:alpine-a8a7888d
COPY --chown=$USER:$GROUP --from=assets /home/$USER/app ./
# Run bootsnap caching to load faster rails app
RUN bundle exec bootsnap precompile --gemfile app/ lib/