function try
    set -l out (/usr/bin/env ruby \
        '/opt/homebrew/lib/ruby/gems/4.0.0/gems/try-cli-1.9.3/try.rb' \
        exec --path ~/development/tries $argv 2>/dev/tty)
    if test $status -eq 0
        eval $out
    else
        echo $out
    end
end
