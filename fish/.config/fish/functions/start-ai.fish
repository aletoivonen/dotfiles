function start-ai
  lms server start --port 1234
  lms load qwen3.5-9b --context-length 16000
end
