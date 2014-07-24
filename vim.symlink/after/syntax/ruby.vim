unlet! b:current_syntax
syn include @rubyC syntax/c.vim

syn region rubyCString start=+\%(\%(class\s*\|\%([]})"'.]\|::\)\)\_s*\|\w\)\@<!<<\z(END_C\)\ze+hs=s+2    matchgroup=rubyStringDelimiter end=+^\z1$+ contains=rubyHeredocStart,@rubyStringSpecial,@rubyC fold keepend
syn region rubyCString start=+\%(\%(class\s*\|\%([]})"'.]\|::\)\)\_s*\|\w\)\@<!<<"\z(END_C\)"\ze+hs=s+2  matchgroup=rubyStringDelimiter end=+^\z1$+ contains=rubyHeredocStart,@rubyStringSpecial,@rubyC fold keepend
syn region rubyCString start=+\%(\%(class\s*\|\%([]})"'.]\|::\)\)\_s*\|\w\)\@<!<<'\z(END_C\)'\ze+hs=s+2  matchgroup=rubyStringDelimiter end=+^\z1$+ contains=rubyHeredocStart,@rubyC		      fold keepend

syn region rubyCString start=+\%(\%(class\s*\|\%([]}).]\|::\)\)\_s*\|\w\)\@<!<<-\z(END_C\)\ze+hs=s+3    matchgroup=rubyStringDelimiter end=+^\s*\zs\z1$+ contains=rubyHeredocStart,@rubyStringSpecial,@rubyC fold keepend
syn region rubyCString start=+\%(\%(class\s*\|\%([]}).]\|::\)\)\_s*\|\w\)\@<!<<-"\z(END_C\)"\ze+hs=s+3  matchgroup=rubyStringDelimiter end=+^\s*\zs\z1$+ contains=rubyHeredocStart,@rubyStringSpecial,@rubyC fold keepend
syn region rubyCString start=+\%(\%(class\s*\|\%([]}).]\|::\)\)\_s*\|\w\)\@<!<<-'\z(END_C\)'\ze+hs=s+3  matchgroup=rubyStringDelimiter end=+^\s*\zs\z1$+ contains=rubyHeredocStart,@rubyC		     fold keepend

