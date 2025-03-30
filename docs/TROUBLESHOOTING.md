# Troubleshooting Guide

## Common Issues

### API Errors
```lua
-- Check response status
print("Status:", response.StatusCode)
print("Body:", response.Body)
```

### JSON Parsing Fails
Try adding this cleanup step:
```lua
response = response:gsub("^%s+", ""):gsub("%s+$", ""):gsub("```json", "")
```

[Back to Setup](SETUP.md)