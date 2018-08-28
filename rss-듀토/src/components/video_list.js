//데이터 표시하는 준비
import React from 'react';
//const videos = props.videos;  props인 비디오가 비디오 리스트로 전달- 랜더링 될떄 마다 전달
const VideoList = (props) => {
    
    return(
        <ul className="col-md-4 list-group">
        {props.videos.length}
        </ul>
    );  //리팩토링할때 props를 this.props로
};

export default VideoList;