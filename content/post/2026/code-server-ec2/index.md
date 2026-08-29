---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Setting up Code Server on an EC2 Instance"

subtitle: "A Cloud9 replacement for the AWS Academy Learner Lab"
summary: ""
authors: [me]
tags: ["AWS", "EC2", "code-server", "Cloud9", "VS Code"]
categories: []
date: 2026-08-29T09:00:00-03:00
lastmod: 
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---

## Why this post exists

AWS has discontinued **Cloud9**, and it is no longer available in the **AWS Academy Learner Lab**. For years Cloud9 was the easiest way to give students a browser-based IDE with a terminal attached to a real AWS environment — no local setup, no "it works on my machine".

With Cloud9 gone, we need a replacement that keeps the same experience: an editor in the browser, running on an instance we control. [**code-server**](https://github.com/coder/code-server) does exactly that — it is VS Code running on a remote machine, accessed through the browser.

The guide below walks through creating an EC2 instance in the Learner Lab and installing code-server on it. If you already have a Linux machine (another cloud, a VM, a lab server), skip straight to **Step 7**.

---

## Creating the EC2 instance

**1.** Click **Launch Instance**.

<img width="1090" height="857" alt="Launch instance button in the EC2 console" src="https://github.com/user-attachments/assets/5400f8bb-9816-4e08-99be-b419b2e9b4fd" />

---

**2.** Give it a name — for example `DEV` — and choose **Ubuntu Linux** as the operating system.

<img width="1082" height="847" alt="Naming the instance and selecting the Ubuntu AMI" src="https://github.com/user-attachments/assets/71e5f75f-3116-4a84-8f07-ec8f9cc5ec1f" />

---

**3.** Pick the `t3.large` instance type and `vokey` as the key pair.

> `t3.large` is the most powerful instance type the AWS Academy Learner Lab allows — the lab blocks anything larger. On a personal AWS account there is no such restriction, so feel free to pick something stronger if your workload needs it.
>
> `vokey` is the key pair that already exists in the Learner Lab. On your own AWS account, use (or create) whichever key pair you have access to.

<img width="1085" height="411" alt="Selecting the t3.large instance type and the vokey key pair" src="https://github.com/user-attachments/assets/d19824e1-b6df-4b52-95c2-3b77e924afa6" />

---

**4.** Under **Network settings** (firewall configuration), check **Allow SSH**, **Allow HTTPS** and **Allow HTTP**.

HTTPS is the important one here: the installation below binds code-server to port 443.

<img width="1070" height="356" alt="Network settings with SSH, HTTP and HTTPS allowed" src="https://github.com/user-attachments/assets/1b12fc4a-c0e5-4d74-b3c1-9d0c6432e2ea" />

---

**5.** Under **Configure storage**, raise the disk to **30 GB**. The default 8 GB fills up quickly once you install language runtimes and dependencies.

<img width="1089" height="299" alt="Storage configuration set to 30 GB" src="https://github.com/user-attachments/assets/67c373ad-3bcf-423f-b74f-a3a36bba2f1a" />

---

**6.** Launch the instance.

<img width="547" height="136" alt="Launch instance confirmation button" src="https://github.com/user-attachments/assets/24c2e92e-da26-4e9f-9a06-a7a0426e1ae5" />

---

## Installing code-server

**7.** Once the instance reaches the **running** state, connect to it and paste the following into the terminal.

> This installation uses a self-signed certificate, as described in the project documentation. Your browser will warn you about it the first time — that is expected.

```bash
echo "Installing code server..."

sudo apt update
curl -fsSL https://code-server.dev/install.sh | sh
sudo apt-get -y install python3-pip
sudo apt-get -y install python3.14-venv 

echo "Configuring code server..."
sudo systemctl enable --now code-server@$USER
sudo systemctl restart code-server@$USER
sleep 3

sed -i.bak 's/cert: false/cert: true/' ~/.config/code-server/config.yaml
sed -i.bak 's/bind-addr: 127.0.0.1:8080/bind-addr: 0.0.0.0:443/' ~/.config/code-server/config.yaml
sudo setcap cap_net_bind_service=+ep /usr/lib/code-server/lib/node
sed -i.bak 's/^password: .*/password: code/' ~/.config/code-server/config.yaml

sudo systemctl enable --now code-server@$USER

echo
echo "This is your configuration file"
echo
cat ~/.config/code-server/config.yaml

echo
echo "Restarting service..."
echo
sudo systemctl restart code-server@$USER
```

What each part of the script does:

- **Install** — `apt update` refreshes the package index, the official `install.sh` script installs code-server, and `python3-pip` / `python3.14-venv` give you a working Python toolchain (adjust the version to match your Ubuntu release).
- **Enable the service** — `systemctl enable --now code-server@$USER` starts code-server as a systemd service under your user and makes it survive reboots.
- **`cert: true`** — turns on the built-in self-signed TLS certificate, so the connection is served over HTTPS.
- **`bind-addr: 0.0.0.0:443`** — by default code-server listens only on localhost, port 8080. This makes it listen on every interface, on the standard HTTPS port, so you can reach it from your browser without typing a port number.
- **`setcap cap_net_bind_service=+ep`** — ports below 1024 are privileged. This grants the Node binary permission to bind port 443 without running the whole service as root.
- **`password: code`** — sets a known login password. **Change it.** The installer generates a random password, and the line above replaces it with something easy to type for a classroom demo; anything reachable from the internet deserves a real password.

---

**8.** After the installation finishes, open code-server using the instance's **public IP** or **public DNS**, both available in the **Networking** tab of the EC2 console.

Accept the browser warning about the self-signed certificate, enter the password, and you have VS Code in the browser — the Cloud9 workflow, restored.

> **Learner Lab reminder:** the lab shuts instances down when the session ends, and the public IP changes on every restart. Check the Networking tab again after each new session, and keep your work in a Git repository so nothing is lost when the environment is recycled.

---

## References

- [code-server on GitHub](https://github.com/coder/code-server)
