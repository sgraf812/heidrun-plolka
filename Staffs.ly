\version "2.18.2"

\header {
  title = "Heidrun-Polka"
  composer = "Franz Watz"
  arranger = "Mnozil Brass"
  tagline = "" % override "lilypond ..." footer
}

fine = \markup { \text \small Fine }

thomas = \relative {
  \clef treble
  \key es \major
  \time 2/4
  {
    \appoggiatura { bes'16 \f a as } g8-^ r8 r4 | r2 | as8. \p \< g16 f8 es8 | d8 \noBeam bes'16 \f bes16 bes4 |
    \repeat volta 2 {
      es,4. \mf ( g8 | as8 g8 c8 d8 | es4. d8 | es4 ) d16 ( c bes as ) | g4. ( es8 as g fis g | f2~ ) | f4. r8 |
      bes4. ( d8 | c b c a | bes4. g8 | as4 ) g16 ( as bes as ) | g4. ( e8 | f as g f | es2~ ) | es4. r8 |
      es4. ( g8 | as8 g8 c8 d8 | es4. d8 | es4 d16 c bes as | g4. es8 as g fis g | as2~ \< ) | as4. r8 |
      as4. \f ( c8 ) | c8 b16 ( c ) d ( c bes as ) | g4. fis16 ( as ) | g4. r8 | as4. ( g8 | as8 ) bes16 ( c ) bes ( as g f ) | g2~ | 
    }
    \alternative {
      { g8 r r4 | }
      { g8 r g-> r | }
    }
    \bar "||"
    \break

    \mark "Trio"
    r2 | r4 es'16 ( \mf \< d ) des des | c8 \! r r4 | r8 es8 ( d des )
    \key as \major
    \mark \markup { \musicglyph #"scripts.segno" }
    \set Score.repeatCommands = #'(start-repeat)
      c2~ \p | c4 c | des2~ | des | es2~ | es4 bes8. ( b16 ) | c2~ | c8 r r es,16 ( \mf des ) |
      c4. ( b8 | c des es f | es-! ) r des8. c16 | des4. c16 ( des ) | g4. as16 ( g | f8-! ) es ( d f | es2~ ) | es8 r r4 |
      c'2~ \p | c4 c | des2~ | des8 c ( des d ) | es2~ | es4 bes8. ( b16 ) | c2~ | c8 r r es,16 ( des ) |
      c4. \p \< ( b8 | c des es e | f4. e8 | f \f as bes8-! [ ) r16 as ] | g4 des8 f | es4 des8 es | c2~ |
    \set Score.repeatCommands = #'((volta "1."))
      c8 \noBeam es' ( d des ) |
    \set Score.repeatCommands = #'((volta #f) end-repeat (volta "2."))
      c8 r r4 \bar "||"
    \set Score.repeatCommands = #(list (list 'volta fine) '(volta #f))
      c8 r \appoggiatura { es16 d des } c8 r
    \set Score.repeatCommands = #'((volta #f))
    \break
    
    \repeat volta 2 {
      r8 f, \f r f16 f | f8 r r4 | r8 f16 f f8 r | r2 | r8 des8 \f r des16 des | des8 r r4 | r8 des16 des des8 des8 | des8 \noBeam des16 \p ( c des8 ) d |
      es4 es | r8 es ( \< f g ) | as4 \mf as | r8 as16 ( \< g as8 ) as ( | g8 ) \f des16 ( c des8 ) f8 ( | es4 ) des8. es16 ( | c2~ ) |
    }
    \alternative {
      { c8 r r4 | }
      { c8 \noBeam es' \> ( d des ) \! | }
    }
    \bar "|."
    \mark \markup { \musicglyph #"scripts.segno" }
  }
}

bertl = \relative {
  \compressFullBarRests
  \clef treble
  \key es \major
  \time 2/4
  {
    \appoggiatura { bes'16 \f c d } es8-^ r8 r4 | r2 | c8. \p \< bes16 as8 g8 | f8 \! r8 r4 |
    \repeat volta 2 {
      R2*16 |
      g4. \mf ( bes8 | c8 bes8 es8 f8 | g4. fis8 | g4 ) f16 ( es d c ) | bes4. ( g8 c bes a bes | c2~ \< ) | c4. r8 |
      c4. \f ( es8 ) | es8 d16 ( es ) f ( es d c ) | bes4. a16 ( c ) | bes4. r8 | f'4. ( e8 | f8 ) g16 ( as ) g ( f es d ) | es2~ |
    }
    \alternative {
      { es8 r r4 | }
      { es8 r es-> r | }
    }
    \bar "||"
    \break

    \mark "Trio"
    r2 | r4 es16 ( \mf \< e ) f g | as8 \! r r4 | r2
    \key as \major
    \mark \markup { \musicglyph #"scripts.segno" }
    \set Score.repeatCommands = #'(start-repeat)
      R2*16 |
      as2~ \p | as4 es | f2~ | f4. fis8 ( | g2~ | g4 ) des8. ( d16 | es2~ ) | es8 r r c16 ( bes ) |
      as4. \p \< ( g8 | as bes b c | des4. c8 | des \f f g8-! [ ) r16 f ] | es4 bes8 des | c4 g8 bes | as2~ | 
    \set Score.repeatCommands = #'((volta "1. 2."))
      as8 r r4 \bar "||"
    \set Score.repeatCommands = #(list (list 'volta fine))
      as8 r \appoggiatura { es'16 f g } as8 r |
    \set Score.repeatCommands = #'((volta #f))
    \break

    \repeat volta 2 {
      r8 as, \f r as16 as | as8 r r4 | r8 as16 as as8 r | r2 | r8 bes \f r bes16 bes | bes8 r r4 | r8 bes16 bes bes8 bes | bes \noBeam f16 \p ( e f8 ) fis |
      g4 g | r8 g ( \< as bes ) | c4 \mf c4 | r8 c16 ( \< b c8 ) f ( | es8 \f ) bes16 ( a bes8 ) des8 ( | c4 ) g8. bes16 ( | as2~ ) | 
    }
    \alternative {
      { as8 r r4 | }
      { as8 r r4 | }
    }
    \bar "|."
  }
}

leonhard = \relative c' {
  \clef bass
  \key es \major
  \time 2/4
  {
    \appoggiatura { bes16 \f c d } es8-^ r8 r4 | r2 | es8. \p \< d16 c8 b8 | bes8 \! r8 r4 |
    \repeat volta 2 {
      g4. \mf ( bes8 | c8 bes8 es8 f8 | g4. fis8 | g4 ) f16 ( es d c ) | bes4. ( g8 c bes a bes | as2~ \< ) | as4. r8 |
      d4. ( f8 | e f es cis | d4. b8 | c4 ) bes16 ( c d c ) | bes4. ( g8 | as c bes as | g2~ ) | g4. r8 |
      bes4. \p ( bes8 | es4 es | <\parenthesize bes' bes,>2 | <\parenthesize bes bes,>4 ) bes,8 f' | es4. ( es8 | es es es es | es2~ \< ) | es4. r8 |
      es4. \f ( as8 | as4 ) f8 ( d ) | es ( g, ) c4 | bes4. r8 | d4. ( cis8 | d8 ) r8 r16 es ( d c ) | bes8. g16 g8 c |
    }
    \alternative {
      { bes8 r r4 | }
      { bes8 r bes-> r | }
    }
    \bar "||"
    \break

    \mark "Trio"
    g8. \mf \< ( g16 as8. as16 | g8-. ) \! r8 <\parenthesize bes' bes,>4-- | r8 es,-. r es-. | r es \> ( f g \! ) |
    \key as \major
    \mark \markup { \musicglyph #"scripts.segno" }
    \set Score.repeatCommands = #'(start-repeat)
      as2~ \p | as4 es8. ( e16 ) | f2~ | f2 | g2~ | g4 des8. ( d16 ) | es2~ | es8 r r c16 ( \mf bes ) |
      as4. ( g8 | as bes c des | c-! ) r bes8. a16 | bes4. a16 ( bes ) | es4. f16 ( es | des8-! ) c ( b des | c2~ ) | c8 r r4 | \break
      es2~ \p | es4 as | as2~ | as8 g ( as a ) | bes2~ | bes4 g | as2~ | as8 r r as,16 ( f ) |
      es4. \p \< ( es8 | es es es as | as4. g8 | as8 ) as-. des4 | bes8-. \f g4 bes8 ( | bes ) g4 f8 | es2~ |
    \set Score.repeatCommands = #'((volta "1."))
      es8 \noBeam es' ( f g ) |
    \set Score.repeatCommands = #'((volta #f) end-repeat (volta "2."))
      es,8 \breathe bes' c16 ( bes ) as g \bar "||"
    \set Score.repeatCommands = #(list (list 'volta fine) '(volta #f))
      es8 r es8 r
    \set Score.repeatCommands = #'((volta #f))
    \break
    
    \repeat volta 2 {
      f4-> \f f-> | r8 f16 ( e ) f8 as | c4 c8 des ( | c-> ) g ( as-> ) f | bes,4-> bes4-> | r8 bes16 ( a ) bes8 des | f2~ | as2 \p \glissando |
      bes8 bes r bes | r bes \< r bes | r as \mf r as | r as \< r as | r g \f r g | r g r g | r as16 as as8 as |
    }
    \alternative {
      { as8 \breathe bes \f c16 ( bes ) as g | }
      { as8 \noBeam es' \> ( f g ) \! | }
    }
    \bar "|."
    \mark \markup { \musicglyph #"scripts.segno" }
  }
}

gerhard = \relative c {
  \clef bass
  \key aes \major
  \time 3/4 \partial 2
  { 
    r4 r | \mark \markup { \musicglyph #"scripts.segno" } r4\mf es-. es-. | r es2 | r4 f-. f-. | es( f es) | r4 es-. es-. | 
    r4 es-. es-. | r es( es) | es-. r es-. | r es-. r | r g( es) | r f( des) | r es-. es-. | es-- f-- g-- | r4 f-. es-. | 
    r4 es-. es-. | r es2 | r4 f-. f-. | es( f es) | r4 es-. es-. | 
    r4 es-. es-. | r es( es) | es-. r es-. | r es-. r | r g( es) | bes'8-- as-- g4-. f-. | es8-- f-- es4-. es8-- f-- | es4-. r r |
    \mark \markup { \musicglyph #"scripts.coda" } 
    \bar "||" \key es \major \break
    as4-. r r | r r f8-- bes-- | g4-. es8( f) g-. bes-. | es,4( g bes-.) | r d8( c) b-. as-. | f4-- f4-. f4-. | c'2 f,4( | f4) g2 | 
    r4 f-. f-. | r f2 | r4 bes8( a) g-. f-. | d4-- bes-- bes'-- | as-. r r | 
    f4-- c'-- as-- | g4-. r r | R2.^\markup {\musicglyph #"scripts.segno" _ \musicglyph #"scripts.coda" } | 
    \break
  
    % Trio
    \mark \markup { \musicglyph #"scripts.coda" }
    \key des \major
    \repeat volta 2 { 
      r4\mp f-. f-. | r f-. f-. | r4 ges-. ges-. | ges8 ges8 ges4-. ges4-. | 
      r4\< f-- f-. | r ges-- ges-.\! | \break
    }
    \alternative {
      { as,4-- as'-- f8-- des-- | es8 es es4-. f-- | r4 ges-. ges-. | r ges-- ges-. | r4 f( f) | f-. f8 des es f | 
        r4 bes8( as) g-. f-. | es4-- f-- g-- | as-. r es-. | r4\> es8-. f-. ges-. as-. \! | \break }
      { r4 f-- f8 f | es8 es es4-. f-- |r4 ges-. ges-. | ges-- as-- ges-- | r f-. f-- | f4-. r f | }
    }
    f2 es4 | des2 des4 | des2\> es4\! | des-.\p r r | des-.\pp r r | des2.\pp
    \bar "|."
  }
}

willi = \relative c, {
  \clef bass
  \key es \major
  \time 2/4
  {
    es8-> \f bes'16 as g as bes c | bes8 g8 es4 | f8. \p \< g16 as8 a8 | bes8 \! r8 r4 |
    \repeat volta 2 {
      es,8 \mf r bes r | es r bes r | es r bes r | es r16 c' bes8 g | es r bes r | es8 r g es | f r bes r16 d | f8 es d c |
      bes r f r | d r f r | bes,4 d8 f | bes r16 d f8 d | bes r f r | d r bes r | es8 r c4 ( | bes g8 f |
      es2~ ) | es8 g bes d | es r bes'4 ( | c8 ) bes ( g f | es ) r bes r | es r f g | as4. \< c8 ( | es ) f ( es ) c |
      as8 \f r es r | as4 ( f8 ) d | es r bes'4-- | es8-_ r16 c bes8 g | f r bes r | f \noBeam bes [ c d ] | es8-_ r16 c bes8 g |
    }
    \alternative {
      { es8 c' bes16 ( as ) g f | }
      { es8 r es-> r | }
    }
    \bar "||"
    \break

    \mark "Trio"
    es8. \mf \< ( e16 f8. e16 | es8-. ) \! e8-- f-- g-- | as-. r f4 | es8 \> r c ( bes \! | 
    \key as \major
    \mark \markup { \musicglyph #"scripts.segno" }
    \set Score.repeatCommands = #'(start-repeat)
      as4.^\markup { \italic { ad lib. } } \p ) \( c8 | es4 c8 es | des4. \parenthesize \breathe f8 | as8-. bes ( as f ) | es8 \) r bes r | es r g r | as r16 bes as8 f | es des-- c-- bes-- |
      as8 \mf r es' r | as r es as | bes r es, r | es g16 g bes8 g | es r bes r | es r g r | as4 c | es8-. f-- es-- c-- |
      as \p r es r | as r es ( c | des4. ) f8 ( | as8-. ) bes ( as ) f | es r bes r | es r g r | as4 c | es8-. e ( f ) es |
      as, \mf \< r es r | as r es-- c-- | des r f4 | as8. bes16 as8 f | es \f r bes r | es r f g | as8. f'16 es8 c |
    \set Score.repeatCommands = #'((volta "1."))
      as8 r r4 |
    \set Score.repeatCommands = #'((volta #f) end-repeat (volta "2."))
      as8 \breathe bes c16 ( bes ) as g \bar "||"
    \set Score.repeatCommands = #(list (list 'volta fine) '(volta #f))
      as8 r as,8 r
    \set Score.repeatCommands = #'((volta #f))
    \break
    
    \repeat volta 2 {
      f'4-> \f f-> | r8 f16 ( e ) f8 as | c4 c8 des ( | c-> ) g ( as-> ) f | bes,4-> bes4-> | r8 bes16 ( a ) bes8 des | f2~ | f8 r r4 |
      es8 \p r bes r | es4 \< f8 g | as \mf r es r | as8. f'16 \< es8 c | bes \f r es, r | bes' r es, r |  as8. f'16 es8 c |
    }
    \alternative {
      { as8 \breathe bes \f c16 ( bes ) as g | }
      { as8 r r4 | }
    }
    \bar "|."
  }
}
