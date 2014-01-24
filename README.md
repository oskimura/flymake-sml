Stadard ML用のflymake
--------------------
### 要求するパッケージ
- flymake-easy
- sml-mode

### 使い方

flymake-sml.elがあるディレクトリをパスに通して

```
(reauire 'flymake-sml)
(add-hook 'sml-mode-hook 'flymake-sml-load)
```
を.emacs にお書きください。