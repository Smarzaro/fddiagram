# fddiagram

[![build](https://github.com/Smarzaro/fddiagram/actions/workflows/build.yml/badge.svg)](https://github.com/Smarzaro/fddiagram/actions/workflows/build.yml)
[![License: LPPL 1.3c](https://img.shields.io/badge/license-LPPL%201.3c-blue.svg)](LICENSE)

**Summary (English):** fddiagram is a LaTeX (expl3/TikZ) package that
automatically typesets Functional Dependency diagrams from a
plain-text list of dependencies (`left-hand side -> right-hand side`).
The attribute universe, its ordering, and each diagram's layout are
derived automatically. License: LPPL 1.3c or later. Author: Rodrigo
Smarzaro. Full documentation (Portuguese): see
`fddiagram.pdf`.

---

Pacote LaTeX (expl3/TikZ) que gera automaticamente diagramas de
Dependências Funcionais a partir de uma lista textual, no formato
`lado_esquerdo -> lado_direito`.

```latex
\usepackage{fddiagram}

\begin{fddiagram}
  A,B -> C ;
  B,D -> E,F ;
  A,D -> G,H ;
  A -> I ;
  H -> J
\end{fddiagram}
```

> **Status**: reenviado à CTAN após ajustes solicitados na primeira revisão.

Documentação completa: [`fddiagram.pdf`](fddiagram.pdf) (fonte:
[`fddiagram.tex`](fddiagram.tex)). Exemplos de uso:
[`examples/fddiagram-exemplos.tex`](examples/fddiagram-exemplos.tex)
([PDF compilado](examples/fddiagram-exemplos.pdf)).

## Autor

Rodrigo Smarzaro ([Universidade Federal de Viçosa](https://www.ufv.br))

Repositório e contato: <https://github.com/Smarzaro/fddiagram>

## Licença

Distribuído sob a [LaTeX Project Public License (LPPL), versão 1.3c ou
posterior](https://www.latex-project.org/lppl.txt); veja o arquivo
[`LICENSE`](LICENSE).
