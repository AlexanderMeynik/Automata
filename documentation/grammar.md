[На основную страницу репозитория](..%2FREADME.md)
# Грамматика языка
К имеющемуся функционалу языка Milan добавить поддержку строк, как массивов символов, добавить возможность считывать символы и также поддержку символьных литералов.

Описание изменений в языке.

1. ⟨program⟩ ::= ‘begin’ ⟨statementList⟩ ‘end’

2. ⟨statementList⟩ ::= ⟨statement⟩ ‘;’ ⟨statementList⟩|

3. ⟨statement⟩ ::= ⟨ident⟩ ‘:=’ ⟨expression⟩ 
| ‘if’ ⟨relation⟩ ‘then’ ⟨statementList⟩ [‘else’ ⟨statementList⟩] ‘fi’
| ⟨relation⟩ ‘do’ ⟨statementList⟩ ‘od’
| ⟨write⟩‘(’ ⟨expression⟩ ‘)’
**|****⟨****ident****⟩****‘[’** **⟨****expression****⟩****‘]’‘:=’** **⟨****expression****⟩**
**|****⟨****ident****⟩** **‘:=’** **⟨****double** **quote****⟩****(****⟨****letter****⟩****|** **⟨****digit****⟩****)****⟨****double** **quote****⟩**
4. ⟨expression⟩ ::= ⟨term⟩ {⟨addop⟩ ⟨term⟩} 
5. ⟨term⟩ ::= ⟨factor ⟩ {⟨mulop⟩ ⟨factor ⟩} 
6. ⟨factor ⟩ ::= ⟨ident⟩ | ⟨number⟩ | ‘(’ ⟨expression⟩ ‘)’
7. **|****⟨****quote****⟩****{****⟨****letter****⟩****|** **⟨****digit****⟩****}****⟨****quote****⟩**
8. **|****⟨****ident****⟩****‘[’** **⟨****expression****⟩****‘]’**
9. ⟨relation⟩ ::= ⟨expression⟩ ⟨cmp⟩ ⟨expression⟩ 
10. ⟨addop⟩ ::= ‘+’ | ‘-’ 
11. ⟨multop⟩ ::= ‘*’ | ‘/’ 
12. ⟨cmp⟩ ::= ‘=’ | ‘!=’ | ‘<’ | ‘<=’ | ‘>’ | ‘>=’ 
13. ⟨ident⟩ ::= ⟨letter ⟩ {⟨letter ⟩ | ⟨digit⟩} 
14. ⟨letter ⟩ ::= ‘a’ | ‘b’ | ‘c’ | . . . | ‘z’ | ‘A’ | ‘B’ | ‘C’ | . . . | ‘Z’ 
15. ⟨digit⟩ ::= ‘0’ | ‘1’ | ‘2’ | ‘3’ | ‘4’ | ‘5’ | ‘6’ | ‘7’ | ‘8’ | ‘9’
16. **⟨****quote****⟩** **::= ‘'’**
17. **⟨****double** **quote****⟩** **::= ‘"’**
18. **⟨****write****⟩****::=‘write’| ‘writet’|‘writeno’|‘writec’| ‘writect’|‘writecno’**