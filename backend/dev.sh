export CORS_ALLOW_ORIGIN="http://localhost:5173"
export OAUTH_CLIENT_ID="infra_mllm"
export OAUTH_CLIENT_SECRET="I0P0yo66HtWJUyRl8l66zCTmQrtwSSRq"
export OPENID_PROVIDER_URL="https://ailb-web.ing.unimore.it/sso/realms/aimagelab-srv/.well-known/openid-configuration"
export OPENID_REDIRECT_URI="/oauth/oidc/callback"

PORT="${PORT:-8080}"
uvicorn open_webui.main:app --port $PORT --host 0.0.0.0 --forwarded-allow-ips '*' --reload
