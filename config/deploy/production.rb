role :app, %w{vocat_docs@spock.vocat.io}
role :web, %w{vocat_docs@spock.vocat.io}
server 'spock.vocat.io', user: 'vocat_docs', roles: %w{web app}

