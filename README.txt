This Ansible playbook automates the deployment of Red Hat Ansible Automation Platform 2.5 in a High Availability (HA) configuration using modular roles for scalability and reusability.

✅ Features
Installs Ansible Automation Platform 2.5 in HA mode
Automates prerequisites setup (packages, repositories, storage, etc.)
Configures PostgreSQL database in cluster mode
Sets up Redis and execution nodes
Uses roles to maintain clean, reusable, and testable code structure

📝 Requirements
+RHEL 9+
+Ansible Core 2.16+ or Ansible Automation Platform CLI
+Internet access (or synced private repos)
+PostgreSQL 15
+ 2 VM for min Architect nodes for Test
+ 6 VM Recommended for small HA is (2 gateway+HAProxy + 2 controller ) + (2 VM DB cluster)
+ 12 VM Recommended for big HA is (2 gateway+HAProxy + 2 controller + 2 Hub + 2 EDA + 1 hope_node + 2 execution_node + 1 external_Database)


Start playbook:
> ansible-playbook setup-aap.yml --vault-password-file pass.txt
