#!/bin/sh
# Monta fddiagram.zip no formato pedido pelo CTAN para o envio do pacote:
# uma unica pasta de topo com o nome do pacote, contendo so os fontes, a
# documentacao ja compilada, o README e a licenca (sem arquivos auxiliares,
# pastas ocultas ou arquivos do GitHub), com permissoes 644/755.
#
# Uso (na raiz do repositorio, depois de compilar fddiagram.pdf e
# examples/fddiagram-exemplos.pdf):   sh scripts/ctan-zip.sh
# Resultado: fddiagram.zip na raiz (fora do controle de versao).
set -eu
raiz="$(cd "$(dirname "$0")/.." && pwd)"
cd "$raiz"
pacote=fddiagram
arquivos="README.md LICENSE fddiagram.sty fddiagram.tex fddiagram.pdf
          examples/fddiagram-exemplos.tex examples/fddiagram-exemplos.pdf"

for f in $arquivos; do
  if [ ! -f "$f" ]; then echo "ERRO: falta $f (compile a documentacao antes)" >&2; exit 1; fi
done

# a versao do .sty precisa aparecer no historico do manual
versao=$(sed -n 's/.*\\ProvidesExplPackage{fddiagram}{[^}]*}{\([^}]*\)}.*/\1/p' fddiagram.sty)
if ! grep -q "item\[v$versao\]" fddiagram.tex; then
  echo "ERRO: a versao $versao do .sty nao esta no historico de fddiagram.tex" >&2; exit 1
fi

tmp="$(mktemp -d)"
trap 'rm -rf "${tmp:?}"' EXIT
mkdir -p "$tmp/$pacote/examples"
for f in $arquivos; do cp "$f" "$tmp/$pacote/$f"; done
find "$tmp/$pacote" -type d -exec chmod 755 {} +
find "$tmp/$pacote" -type f -exec chmod 644 {} +

rm -f "$pacote.zip"
( cd "$tmp" && zip -q -r -X "$raiz/$pacote.zip" "$pacote" )
echo "fddiagram $versao -> $pacote.zip"
unzip -l "$pacote.zip"
