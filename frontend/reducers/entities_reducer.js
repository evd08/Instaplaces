import { combineReducers } from 'redux';
import usersReducer from './users_reducer';
import postsReducer from './posts_reducer';
import likesReducer from './likes_reducer';
import commentsReducer from './comments_reducer';
import searchReducer from './search_reducer';
import otherUsersReducer from './other_users_reducer';
import followsReducer from './follows_reducer';

const entitiesReducer = combineReducers({
    users: usersReducer,
    otherUser: otherUsersReducer,
    posts: postsReducer,
    likes: likesReducer,
    comments: commentsReducer,
    search: searchReducer,
    follows: followsReducer,
})

export default entitiesReducer;