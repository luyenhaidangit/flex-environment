#!/bin/bash

# Cập nhật repository từ Git
echo "Đang cập nhật repository từ Git..."
git pull || { echo "Git pull thất bại."; exit 1; }

# Dừng tất cả các container
echo "Đang dừng tất cả các container..."
docker-compose down || { echo "Không thể dừng các container."; exit 1; }

# Tải lại tất cả các image mới nhất (nếu có)
echo "Đang tải tất cả các Docker image mới nhất..."
docker-compose pull || { echo "Không thể tải image mới."; exit 1; }

# Chỉ chạy dịch vụ Portainer
echo "Đang khởi động lại dịch vụ Portainer..."
docker-compose up -d portainer || { echo "Không thể khởi động dịch vụ Portainer."; exit 1; }

# Thông báo hoàn thành
echo "Đã cập nhật và khởi động lại dịch vụ Portainer thành công."
