function Audio() {
    //Created a Class for Audio
    this.currentPlaying;
    this.audio = document.createElement('audio');
    //Set the data as the track and get the path of it
    this.setTrack = function(track) {
        this.currentPlaying = track;
        //console.log(track);
        this.audio.src = track.path;
    }
    //class to play audio
    this.play = function() {
        this.audio.play();
    }
    //pause the audio
    this.pause = function() {
        this.audio.pause();
    }
    //set the Time of the current audio
    this.setTime = function(seconds) {
        this.audio.currentTime = seconds;
    }
}

function pauseSong() {
    //Pause song and hide pause button and show play button
    $(".controlButton.play").show();
    $(".controlButton.pause").hide();
    audioElement.pause();
}

function playSong() {
    //Play song and hide pause button and show play button
    $(".controlButton.play").hide();
    $(".controlButton.pause").show();
    audioElement.play();
    //console.log("Music is playing");
}

function setTrack(trackId, newPlaylist, play) {

    //console.log(trackId);
    //Get the Index of the Playing Song
    currentIndex = newPlaylist.indexOf(trackId.toString());
    //console.log(currentIndex);

    //Get the handlers Values for Song
    $.post("handlers/ajax/getSongJson.php", { songId: trackId }, function(data) {
        //console.log(data);
        //Put in a variable and encode it as a JSON file
        var track =  JSON.parse(data);
        $(".nowPlaying_title").text(track.title);
        //Get the handlers Values for Artist
        $.post("handlers/ajax/getArtistJson.php", { songId: trackId }, function(data) {
            var artist = JSON.parse(data);
            $(".nowPlaying_artist").text(artist.name);
        });
        //Get the handlers Values for Album
        $.post("handlers/ajax/getAlbumJson.php", { songId: trackId }, function(data) {
            var album = JSON.parse(data);
            //console.log(album);
           $(".albumLink img").attr("src", album.cover_path);
        });
        //Set the Track for the audioElement
        audioElement.setTrack(track);
        //PlaySong if third parameter is true
        if(play == true) {
            playSong();
        }
    });
}

function goNextSong() {
    //Compare the tempSongIds length and currentIndex to determined all the songs to be played
    //console.log(tempSongIds);
    //console.log(currentIndex);
  if(currentIndex == tempSongIds.length-1){
      //Goes back to the first index
      currentIndex = 0;
  }else{
      //Go to the next Index
     currentIndex++;
  }
    //Play The song
    setTrack(tempSongIds[currentIndex],tempSongIds, true);
}

function goBackSong() {
    //Index is the first index, it will go back to the same index
    if(currentIndex == 0){
        currentIndex = 0;
    }else{
        //It will subtract one in the currentIndex
        currentIndex--;
    }
    //Play the song
    setTrack(tempSongIds[currentIndex],tempSongIds, true);
}