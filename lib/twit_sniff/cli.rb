module TwitSniff
  class CLI
    def echo tweets
      problem_rgx = /(unwatchable|slow|poor|(problem|error|issue)(s)?|fail(ed|ing|s)?|buffer(ing|ed)?|fuck(e(d|r)|ing|s)?)/i

      tweets.each { |t|
        text = t.text.gsub(/\n/, ' ')
        highlight text, problem_rgx

        user = sprintf "%-17s", t.from_user
        time = sprintf "%-12s", ReadableTime.relative(t.created_at)
        rtweet = sprintf "%-3s", t.retweet_count

        puts "#{yellow user} #{white time} #{green rtweet} #{cyan text}\n"
       }
    end

    private

    def highlight str, rgx
      str.gsub!(rgx) {|s| "\033[33m#{s}\033[36m" }
    end

    #red 31
    #blue 34
    #magenta 35

    def green txt
      "\033[32m#{txt}\033[0m"
    end

    def yellow txt
      "\033[33m#{txt}\033[0m"
    end

    def cyan txt
      "\033[36m#{txt}\033[0m"
    end

    def white txt
      "\033[37m#{txt}\033[0m"
    end
  end
end
