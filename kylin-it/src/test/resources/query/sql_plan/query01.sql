SELECT ORDER_ID
FROM test_kylin_fact
GROUP BY CAST(CASE
		WHEN '1030101' = '1030101' THEN substring(COALESCE(LSTG_FORMAT_NAME, '888888888888'), 1, 1)
		WHEN '1030101' = '1030102' THEN substring(COALESCE(LSTG_FORMAT_NAME, '999999999999'), 1, 1)
		WHEN '1030101' = '1030103' THEN substring(COALESCE(LSTG_FORMAT_NAME, '777777777777'), 1, 1)
		WHEN '1030101' = '1030104' THEN substring(COALESCE(LSTG_FORMAT_NAME, '666666666666'), 1, 1)
	END AS varchar(256)), ORDER_ID