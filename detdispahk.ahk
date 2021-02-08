#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetNumLockState, AlwaysOn


Numpad1::Send,
(
\begin{{}equation{}} \label{{}{}}

\end{{}equation{}}{Up}
)

Numpad2::Send,
(
\begin{{}math{}}

\end{{}math{}}{Up}
)



Numpad6::Send,
(
\frac{{}{}}{{}{}}{Left}{Left}{Left}
)


Numpad5::Send,
(
\si[per-mode=symbol]{{}{}}{Left}
)

Numpad7::Send,
(
\
)


Numpad4::Send,
(
{{}{}}{Left}
)


:r0O*:eq#::
(
\begin{{}equation{}} \label{{}{}}

\end{{}equation{}}{Up}
)

:r0O*:math#::
(
\begin{{}math{}}

\end{{}math{}}{Up}
)

:r0O*:pic#::
(
\begin{{}figure{}}{[}h{]}
\centering
\includegraphics{[}scale=1{]}{{}filename.png{}}
\caption{{}caption{}}
\label{{}{}}
\end{{}figure{}}
)


:r0O*:sec#::
(
\section{{}\textrm{{}{}}{}}{left}{left}
)

:r0O*:subsec#::
(
\subsection{{}\textrm{{}{}}{}}{left}{left}
)

:r0O*:qa#::
(
Q: \\
A:{up}
)

:r0O*:url#::
(
\url{{}{}}{left}
)

;O: Omit the ending character of auto-replace hotstrings when the replacement is produced. This is useful when you want a hotstring to be kept unambiguous by still requiring an ending character, but don't actually want the ending character to be shown on the screen. For example, if :o:ar::aristocrat is a hotstring, typing "ar" followed by the spacebar will produce "aristocrat" with no trailing space, which allows you to make the word plural or possessive without having to press Backspace. Use O0 (the letter O followed by a zero) to turn this option back off
;R: Send the replacement text raw; that is, without translating {Enter} to Enter, ^c to Control+C, etc. This option is put into effect automatically for hotstrings that have a continuation section. Use R0 to turn this option back off.
;* (asterisk): An ending character (e.g. Space, ., or Enter) is not required to trigger the hotstring.
;? (question mark): The hotstring will be triggered even when it is inside another word; that is, when the character typed immediately before it is alphanumeric. For example, if :?:al::airline is a hotstring, typing "practical " would produce "practicairline ". Use ?0 to turn this option back off.

;ClipSaved := ClipboardAll   ; Save the entire clipboard to a variable of your choice.
; ... here make temporary use of the clipboard, such as for pasting Unicode text via Transform Unicode ...
;Clipboard := ClipSaved   ; Restore the original clipboard. Note the use of Clipboard (not ClipboardAll).
;ClipSaved := ""   ; Free the memory in case the clipboard was very large.
