#!/bin/bash

# Đảm bảo script có quyền thực thi
chmod +x "$0"

# Cập nhật repository từ Git
echo "Đang cập nhật repository từ Git..."
git pull || { echo "Git pull thất bại."; exit 1; }

# Dừng tất cả các container
echo "Đang dừng tất cả các container..."
docker-compose -f docker-compose.yml -f docker-compose.override.yml down || { echo "Không thể dừng các container."; exit 1; }

# Tải lại tất cả các image mới nhất (nếu có)
echo "Đang tải tất cả các Docker image mới nhất..."
docker-compose -f docker-compose.yml -f docker-compose.override.yml pull || { echo "Không thể tải image mới."; exit 1; }

# Tạo container từ image cho tất cả dịch vụ nhưng không khởi động
echo "Đang tạo container từ image cho tất cả dịch vụ..."
docker-compose -f docker-compose.yml -f docker-compose.override.yml create || { echo "Không thể tạo container từ image."; exit 1; }

# Chỉ chạy dịch vụ Portainer
echo "Đang khởi động lại dịch vụ Portainer..."
docker-compose -f docker-compose.yml -f docker-compose.override.yml up -d portainer || { echo "Không thể khởi động dịch vụ Portainer."; exit 1; }

# Thông báo hoàn thành
echo "Đã cập nhật và khởi động lại dịch vụ Portainer thành công."
