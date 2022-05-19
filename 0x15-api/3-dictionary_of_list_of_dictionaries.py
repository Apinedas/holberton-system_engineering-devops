#!/usr/bin/python3
'''for a given employee ID, returns JSON
   about his/her TODO list progress.'''

if __name__ == '__main__':
    import json
    import requests

    def get_dict(i):
        url = 'https://jsonplaceholder.typicode.com/users'
        user = requests.get('{}/{}'.
                            format(url, i)).json()
        tasks = requests.get('{}/{}/todos'.
                             format(url, i)).json()

        task_list = []
        write_dict = dict()
        if user:
            for task in tasks:
                edited_task = {"task": task['title'],
                               "completed": task['completed'],
                               "username": user['username']}
                task_list.append(edited_task)
            write_dict[user['id']] = task_list
            return write_dict
        return None

    i = 1
    user_dict = get_dict(i)
    write_dict = dict()
    while (user_dict):
        write_dict[i] = user_dict[i]
        i += 1
        user_dict = get_dict(i)

    with open('todo_all_employees.json', 'w') as file:
        file.write(json.dumps(write_dict))
