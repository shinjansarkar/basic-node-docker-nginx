          [ Browser / Client ]
                   |
                   |  (HTTP Request to port 80)
                   v
            [ Host Machine: Port 80 ]
                   |
                   v
     ┌──────────────────────────────┐
     │         NGINX Container      │
     │  - Listens on port 80        │
     │  - Proxies to backend:3000   │
     └──────────────────────────────┘
                   |
         Docker Network (bridge)
                   |
                   v
     ┌──────────────────────────────┐
     │       Node.js Container      │
     │  - Express app on port 3000  │
     │  - Responds with content     │
     └──────────────────────────────┘
                   |
                   v
            [ NGINX sends back response ]
                   |
                   v
           [ Browser displays result ]
