#!/bin/sh

if [ -n "$RENDER_EXTERNAL_URL" ]; then
  RENDER_HOST=$(echo "$RENDER_EXTERNAL_URL" | sed 's|https://||' | sed 's|http://||')
  export N8N_HOST="${N8N_HOST:-$RENDER_HOST}"
  export N8N_EDITOR_BASE_URL="${N8N_EDITOR_BASE_URL:-$RENDER_EXTERNAL_URL}"
  export WEBHOOK_URL="${WEBHOOK_URL:-$RENDER_EXTERNAL_URL}"
fi

exec /docker-entrypoint.sh n8n start
