# SecureScan---Docker-and-K8

Step-by-Step Guide to Add Security Scanning to Your GitHub Repo

*Add the Security Scan Script (scan.sh)*

**Step 1 : Create a file called scan.sh in your project root**
Open your terminal or code editor\
Create a file named scan.sh

Run this command in your terminal (in the project root):
chmod +x scan.sh

Step 2: Add the GitHub Actions Workflow

Create the workflow file
Create a folder .github/workflows if it doesn’t exist.
Create a new file called security-scan.yml inside .github/workflows
Paste this workflow YAML content into security-scan.yml

**Step 3: Commit and Push Your Changes**

Stage the new files
git add scan.sh .github/workflows/security-scan.yml

Commit your changes
git commit -m "Add Docker and Kubernetes security scanning to CI"

Push to your main branch
git push origin main

**Step 4: Verify the GitHub Actions Run**

Go to your GitHub repository
Click on the Actions tab
You should see a workflow named Security Scan running on your latest push
Wait for it to complete
If vulnerabilities are found or Kubernetes manifests have issues, the build will fail (you'll see errors)

**Summary**

scan.sh runs Trivy (for Docker image) and Kubescape (for Kubernetes manifests)
The GitHub Actions workflow builds your Docker image and runs the scan script on every push or PR
The workflow fails if vulnerabilities/issues are found, keeping your code secure
