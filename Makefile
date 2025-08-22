# ======================
# 生产环境部署命令
# (这些命令仅供参考，实际在生产服务器上是手动执行)
# ======================
prod-up:
  # 在生产服务器上执行此命令前，需先设置好 .env 和 docker-compose.prod.yml
  # 并通过 export IMAGE_TAG=<tag> 指定版本
	docker compose -f docker-compose.prod.yml --env-file .env up -d

prod-down:
	docker compose -f docker-compose.prod.yml down