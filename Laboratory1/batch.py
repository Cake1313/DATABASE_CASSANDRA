from cassandra import ConsistencyLevel
from cassandra.cluster import Cluster
from cassandra.query import BatchStatement


if __name__ == "__main__":
    cluster = Cluster(['127.0.0.1'], port=9042)
    session = cluster.connect('dish_keyspace', wait_for_all_pools=True)
    session.execute('USE dish_keyspace')
    session.execute(
        "BEGIN BATCH "
        "INSERT INTO dish_keyspace.dish (dish_name, dish_id, dish_feauture_id, dish_receipt_id) VALUES ('dish-6', '6', 3, 6);"
        "UPDATE dish_keyspace.receipts SET receipt_ingridient_id = 3 WHERE receipt_id=2;"
        "APPLY BATCH;")
