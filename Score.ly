\version "2.18.2"
\include "Staffs.ly"
\header {
  instrument = "Partitur"
}
\score {
  <<
    \new Staff \with
    { instrumentName = #"Thomas in C " shortInstrumentName = #"Thomas " }
    \thomas
    \new Staff \with
    { instrumentName = #"Bertl in C " shortInstrumentName = #"Bertl " }
    \bertl
    \new Staff \with
    { instrumentName = #"Posaune 1 in C " shortInstrumentName = #"Pos. 1 " }
    \trbOne
    \new Staff \with
    { instrumentName = #"Posaune 2 in C " shortInstrumentName = #"Pos. 2 " }
    \trbTwo
    \new Staff \with
    { instrumentName = #"Willi in C " shortInstrumentName = #"Willi " }
    \willi
  >>
}
