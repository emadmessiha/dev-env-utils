echo "Input MFA code:"
read MFA_CODE
function parse_keys 
  set -xU AWS_ACCESS_KEY_ID "$argv[2]"
  set -xU AWS_SECRET_ACCESS_KEY "$argv[4]"
  set -xU AWS_SESSION_TOKEN "$argv[5]"
end
set -e AWS_ACCESS_KEY_ID
set -e AWS_SECRET_ACCESS_KEY
set -e AWS_SESSION_TOKEN
aws sts get-session-token --output="text" --serial-number "$MFA_ID" --token-code "$MFA_CODE" > session.txt && parse_keys (cat session.txt | string split \t) && rm session.txt
