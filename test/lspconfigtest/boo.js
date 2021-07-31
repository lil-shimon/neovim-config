function HelloWorld({
  greeting = 'hello',
  greeted = '"World"',
  silent = false,
  onMouseOver,
}) {
  if (!greeting) {
    return null;
  }

  // TODO: Don't use random in render
  let num = Math.floor(Math.random() * 1e7)
    .toString()
    .replace(/\.\d+/gi, '');

  return (
    <div
      className="HelloWorld"
      title={`You are visitor number ${num}`}
      onMouseOver={onMouseOver}
    >
      <strong>
        {greeting.slice(0, 1).toUpperCase() + greeting.slice(1).toLowerCase()}
      </strong>
      {greeting.endsWith(',') ? (
        ' '
      ) : (
        <span style={{ color: 'grey' }}>", "</span>
      )}
      <em>{greeted}</em>
      {silent ? '.' : '!'}
    </div>
  );
}




todos table, items, posts, users
todos, users, posts

## wanna get user todo post by todoId #########################################################################################

1. todoController  (fat controller) => (todo model) $this->user->find($id);

2. todoService($todoId) ==  todoRepository($id) userRepository($id) postRepository($id)

3. todo Repository todos,
3. user Repository users.todo_id, 
3. post Repository posts.todo_id


## wanna get user post by userId #########################################################################################

1. userController  (fat controller) => (todo model) $this->user->find($id);

2. userService($todoId) ==  userRepository($id) postRepository($id)

3. user Repository users.todo_id, 
3. post Repository posts.todo_id

