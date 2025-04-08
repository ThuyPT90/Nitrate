#!/bin/bash

# Đi vào thư mục dự án
cd ~/test-nitrate/backend/Nitrate

# Kích hoạt môi trường ảo
source venv/bin/activate

# Thiết lập biến môi trường cho PostgreSQL
export NITRATE_DB_ENGINE=pgsql
export NITRATE_DB_NAME=nitrate
export NITRATE_DB_USER=nitrate
export NITRATE_DB_PASSWORD=nitrate

# Khởi động PostgreSQL (nếu chưa chạy)
sudo service postgresql start

# Chạy server Nitrate
python src/manage.py runserver
