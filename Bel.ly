\version "2.26.0"

\header {
  title = "Untitled"
  composer = "Composer"
}

\score {
  \relative c' {
    c4
  }

  \layout {}
  \midi {}
}
\version "2.24.0"

\header {
  title = "Кромка колокола"
  tagline = ##f
}

global = {
  \key e \minor
  \time 3,2 5/8
}

top = \fixed c''' {
  \global
  \clef treble
  \tempo "Lento misterioso" 8 = 60
  \ottava #2
  % I (т. 1)
  \mark \markup \box "I"
  r4 <g c'>8\ppp~ q4 |
  r4. <e g c'>4 |
  r4 <fis c'>8~ q4 |
  r4. r8 c'8 |
  r4. b4 |
  R8*5 |
  r8 <g c'>4~ q4 |
  r4. r8 <fis c'>8 |
  % II (т. 9)
  \mark \markup \box "II"
  r4. <ais b>8-.\pp q-. |
  r4. <ais b>8-. q-. |
  dis'4. <ais b>8-. q-. |
  r4. <ais b>8-. q-. |
  r8 dis'4 <ais b>8-. q-. |
  r4. <ais' b'>8-. q-. |
  g'4. r8 <ais b>8-. |
  R8*5 |
  % III (т. 17)
  \mark \markup \box "III"
  r4. <gis cis'>8\pp( <ais dis'>8 |
  <cis' fis'>4. <ais dis'>8 <gis cis'>8) |
  r4. <dis gis>4( |
  <cis fis>4. <dis gis>4) |
  r4 <gis cis'>8( <ais dis'>8 <cis' fis'>8 |
  <dis' gis'>4.~ q4) |
  r4 <cis' fis'>8~( q8 <ais dis'>8 |
  <fis b>4. <g c'>4) |
  % IV (т. 25)
  \mark \markup \box "IV"
  dis'4\pp\< <g c'>8 <ais b>8-. q-. |
  r8 <fis c'>4 <ais b>8-. q-. |
  g'4 b8 <ais b>8-. q-. |
  r4 <e g c'>8\mp~ q4 |
  r8 <fis c'>4\>~ q8 ais'8 |
  r4. b4 |
  r4. <ais b>8-.\ppp q-. |
  R8*5 |
  % Coda (т. 33)
  \mark \markup \box "Coda"
  r4 <g c'>8\ppp~ q4 |
  r4. <e g c'>4 |
  r4 <fis c'>8~ q4 |
  r4. b4 |
  r4 b8~( b8 c'8) |
  r8 c'4\pppp~ c'4\fermata |
  \bar "|."
}

creep = \fixed c {
  \global
  \clef bass
  % т. 1
  R8*5 | R8*5 | R8*5 | R8*5 | R8*5 |
  r4 c'8~( c'8 b8) |
  R8*5 |
  ais4.~ ais4 |
  % т. 9
  r8 c'4( b4) |
  ais4.( b4) |
  r8 c'4( cis'4) |
  d'4.( cis'4) |
  r8 c'4( b4) |
  ais4.( a4) |
  r8 gis4( a4) |
  ais4.( b4) |
  % т. 17
  r8 ais4~ ais4 |
  b4.~ b4 |
  r8 c'4~ c'4 |
  cis'4.~ cis'4 |
  r8 d'4~ d'4 |
  dis'4.~ dis'4 |
  \clef treble
  e'4.~ e'4 |
  f'4.~ f'4 |
  % т. 25
  r8 fis'4( g'4) |
  r8 gis'4( a'4) |
  r8 ais'4( b'4) |
  r8 c''4^\markup \italic "m.d."~ c''4 |
  b'4.( ais'4) |
  r8 a'4( gis'4) |
  r8 g'4( fis'4) |
  f'4.( e'4) |
  % т. 33
  \clef bass
  r8 dis'4~ dis'4 |
  d'4.( cis'4) |
  r8 c'4~ c'4 |
  R8*5 | R8*5 | R8*5 |
  \bar "|."
}

bell = \fixed c, {
  \global
  \clef bass
  % т. 1
  b,4._\markup \italic "una corda, Ped. sempre"~ b,4 |
  R8*5 |
  ais,4.~ ais,4 |
  R8*5 |
  dis4.~ dis4 |
  R8*5 |
  b,4.~ b,4 |
  r4. ais,4 |
  % т. 9
  dis4.~ dis4 |
  R8*5 |
  b,4.~ b,4 |
  R8*5 |
  ais,4.~ ais,4 |
  R8*5 |
  dis4.~ dis4 |
  R8*5 |
  % т. 17
  b,4.~ b,4 |
  R8*5 |
  ais,4.~ ais,4 |
  R8*5 |
  dis4.~ dis4 |
  R8*5 | R8*5 | R8*5 |
  % т. 25
  b,4.~ b,4 |
  ais,4.~ ais,4 |
  dis4.~ dis4 |
  b,4. ais,4 |
  r4 e8\ppp~ e4 |
  dis4.~ dis4 |
  ais,4.~ ais,4 |
  R8*5 |
  % т. 33
  b,4.~ b,4 |
  R8*5 |
  ais,4.~ ais,4 |
  dis4.~ dis4 |
  b,4.~ b,4~ |
  b,4.~ b,4\fermata |
  \bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff \top
    \new Staff \creep
    \new Staff \bell
  >>
  \layout { }
  \midi { }
}
