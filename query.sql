SELECT name, cores FROM Specifications INNER JOIN Processors ON Processors.specifications_id = Specifications.specifications_id

SELECT DISTINCT product_line, count(*) FROM Processors GROUP BY Processors.Product_line

SELECT name, cores, threads from Specifications INNER JOIN info ON info.info = specifications.specifications_id INNER JOIN Processors ON Processors.specifications_id = specifications.specifications_id WHERE vertical_segment = 'Boxed Processor'
