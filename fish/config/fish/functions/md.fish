# Create a new directory and enter it
function md
    mkdir -p $argv; and cd $argv[-1]
end
