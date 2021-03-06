import { connect } from 'react-redux';
import Post from './post_hooks';
import { createLike, deleteLike, fetchLikes } from '../../actions/likes_actions';
import { createComment, deleteComment, fetchComments } from '../../actions/comments_actions';
import { deleteFollow, createFollow } from '../../actions/follows_actions';

const mapStateToProps = (state, ownProps) => {
    return {
        data: {
            currentUserId: state.entities.users[state.session.id].id,
            post_id: ownProps.post.id
        },
        post: ownProps.post,
        currentUser: state.entities.users[state.session.id],
        comments: Object.values(state.entities.comments)
    }
}

const mapDispatchToProps = dispatch => {
    return {
        createLike: like => dispatch(createLike(like)),
        deleteLike: likeId => dispatch(deleteLike(likeId)),
        fetchLikes: () => dispatch(fetchLikes()),
        createComment: comment => dispatch(createComment(comment)),
        deleteComment: commentId => dispatch(deleteComment(commentId)),
        fetchComments: () => dispatch(fetchComments()),
        deleteFollow: followed_id => dispatch(deleteFollow(followed_id)),
        createFollow: followed_id => dispatch(createFollow(followed_id)),
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(Post);