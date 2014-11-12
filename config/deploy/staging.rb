role :app, %w{vocat_docs@vocat-docs.dev.cichq.com}
role :web, %w{vocat_docs@vocat-docs.dev.cichq.com}
server 'vocat-docs.dev.cichq.com', user: 'vocat_docs', roles: %w{web app}

