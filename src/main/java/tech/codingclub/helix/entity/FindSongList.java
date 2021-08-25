package tech.codingclub.helix.entity;

import tech.codingclub.helix.entity.TaskManager;
import javafx.concurrent.Task;
import org.jooq.Record;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import tech.codingclub.helix.global.HttpURLConnectionExample;

import java.util.ArrayList;

public class FindSongList implements Runnable{
   // private static int count1=0;
    String url;
  //  private static ArrayList<String> arrayList1=new ArrayList<String>();
    public FindSongList(String s){
        this.url=s;
    }

//    public static ArrayList<String> getArrayList1() {
//    return arrayList1;
//
//    }

    @Override
    public void run() {
//        System.out.println("Sleeping");
        try {
            //System.setProperty("http.agent","");
            String html= HttpURLConnectionExample.sendGet(this.url);
            Document document= Jsoup.parse(html,"https://songspk.mobi");
            Elements elements= document.body().select(".thumb-image >*");
            ArrayList<String> songList=new ArrayList<String>();

            //String image_url=null;
            for(Element element: elements){
                if(element.tagName().equals("a")){
                    if(element.attr("href")!=null){
                    songList.add("https://songspk.mobi"+element.attr("href").toString());
                    System.out.println("Adding!");
                    //count1++;
                }}
//                if(element.tagName().equals("img")){
//                    image_url=element.attr("src").toString();
//                }
            }
            TaskManager taskManager2=new TaskManager(50);
            for(String s:songList){
                taskManager2.waitTillQueueIsFreeAndAddTask(new FindSongInfo(s,this.url));
            }

//
//
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
//
   public static void main(String[] args) {
        FindSongList findSongList=new FindSongList("https://songspk.mobi/browse/bollywood-singles/a");
        findSongList.run();
        //System.out.println(arrayList1.size());
        //for(String s:arrayList1){
        //    System.out.println(s);
        //}
    }


}
