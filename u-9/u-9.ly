\version "2.12.1"

replaceCN =  #(define-music-function (parser location new) (markup?) #{\once \override ChordNames.ChordName #'stencil =    #(lambda (grob) (grob-interpret-markup grob $new)) #})
DSevenSlashFis = \markup {D \super "7"/Fis}
CTwo = \markup {C \super "2"}

\score {
	<<
	\chords {
		\germanChords
		\replaceCN \DSevenSlashFis d1:m7
		\replaceCN \CTwo c:2
	}
	\relative c'
	{
		a'1
		^\markup \fret-diagram #"f:2;6-o;5-o;4-4-2;3-5-3;2-3-1;1-5-4;"
		c
		^\markup \fret-diagram #"f:2;6-o;5-3-3;4-2-2;3-o;2-3-4;1-o;"
	}
	>>
}
