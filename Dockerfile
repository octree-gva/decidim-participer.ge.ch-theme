FROM git.octree.ch:4567/decidim/ocsin/releases:build-base-v5.0.3 AS assets
# Add overrides to basic existing app
COPY . ./
# Run precompile with overrides
RUN source $NVM_DIR/nvm.sh; nvm use $NODE_VERSION && \
     SECRET_KEY_BASE=assets bundle exec rails assets:precompile

FROM git.octree.ch:4567/decidim/ocsin/releases:alpine-v5.0.3
COPY --chown=decidim:decidim --from=assets $RAILS_ROOT .

RUN mkdir -p $RAILS_ROOT/storage $RAILS_ROOT/public $RAILS_ROOT/log $RAILS_ROOT/certs
VOLUME $RAILS_ROOT/storage
VOLUME $RAILS_ROOT/public
VOLUME $RAILS_ROOT/log
VOLUME $RAILS_ROOT/certs

# Run bootsnap caching to load faster rails app
RUN bundle exec bootsnap precompile --gemfile app/ lib/