\version "2.20.0"
\include "../definitions.ly"

title = "Template"

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

  c4 d e f                        | % m. 01
}

left = \relative c, {
  \clef "bass"

  c'4 d e f                       | % m. 01
}

dynamics = {
}

pedal = {
  \set Dynamics.pedalSustainStyle = #'mixed
}

pedalMidi = {
}

% Remove this when you have enough systems.
\paper {
  ragged-last-bottom = ##t
}

piano-music = \create-piano-staff
music-midi = \create-midi

\create-publish \piano-music \music-midi \measures-per-system
\create-debug \piano-music \measures-per-system