FROM ghost:3.41.2

WORKDIR /var/lib/ghost

RUN npm install -g ghost-storage-adapter-s3 && \
    ln -s /usr/local/lib/node_modules/ghost-storage-adapter-s3 ./current/core/server/adapters/storage/s3
