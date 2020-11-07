
[1mFrom:[0m /home/kijima/Project/gemreading/vendor/bundle/ruby/2.5.0/gems/activesupport-6.0.3.4/lib/active_support/core_ext/string/filters.rb:114 String#truncate_bytes:

     [1;34m97[0m: [32mdef[0m [1;34mtruncate_bytes[0m(truncate_at, [35momission[0m: [31m[1;31m"[0m[31m…[1;31m"[0m[31m[0m)
     [1;34m98[0m:   binding.pry
     [1;34m99[0m:     omission ||= [31m[1;31m"[0m[31m[1;31m"[0m[31m[0m
    [1;34m100[0m: 
    [1;34m101[0m:     [32mcase[0m
    [1;34m102[0m:     [32mwhen[0m bytesize <= truncate_at [1;34m# 自動でselfを対象にしているのはどうやってる？↑にもあったな。[0m
    [1;34m103[0m:       dup
    [1;34m104[0m:     [32mwhen[0m omission.bytesize > truncate_at
    [1;34m105[0m:       raise [1;34;4mArgumentError[0m, [31m[1;31m"[0m[31mOmission #{omission.inspect}[0m[31m is #{omission.bytesize}[0m[31m, larger than the truncation length of #{truncate_at}[0m[31m bytes[1;31m"[0m[31m[0m
    [1;34m106[0m:     [32mwhen[0m omission.bytesize == truncate_at
    [1;34m107[0m:       omission.dup
    [1;34m108[0m:     [32melse[0m
    [1;34m109[0m:       [1;36mself[0m.class.new.tap [32mdo[0m |cut|
    [1;34m110[0m:         cut_at = truncate_at - omission.bytesize [1;34m# 省略文字を考慮に入れた、実際に入るバイト数。[0m
    [1;34m111[0m: 
    [1;34m112[0m:         scan([35m[1;35m/[0m[35m[1;35m\X[0m[35m[1;35m/[0m[35m[0m) [32mdo[0m |grapheme| [1;34m# 1文字ずつ入れていってバイト数をチェック[0m
    [1;34m113[0m:           [32mif[0m cut.bytesize + grapheme.bytesize <= cut_at
 => [1;34m114[0m:             cut << grapheme
    [1;34m115[0m:           [32melse[0m
    [1;34m116[0m:             [32mbreak[0m
    [1;34m117[0m:           [32mend[0m
    [1;34m118[0m:         [32mend[0m
    [1;34m119[0m: 
    [1;34m120[0m:         cut << omission
    [1;34m121[0m:       [32mend[0m
    [1;34m122[0m:     [32mend[0m
    [1;34m123[0m:   [32mend[0m

