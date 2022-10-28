FROM git.octree.ch:4567/decidim/ocsin/releases:build-base-latest AS assets
# Add overrides to basic existing app
COPY . ./
# Run precompile with overrides
RUN source $NVM_DIR/nvm.sh;\
     nvm use $NODE_VERSION \
     && (bundle check || bundle install) \
     && SECRET_KEY_BASE=assets bundle exec rails assets:precompile
FROM git.octree.ch:4567/decidim/ocsin/releases:alpine-latest
COPY --chown=decidim:decidim --from=assets $RAILS_ROOT .

VOLUME $RAILS_ROOT/storage
VOLUME $RAILS_ROOT/public
VOLUME $RAILS_ROOT/log
VOLUME $RAILS_ROOT/certs

# Run bootsnap caching to load faster rails app
RUN bundle exec bootsnap precompile --gemfile app/ lib/