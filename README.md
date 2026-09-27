# fddiagram

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

> **Status**: em preparação para submissão à CTAN. Documentação
> completa e instruções de instalação ainda serão adicionadas aqui.

Exemplos de uso: [`examples/fddiagram-exemplos.tex`](examples/fddiagram-exemplos.tex).

## Autor

Rodrigo Smarzaro ([Universidade Federal de Viçosa](https://www.ufv.br))

Repositório e contato: <https://github.com/Smarzaro/fddiagram>

## Licença

Distribuído sob a [LaTeX Project Public License (LPPL), versão 1.3c ou
posterior](https://www.latex-project.org/lppl.txt) — ver o arquivo
[`LICENSE`](LICENSE).
