require("io")

function conky_kernel_version()
    local handle = io.popen("uname -r | sed \"s/-.*//\" | tr -d \"\n\"")
    local version = handle:read("*a")
    handle:close()
    return version
end
