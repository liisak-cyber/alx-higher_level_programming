#!/usr/bin/python3
"""
Defines the State class that links to the 'states' table in MySQL.
"""

from sqlalchemy import Column, Integer, String
from sqlalchemy.ext.declarative import declarative_base

# Create the base class using declarative_base()
Base = declarative_base()

class State(Base):
    """
    Class that defines a State.
    The class links to the 'states' table in MySQL database.
    """

    __tablename__ = 'states'

# Define the columns for the states table
    id = Column(Integer, unique=True, nullable=False, primary_key=True)
    name = Column(String(128), nullable=False)
