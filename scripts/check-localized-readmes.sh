#!/usr/bin/env sh
set -eu
locales='de fr pt it es'
for locale in $locales; do test -f "README.$locale.md"; done
for readme in README.md README.de.md README.fr.md README.pt.md README.it.md README.es.md; do for locale in $locales; do [ "$readme" = "README.$locale.md" ] || grep -Fq "README.$locale.md" "$readme"; done; done
for locale in $locales; do prefix=$locale; [ "$locale" = pt ] && prefix=po; for number in 1 2 3 4 5; do image="docs/screenshots/$locale/${prefix}_${number}.png"; test -f "$image"; grep -Fq "$image" "README.$locale.md"; done; done
for locale in en $locales; do prefix=$locale; [ "$locale" = pt ] && prefix=ptPT; image="docs/feature/${prefix}_lotw-manifest2-1024.png"; test -f "$image"; readme=README.md; [ "$locale" = en ] || readme="README.$locale.md"; grep -Fq "$image" "$readme"; done
printf 'Validated localized README links and screenshot galleries.\n'
