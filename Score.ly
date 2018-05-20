\version "2.18.2"
\include "Staffs.ly"
\header {
  instrument = "Partitur"
}
\score {
  <<
    \new Staff \with
    { instrumentName = #"Thomas " shortInstrumentName = #"Tho" }
    \thomas
    \new Staff \with
    { instrumentName = #"Bertl" shortInstrumentName = #"Ber" }
    \bertl
    \new Staff \with
    { instrumentName = #"Leonhard" shortInstrumentName = #"Leo" }
    \leonhard
    \new Staff \with
    { instrumentName = #"Gerhard" shortInstrumentName = #"Ger" }
    \gerhard
    \new Staff \with
    { instrumentName = #"Wastl" shortInstrumentName = #"Was" }
    \wastl
    \new Staff \with
    { instrumentName = #"Willi" shortInstrumentName = #"Wil" }
    \willi
  >>
}
