#!/usr/bin/python3
'''for a given employee ID, returns information
   about his/her TODO list progress.'''

if __name__ == '__main__':
    import csv
    import requests
    from sys import argv

    user = requests.get('https://jsonplaceholder.typicode.com/users/{}'.
                        format(argv[1])).json()
    tasks = requests.get('https://jsonplaceholder.typicode.com/users/{}/todos'.
                         format(argv[1])).json()

    with open("./{}.csv".format(argv[1]), 'w', encoding='UTF8') as file:
        writer = csv.writer(file)

        for task in tasks:
            row = [user['id'], user['name'], task['completed'], task['title']]
            writer.writerow(row)
