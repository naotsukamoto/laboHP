var CommentBox = React.createClass({
  loadCommentsFromServer: function(){
    $.ajax({
      url: this.props.url,
      dataType: 'json',
      success: function(result){
        this.setState({data: result.data});
      }.bind(this),
        error: function(xhr, status, err){
        console.error(this.props.url, status, err.toString());
      }.bind(this)
    });
  },
  getInitialState: function(){
    return {data:[]};
  },
  componentDidMount: function(){
    this.loadCommentsFromServer();
    setInterval(this.loadCommentsFromServer, this.props.pollInterval);
  },
  render: function() {
    return (
      <div className="commentBox">
        <h1>Comments</h1>
        <CommentList data={this.state.data}/>
        <CommentForm />
      </div>
    );
  }
});

var CommentList = React.createClass({
  render: function() {
  var commentNodes = this.props.data.map(function(comment){
    return(
      <Comment author={comment.author}>
        {comment.text}
      </Comment>
      );
  });
    return (
      <div className="commentList">
        {commentNodes}
      </div>
    );
  }
});

var CommentForm = React.createClass({
  render:function(){
    return(
      <form className="commentForm ">
        <input className="form-control" type="text" placeholder="Your name" />
        <input className="form-control" type="text" placeholder="Say something..." />
        <input className="btn btn-primary" type="submit" value="Post" />
      </form>
    );
  }
})

var Comment = React.createClass({
  render:function(){
    var rawMarkup = marked(this.props.children.toString(), {sanitize:true});
    return(
      <div className="comment">
      <h2 className="commentAuther">
        {this.props.auther}
      </h2>
      <span dangerouslySetInnerHTML={{__html: rawMarkup}} />
      </div>
    );
  }
});
