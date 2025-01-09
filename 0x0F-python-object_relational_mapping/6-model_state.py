# 6-model_state.py
#!/usr/bin/python3
"""
Creates the states table in the database
"""
import sys
from model_state import Base, State
from sqlalchemy import create_engine

if __name__ == "__main__":
        # Connect to MySQL
            engine = create_engine('mysql+mysqldb://{}:{}@localhost/{}'.format(sys.argv[1], sys.argv[2], sys.argv[3]), pool_pre_ping=True)

                # Create all tables
                    Base.metadata.create_all(engine)
