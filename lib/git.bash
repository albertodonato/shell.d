# shellcheck disable=SC2039
#
# Utility functions for Git.


# Return a git reference (if available for the prompt)
git_prompt_ref() {
    local ref hash
    ref=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
    hash=$(git rev-parse --short HEAD 2>/dev/null)
    if [ -n "$hash" ] && [ -n "$ref" ]; then
        echo "${ref}(${hash})"
    fi
}
