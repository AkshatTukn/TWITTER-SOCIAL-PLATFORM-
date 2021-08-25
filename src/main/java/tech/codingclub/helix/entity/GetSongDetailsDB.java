package tech.codingclub.helix.entity;

import tech.codingclub.helix.database.GenericDB;

public class GetSongDetailsDB {
    //String parent_link;
    //String link;
    String album;
    String duration;
    String singers;
    String lyricist;
    String music_director;
    String download_128;
    String download_256;
    String image_url;
    String song_name;

    public String getAlbum() {
        return album;
    }

    public String getDuration() {
        return duration;
    }

    public String getSingers() {
        return singers;
    }

    public String getLyricist() {
        return lyricist;
    }

    public String getMusic_director() {
        return music_director;
    }

    public String getDownload_128() {
        return download_128;
    }

    public String getDownload_256() {
        return download_256;
    }

    public String getImage_url() {
        return image_url;
    }

    public String getSong_name() {
        return song_name;
    }

    public GetSongDetailsDB(String str){
        this.song_name=str;
        this.duration="None";
        this.singers="None";
        this.lyricist="None";
        this.image_url="None";
        this.album="None";
        this.download_128="None";
        this.download_256="None";
        this.music_director="None";
    }
    public void FetchSongDetailsDB(){
      /*  Music music=new GenericDB<Music>().getRow(tech.codingclub.helix.tables.Music.MUSIC,Music.class,tech.codingclub.helix.tables.Music.MUSIC.SONG_NAME.equalIgnoreCase(this.song_name));//tech.codingclub.helix.tables.Music.MUSIC.SONG_NAME.eq(this.song_name));
        this.album=music.getAlbum();
        this.duration=music.getDuration();
        this.download_128=music.getDownload_128();
        this.download_256=music.getDownload_256();
        this.image_url=music.getImage_url();
        this.lyricist=music.getLyricist();
        this.singers=music.getSingers(); */
    }

    public static void main(String[] args) {
        GetSongDetailsDB getSongDetailsDB=new GetSongDetailsDB("Bulleya");
        getSongDetailsDB.FetchSongDetailsDB();
        System.out.println(getSongDetailsDB.album+" "+getSongDetailsDB.duration);
    }


}
