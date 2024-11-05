### Using the Task Management System in Prolog

1. **Creating Tasks**
   You can create tasks using the `assign_task/2` predicate. This predicate takes two arguments: the task ID and the user name.

   ```prolog
   ?- assign_task(1, ahamed).
   Task created for user ahamed: ID=1, Description="drink water"
   ```

   You can create multiple tasks for different users:

   ```prolog
   ?- assign_task(2, ahamed).
   Task created for user ahamed: ID=2, Description="healthy food".

   ?- assign_task(3, khelil).
   Task created for user khelil: ID=3, Description="work out".
   ```

2. **Marking Tasks as Completed**
   Use the `mark_completed/2` predicate to mark a specific task as completed. This predicate takes the task ID and the user name as arguments.

   ```prolog
   ?- mark_completed(1, ahamed).
   Marked task 1 as completed for user ahamed.
   ```

3. **Displaying All Tasks**
   To display all tasks in the system, simply call the `display_tasks/0` predicate:

   ```prolog
   ?- display_tasks.
   Task ID: 1, Description: drink water, Name: ahamed, Status: true
   Task ID: 2, Description: healthy food, Name: ahamed, Status: false
   Task ID: 3, Description: work out, Name: khelil, Status: false
   ```

4. **Displaying Tasks Assigned to a Specific User**
   You can display all tasks assigned to a specific user using the `display_tasks_assigned_to/1` predicate. For example, to display tasks for the user `ahamed`:

   ```prolog
   ?- display_tasks_assigned_to(ahamed).
   Tasks assigned to ahamed: 
   Task 1:
      - Description: drink water
      - Completion status: true
   Task 2:
      - Description: healthy food
      - Completion status: false
   ```

5. **Displaying Completed Tasks**
   To display only the tasks that have been marked as completed, use the `display_completed_tasks/0` predicate:

   ```prolog
   ?- display_completed_tasks.
   true Status: Task ID: 1, UserName: ahamed, Description: drink water
   ```

### Example Session
Here’s how a complete session might look in the Prolog interpreter:

```prolog
?- assign_task(1, ahamed).
Task created for user ahamed: ID=1, Description="drink water".
?- assign_task(2, ahamed).
Task created for user ahamed: ID=2, Description="healthy food".
?- assign_task(3, khelil).
Task created for user khelil: ID=3, Description="work out".
?- mark_completed(1, ahamed).
Marked task 1 as completed for user ahamed.
?- display_tasks.
Task ID: 1, Description: drink water, Name: ahamed, Status: true
Task ID: 2, Description: healthy food, Name: ahamed, Status: false
Task ID: 3, Description: work out, Name: khelil, Status: false
?- display_tasks_assigned_to(ahamed).
Tasks assigned to ahamed: 
Task 1:
      - Description: drink water
      - Completion status: true
Task 2:
      - Description: healthy food
      - Completion status: false
?- display_completed_tasks.
true Status: Task ID: 1, UserName: ahamed, Description: drink water
```

These examples should help you understand how to interact with the task management system in your Prolog code. You can modify the task IDs and user names as needed.
