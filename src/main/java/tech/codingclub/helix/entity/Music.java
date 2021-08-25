package tech.codingclub.helix.entity;

public class Music {
    String parent_link;
    String link;
    String album;
    String duration;
    String singers;
    String lyricist;
    String music_director;
    String download_128;
    String download_256;
    String image_url;
    String song_name;

    public String getParent_link() {
        return parent_link;
    }

    public String getLink() {
        return link;
    }

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

    public Music(String parent_link, String link, String album, String duration, String singers, String lyricist, String music_director, String download_128, String download_256, String image_url, String song_name) {
        this.parent_link = parent_link;
        this.link = link;
        this.album = album;
        this.duration = duration;
        this.singers = singers;
        this.lyricist = lyricist;
        this.music_director = music_director;
        this.download_128 = download_128;
        this.download_256 = download_256;
        this.image_url=image_url;
        this.song_name=song_name;
    }


}
