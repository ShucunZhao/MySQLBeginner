SELECT *
FROM sql_store.customers
-- WHERE last_name LIKE '%field%'
WHERE last_name REGEXP '[a-h]e'
-- WHERE first_name REGEXP 'ELKA|AMBUR'
-- WHERE last_name REGEXP 'EY$|ON$'
-- WHERE last_name REGEXP '^MY|SE'
-- WHERE last_name REGEXP 'B[RU]'

-- Note of regular expression:
-- ^: begining
-- $: end
-- |: logical or
-- []: match every sigle char list inside [] like [abcd]
-- [-]: use '-' inside the [] represent a range like [a-h]