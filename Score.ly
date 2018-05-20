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
    { instrumentName = #"Leonhard in C " shortInstrumentName = #"Leonhard " }
    \leonhard
    \new Staff \with
    { instrumentName = #"Gerhard in C " shortInstrumentName = #"Gerhard " }
    \gerhard
    \new Staff \with
    { instrumentName = #"Wastl in C " shortInstrumentName = #"Wastl " }
    \wastl
    \new Staff \with
    { instrumentName = #"Willi in C " shortInstrumentName = #"Willi " }
    \willi
  >>
}
