\version "2.20.0"
\include "../definitions.ly"

title = "Template"
author = "NoName"
year = "2021"

% Remove this when you have enough systems.
\paper {
  ragged-last-bottom = ##t
}

% You can pass a list to control how many measures to have per system:
% measures-per-system = #'(3 2 3 2 2 3)
measures-per-system = #'(4)

global = {
  \key c \major
  \time 4/4
  \set Score.currentBarNumber = #1
  \tempo "Allegretto" 4 = 100
}

right = \relative c' {
  \clef "treble"

  c4 d e f
}

left = \relative c, {
  \clef "bass"

  c'4 d e f
}

dynamics = {
}

pedal = {
  \set Dynamics.pedalSustainStyle = #'mixed
}

pedal-midi = {
}

piano-music = \create-piano-staff \global \left \right \dynamics \pedal
music-midi = \create-midi \global \left \right \dynamics \pedal-midi

\create-publish \piano-music \music-midi \measures-per-system
\create-debug \piano-music \measures-per-system
