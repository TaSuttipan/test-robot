*** Settings ***
Suite Setup       Set Log Level    TRACE
Library           HttpLibrary.HTTP
Library           RequestsLibrary
Library           DateTime
Library           String
Library           ExcelLibrary
Library           SeleniumLibrary
Library           CSVLibrary
Library           OperatingSystem

*** Variable ***
#Offer
#Navigation
${SourceDataDir}    C:\\Users\\USER\\Documents\\ROBOT\\Backend\\add.csv
