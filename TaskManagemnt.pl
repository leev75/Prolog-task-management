:- dynamic task/4.

% Define initial sample tasks with various users, IDs, and descriptions
task(1, 'drink water', ahamed, false).
task(2, 'healthy food', ahamed, false).
task(3, 'work out', ahamed, true).
task(1, 'drink water', khelil, true).
task(2, 'healthy food', khelil, false).
task(3, 'work out', khelil, true).
task(1, 'drink water', jalal, false).
task(2, 'healthy food', jalal, false).
task(3, 'work out', jalal, true).
task(4, 'meditate', ali, false).
task(5, 'read a book', ali, false).
task(6, 'practice coding', sami, true).
task(7, 'study math', sami, false).
task(8, 'go for a walk', laila, false).
task(9, 'learn Prolog', laila, true).
task(10, 'yoga', nadir, false).

% Create a new task for a user with a given ID and description
create_task(Id, Description, Name) :- 
    \+ task(Id, _, Name, _),                 % Check if the task doesn't already exist for the user
    assertz(task(Id, Description, Name, false)),
    format('Task created for user ~w: ID=~w, Description="~w"~n', [Name, Id, Description]).

% Retrieve a predefined description for a task ID, or return a default message if ID is unknown
check_description(Id, Description) :- 
    (Id == 1 -> Description = 'drink water';
     Id == 2 -> Description = 'healthy food';
     Id == 3 -> Description = 'work out';
     Id == 4 -> Description = 'meditate';
     Id == 5 -> Description = 'read a book';
     Id == 6 -> Description = 'practice coding';
     Id == 7 -> Description = 'study math';
     Id == 8 -> Description = 'go for a walk';
     Id == 9 -> Description = 'learn Prolog';
     Id == 10 -> Description = 'yoga';
     Description = 'ID not found in the database').

% Assign a predefined task to a user, avoiding duplicates
assign_task(Id, Name) :-
    check_description(Id, Description),
    create_task(Id, Description, Name).

% Mark a specific user's task as completed
mark_completed(Id, Name) :-
    (retract(task(Id, Description, Name, _)) ->
        assertz(task(Id, Description, Name, true)),
        format('Marked task ~w as completed for user ~w.~n', [Id, Name])
    ;
        format('No task with ID=~w found for user ~w.~n', [Id, Name])
    ).

% Display all tasks
display_tasks :-
    task(Id, Description, Name, Status),
    format('Task ID: ~w, Description: ~w, Name: ~w, Status: ~w~n', [Id, Description, Name, Status]),
    fail.
display_tasks. % Succeeds after listing all tasks

% Display all tasks assigned to a specific user
display_tasks_assigned_to(Name) :-
    write('Tasks assigned to '), write(Name), write(': '), nl,
    task(Id, Description, Name, Status),
    format('Task ~w:\n   - Description: ~w\n   - Completion status: ~w~n', [Id, Description, Status]),
    fail.
display_tasks_assigned_to(_).

% Display only completed tasks
display_completed_tasks :-
    task(Id, Description, Name, true),
    format('Completed Task: ID=~w, User=~w, Description=~w~n', [Id, Name, Description]),
    fail.
display_completed_tasks.
