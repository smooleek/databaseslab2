import psycopg2

query1 = '''
SELECT name, cores FROM Specifications INNER JOIN Processors ON Processors.Processor_id = Specifications.Processor_id
'''

query2 = '''
select product_line from Processors
'''
query3 = '''
SELECT name, cores FROM Specifications INNER JOIN Processors ON Processors.Processor_id = Specifications.Processor_id
'''

connection = psycopg2.connect(user='postgres', password='postgres', dbname='testdb21', host='localhost', port='5432')
with connection:
    cursor = connection.cursor()

    print('Query 1:')
    cursor.execute(query1)
    for row in cursor:
        print(row)

    print('Query 2:')
    cursor.execute(query2)
    for row in cursor:
        print(row)
