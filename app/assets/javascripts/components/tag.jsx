// var Tag = React.createClass({
//   propTypes: {
//     tag: React.PropTypes.string
//   },

//   render: function() {
//     return (
//       <div>
//         <div>Tag: {this.props.tag}</div>
//       </div>
//     );
//   }
// });


class Tag extends React.Component {
  render () {
    return (
      <div>
        <div>Tag: {this.props.tag}</div>
      </div>
    );
  }
}

Tag.propTypes = {
  tag: React.PropTypes.string
};
