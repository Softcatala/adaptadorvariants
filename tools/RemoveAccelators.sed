#!/bin/sed -f

# Script per a suprimir el caràcter d'accelerador de teclat (&, _ i ~)
# Això és útil per a comparar adaptacions amb o sense accelerador i poder millorar l'script src2valencian.sed

# No tradueixis linies que no pertanyin a un msgstr (què passa amb les línies partides?)
/^msgstr/,/^#/ {

# Elimina l'accelador &, llevat si apareix duplicat. No reconeix llenguatge html, p. e. &amp;
#s/\([^&]\)&\([[:alnum:]]\)/\1\2/g

# Elimina l'accelerador _, llevat si apareix duplicat.
s/\([^_]\)_\([[:alnum:]]\)/\1\2/g

# Elimina l'accelerador ~, llevat si apareix duplicat o precedit de #.
# Remove ~ accelerator key
s/\([^#~]\)~\([[:alnum:]]\)/\1\2/g

}
