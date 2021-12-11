SELECT name, cores FROM Specifications INNER JOIN Processors ON Processors.Processor_id = Specifications.Processor_id

SELECT DISTINCT product_line, count(*) FROM Processors GROUP BY Processors.Product_line

SELECT name, cores, threads from Specifications INNER JOIN info ON info.info = specifications. processor_id INNER JOIN Processors ON Processors.processor_id = specifications. processor_id WHERE vertical_segment = 'Boxed Processor'
