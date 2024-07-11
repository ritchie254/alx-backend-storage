-- creating a temporary table to store the values

CREATE TEMPORARY TABLE IF NOT EXISTS country_ranks(
	origin VARCHAR(255),
	nb_fans INT
);

-- adding data from metal_bands table to temporary table

SELECT origin, SUM(fans) as nb_fans
	FROM metal_bands
	GROUP BY origin
	ORDER BY nb_fans DESC
;
