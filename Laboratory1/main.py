from cassandra import ConsistencyLevel
from cassandra.cluster import Cluster
from cassandra.query import SimpleStatement, tuple_factory


if name == "main":
    cluster = Cluster(['127.0.0.1'], port=9042)

    session = cluster.connect('dish', wait_for_all_pools=True)
    session.row_factory = tuple_factor
    query1 = SimpleStatement(
        "SELECT dish_name,dish_name,dish_feauture_id, dish_receipt_id FROM \"dish\"",
        consistency_level=ConsistencyLevel.LOCAL_ONE)
    executive1 = session.execute(query1)

    session = cluster.connect('receipts', wait_for_all_pools=True)
    session.row_factory = tuple_factory
    query2 = SimpleStatement(
        "SELECT receipt,receipt_ingridient_id,receipt_id FROM \"receipts\"",
        consistency_level=ConsistencyLevel.LOCAL_ONE)
    executive1 = session.execute(query2)

    session = cluster.connect('features', wait_for_all_pools=True)
    session.row_factory = tuple_factory
    query3 = SimpleStatement(
        "SELECT feature_name,feature_id FROM \"features\"",
        consistency_level=ConsistencyLevel.LOCAL_ONE)
    executive2 = session.execute(query3)

    session = cluster.connect('ingridients', wait_for_all_pools=True)
    session.row_factory = tuple_factory
    query4 = SimpleStatement(
        "SELECT ingridient_id, ingridient_list FROM \"ingridients\"",
        consistency_level=ConsistencyLevel.LOCAL_ONE)
    executive3 = session.execute(query4)
