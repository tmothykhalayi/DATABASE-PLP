SELECT id, category, amount, date, description  -- Select the 'id', 'category', 'amount', 'date', and 'description' columns
FROM expenses  -- From the 'expenses' table
WHERE (category = 'Food' OR category = 'Entertainment')  -- Filter for rows where the 'category' is either 'Food' or 'Entertainment'
  AND description NOT LIKE '%coffee%'  -- Exclude rows where 'description' contains the word 'coffee'
  AND amount > 50  -- Only include expenses where the 'amount' is greater than 50
  AND date BETWEEN '2025-01-01' AND '2025-03-01'  -- Limit the results to expenses between January 1, 2025, and March 1, 2025
ORDER BY amount DESC, date ASC;  -- Sort the results by 'amount' in descending order and by 'date' in ascending order if there are ties in amount
