role :app, %w{vocat_docs@uhura.vocat.io}
role :web, %w{vocat_docs@uhura.vocat.io}
server 'uhura.vocat.io', user: 'vocat_docs', roles: %w{web app}

