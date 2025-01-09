# model_state.py
from sqlalchemy import Column, Integer, String
from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()

class State(Base):
        """
            Class that defines a state.
                """
                    __tablename__ = 'states'

                        id = Column(Integer, unique=True, nullable=False, primary_key=True)
                            name = Column(String(128), nullable=False)
