### МТМТ-рекомендації з усунення загроз

| № Загрози | МТМТ-рекомендації з усунення загроз |
| :--- | :--- |
| 1 | Failure to restrict requests originating from third party domains may result in unauthorized actions or access of data |
| 2 | Ensure that administrative interfaces are appropriately locked down. |
| 3 | Do not expose security details in error messages. |
| 4 |Ensure that the application does not log sensitive user data. |
| 5 | Ensure that auditing and logging is enforced on the application. |
| 6 | Set up session for inactivity lifetime. |
| 7 | Implement Content Security Policy (CSP), and disable inline javascript. |
| 8 | Enable fine-grained access management to Azure Subscription using RBAC. |
| 9 | Restrict access to Azure Postgres DB instances by configuring server-level firewall rules to only permit connections from selected IP addresses where possible. |
| 10 | Enforce communication between clients and Azure Postgres DB to be over SSL/TLS by enabling the Enforce SSL connection feature on the server. Check that the connection strings used to connect to MySQL databases have the right configuration (e.g. ssl = true or sslmode=require or sslmode=true are set). |
| 11 | Do not expose security details in error messages. |
| 12 | Ensure that auditing and logging is enforced on the application. |
| 13 | Verify X.509 certificates used to authenticate SSL, TLS, and DTLS connections. |
| 14 | Explicitly disable the autocomplete HTML attribute in sensitive forms and inputs. |