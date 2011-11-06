function DetectNode()
  if !did_filetype()
    echo getline(1)
    if getline(1) =~ '^#.*\<node\>'
      setfiletype javascript
    endif
  endif
endfunction

:au BufNewFile,BufRead * call DetectNode()

