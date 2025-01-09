#!/usr/bin/python3
"""
Creates the 'states' table in the MySQL database.
"""

import sys
from model_state import Base, State
from sqlalchemy import create_engine

if __name__ == "__main__":
    # Create the connection engine to MySQL
    engine = create_engine(
                            'mysql+mysqldb://{}:{}@localhost/{}'.format(sys.argv[1], sys.argv[2], sys.argv[3]), pool_pre_ping=True
                            )

    # Create all tables in the database (including 'states')
    Base.metadata.create_all(engine)
