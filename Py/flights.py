import pandas


def read_flights(file, dest):
    flights = pandas.read_csv(file)
    flights = flights[flights['DEST'] == dest]
    flights = flights[['CARRIER', 'DEP_DELAY', 'TAXI_IN']]
    flights = flights.dropna()
    return flights
