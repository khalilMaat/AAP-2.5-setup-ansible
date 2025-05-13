# OpenStack Terraform Infrastructure: 3 VMs + Virtual IP (VIP)

This Terraform project deploys:

- **3 controller virtual machines**
- A **Virtual IP (VIP)** port
- A **Floating IP** associated with the VIP

All resources are deployed on an OpenStack cloud environment.

---

## 📦 Modules Used

### 1. `compute` Module

Deploys multiple compute instances (VMs).

- **Features**:
  - Configurable image, flavor, network
  - Creates 3 VMs by default
  - Outputs VM IDs and IPs

### 2. `vip` Module

Creates a dedicated VIP port and associates a floating IP.

- **Features**:
  - Assigns a port on the same network
  - Allocates and binds a public floating IP
  - Outputs both private and public IPs

---

## 🔧 Requirements

- Terraform >= 0.14.0
- OpenStack provider plugin
- Access to an OpenStack cloud

---

## 🚀 Getting Started

### 1. Clone the repo:

```bash
git clone https://github.com/khalilMaat/AAP-2.5-setup-ansible.git
cd AAP-2.5-setup-ansible/terraform
```
