if status is-login
  if command -q uwsm
    if uwsm check may-start && uwsm select; then
    exec uwsm start default
  end
end
end
