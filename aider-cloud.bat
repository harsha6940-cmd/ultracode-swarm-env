@echo off
set OLLAMA_API_BASE=http://127.0.0.1:11434
set "LAUNCH_ARGS="
set AIDER_MAP_TOKENS=32768

if /I "%1"=="UltraCode" (
    shift
    set "LAUNCH_ARGS=%1 %2 %3 %4 %5 %6 %7 %8 %9"
    aider --model ollama/qwen3-coder:480b-cloud --read "%USERPROFILE%\.aider.conventions.md" --auto-test --test-cmd "%AIDER_TEST_CMD%" --git --auto-commits %LAUNCH_ARGS%
) else {
    aider --model ollama/qwen3-coder:480b-cloud --architect --editor-model ollama/qwen3-coder:480b-cloud --read "%USERPROFILE%\.aider.conventions.md" --auto-test --test-cmd "%AIDER_TEST_CMD%" --git --auto-commits %*
}
