# AI-Dev-Platform

This is a project for deploying a development for AI, especially for the case of internal network.

So, generally, the environment is as following:
   - One machine for deploying docker registry with the pull cache mode. Refer to [registry](registry/README.md) .
   - One machine for installing Rancher. Refer to [rancher](rancher/README.md) .
   - (Optional) If needed, make the ssh tunnel for accessing the Rancher. Refer to [sshtunnel](ssh/tunnel) .
