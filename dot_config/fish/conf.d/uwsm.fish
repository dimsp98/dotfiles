## Start uwsm if allowed and not already running
if status is-login
    if command -q uwsm
        if uwsm check may-start; and uwsm select
            exec uwsm start default
        end
    end
end

