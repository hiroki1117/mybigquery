with tmp AS (
select repo_name, l.name
from `bigquery-public-data.github_repos.languages`
, unnest(language) as l
)
select name, count(1) as reponum
from tmp
group by name
order by reponum desc


/*
Githubの言語のリポジトリ数ランク
一リポジトリで複数言語という場合もある

1	JavaScript 1107589
2	CSS 820632
3	HTML 785340
4	Shell 641469
5	Python 551265
6	Ruby 377111
7	Java 371326
8	PHP 342832
9	C 293987
10	C++ 280422
*/