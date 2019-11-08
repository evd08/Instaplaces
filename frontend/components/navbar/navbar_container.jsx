import { connect } from 'react-redux';
import Navbar from './navbar';
// import { logout } from '../actions/session_actions';
import { logout } from '../../actions/session_actions';

const mapStateToProps = (state) => {
    return {
        currentUser: state.entities.users[state.session.id],
        // user_id: state.session.id
    }
};

const mapDispatchToProps = (dispatch) => ({
    logout: () => dispatch(logout())
});

export default connect(mapStateToProps, mapDispatchToProps)(Navbar);