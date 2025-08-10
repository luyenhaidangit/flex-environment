# flex-environment

# Github Action
winget install --id GitHub.cli
- gh secret set SERVER_HOST --body "213.35.100.75" --repo luyenhaidangit/flex-environment
- gh secret set SERVER_USER --body "ubuntu" --repo luyenhaidangit/flex-environment
- Get-Content "$env:USERPROFILE\.ssh\ssh-key-2025-06-15.key" -Raw | gh secret set SERVER_SSH_KEY --repo luyenhaidangit/flex-environment --body -
 
portainer
- http://localhost:9000
- admin/Luyenhaidang10062002@

mysql - productdb
- http://localhost:3307
- root(admin)/Luyenhaidang10062002@/ProductDb

pgadmin
- http://localhost:5050
- luyenhaidangit@gmail.com/Luyenhaidang10062002@

postgre
- http://localhost:5432
- admin/Luyenhaidang10062002@/CustomerDb

jenkins
- http://localhost:8080/jenkins
- admin/password: Xem log container lần đầu để lấy initialAdminPassword
