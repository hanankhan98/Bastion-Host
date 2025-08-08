# Bastion-Host
The goal of this project is to learn and practice how to set up a bastion host—a secure entry point that enables authorized users to access private infrastructure or internal systems without exposing them to the public internet.

Great choice! Setting up a bastion host is a foundational skill in infrastructure security. Here's a **step-by-step plan** to guide you through the project:

---

### ✅ **Phase 1: Infrastructure Setup**

1. **Choose a cloud provider** (e.g., AWS, DigitalOcean).
2. **Provision two servers**:

   * **Bastion Host**: Public IP (allow SSH from your IP only).
   * **Private Server**: No public IP (allow SSH only from Bastion Host IP).
3. **Generate SSH key pairs** (one for each server or shared if preferred).
4. **Attach public keys** to respective servers.

---

### ✅ **Phase 2: SSH Configuration**

#### On your **local machine**:

1. Edit `~/.ssh/config`:

```ssh
Host bastion
    HostName <BASTION_PUBLIC_IP>
    User ubuntu
    IdentityFile ~/.ssh/bastion-key.pem

Host private-server
    HostName <PRIVATE_SERVER_PRIVATE_IP>
    User ubuntu
    IdentityFile ~/.ssh/private-server-key.pem
    ProxyJump bastion
```

#### Test Access:

* `ssh bastion` (connect to bastion)
* `ssh private-server` (from local or bastion)

---

### ✅ **Phase 3: Security Hardening**

* Enable **UFW** or **iptables** on both servers.
* Install and configure **fail2ban** on the bastion host.
* (Stretch) Enable **MFA** for SSH on the bastion using `google-authenticator`.

---

### ✅ **Phase 4: Optional Automation**

* Use **Terraform** or **Ansible** to provision and configure:

  * Networking (e.g., VPC, firewall rules).
  * EC2 or droplet instances.
  * SSH key injection, UFW, fail2ban, MFA setup.

---

### ✅ **Final Submission Structure**

```
bastion-host-project/
├── README.md               # Explain setup steps, configs, tools used
├── ssh-config-example      # Redacted version of your ~/.ssh/config
├── terraform/              # (Optional) Terraform code
├── ansible/                # (Optional) Ansible playbooks
```

---
https://roadmap.sh/projects/bastion-host
