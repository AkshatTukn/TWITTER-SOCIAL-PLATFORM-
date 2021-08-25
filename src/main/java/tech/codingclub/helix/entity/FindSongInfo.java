package tech.codingclub.helix.entity;

import tech.codingclub.helix.database.GenericDB;
import tech.codingclub.helix.entity.Music;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import tech.codingclub.helix.global.HttpURLConnectionExample;

import java.util.HashMap;
import java.util.Map;

public class FindSongInfo implements Runnable{
    String songUrl;
    String parent_link;
    String link;
    String album="Doesn't Exists";
    String duration="Doesn't Exists";
    String singers="Doesn't Exists";
    String lyricist="Doesn't Exists";
    String music_director="Doesn't Exists";
    String download_128="Doesn't Exists";
    String download_256="Doesn't Exists";
    String image_url="Doesn't Exists";
    String song_name;


//    public FindSongInfo(){
//
//    }
    public FindSongInfo(String s,String s2){
        this.parent_link=s2;
        this.songUrl=s;
    }
    @Override
    public void run() {
        try {
            String getHTML= HttpURLConnectionExample.sendGet(this.songUrl);
            Document document1= Jsoup.parse(getHTML,"https://songspk.mobi");


            this.link=this.songUrl;
            //Elements parentDownload=document1.select(".col-sm-6 >*");
            //this.download_128=parentDownload.get(0).attr("href");
            //this.download_256=parentDownload.get(1).attr("href");
            Elements parents=document1.select(".list-group-item >*");
            int n=parents.size();
            Map<String,String> map=new HashMap<String, String>();
            for(int i=0;i<n;i+=3){
                String a=parents.get(i).text();
                String b=parents.get(i+1).text();
                if(a.equals(null)){
                    a="Doesn't exist";
                }
                if(b.equals(null)){
                    b="Doesn't exist";
                }

                map.put(a,b);
            }
           this.album=map.get("Album");
            this.duration=map.get("Duration");
            this.singers=map.get("Singers");
            this.lyricist=map.get("Lyricist");
            this.music_director=map.get("Music Director");
            this.image_url=document1.select(".thumbnail").attr("src");
            this.song_name=document1.select(".thumbnail").attr("alt").replaceAll("Mp3 Download","").trim().replaceAll("[ ]+","_");
            System.out.println(this.song_name);
            Elements downloads=document1.select(".col-sm-6.col-xs-12.text-center.page-down-btns >*");
            this.download_128=downloads.get(0).attr("href");
//            System.out.println(this.download_128);
            this.download_256=downloads.get(1).attr("href");
           // System.out.println(this.download_256);


        } catch (Exception e) {
            e.printStackTrace();
        }

//        Music item=new Music(this.parent_link,this.link,this.album,this.duration,this.singers,this.lyricist,this.music_director,this.download_128,this.download_256,this.image_url,this.song_name);
//        new GenericDB<Music>().addRow(tech.codingclub.helix.tables.Music.MUSIC,item);
//        System.out.println("Done");
    }

//    public static void main(String[] args) {
//        FindSongInfo findSongInfo=new FindSongInfo();
//        findSongInfo.songUrl="https://songspk.mobi/aala-re-aala-hindi-2018-mp3-song-spp04.html";
//        Thread t1=new Thread(findSongInfo);
//        t1.start();
//    }
}
