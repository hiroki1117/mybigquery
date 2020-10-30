with tmp AS (
select repo_name, l.name
from `bigquery-public-data.github_repos.languages`
, unnest(language) as l
)
select name, count(1) as reponum
from tmp
group by name
order by reponum desc