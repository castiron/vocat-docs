role :app, %w{vocat_docs@spock.vocat.io}
role :web, %w{vocat_docs@spock.vocat.io}
server 'vocat-docs.dev.cichq.com', user: 'vocat_docs', roles: %w{web app}

