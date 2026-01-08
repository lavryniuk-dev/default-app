APP_NAME=default-app
COMPOSE_FILE=docker-compose.yml
NGINX_URL=http://localhost:8080/healthz

# --- Build and deploy ---
up:
	docker compose -f $(COMPOSE_FILE) up -d --build

# --- Stop and remove ---
down:
	docker compose -f $(COMPOSE_FILE) down

# --- Show logs ---
logs:
	docker compose -f $(COMPOSE_FILE) logs -f

# --- Test rate limit ---
test:
	@echo "Sending 20 requests in quick succession to test 429..."
	@seq 1 20 | xargs -P20 -I{} curl -s -o /dev/null -w "%{http_code}\n" $(NGINX_URL) | sort | uniq -c
	@echo "Expected: some 429s if limit works."
