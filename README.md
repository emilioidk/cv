## cv
My Curriculum Vitae from template Moderncv Banking by Xavier Danaux. I

### How to use

You will notice in the main.tex that sections are divided like this

```LaTex
\ifenglish
\section{English}
I was born in Argentina,...
\else
\section{Dansk}
Jeg født i Argentina,...
\fi
```

This way you can display certain information when building your CV in one language and other information in the another language. 

### Make

I include a Makefile that makes it easier to build the desired outputs. The options are:

- *dansk:* builds the Danish CVs. Generates the files CV Dansk.pdf and CVDansk.pdf (compressed version of the first one).
- *english:* builds the English CVs. Generates the files CV English.pdf and CVEnglish.pdf (compressed version of the first one).
- *clean:* removes unnecessary and temporary files.
- *all* (default option): it runs all three commands from above.
