role :app, %w{vocat_docs@vocat.io}
role :web, %w{vocat_docs@vocat.io}
server 'vocat.io', user: 'vocat_docs', roles: %w{web app}

