package tech.codingclub.helix.entity;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Scanner;



public class FindSongUrl {
    String filePath;
    public FindSongUrl(){
        String str="/home/jarvis/Downloads/crawlsonglinks.txt";
        this.filePath=str;
    }

    public ArrayList<String> getUrls(){
        File file=new File(this.filePath);
        ArrayList<String> arrayList=new ArrayList<String>();
        try {
            Scanner scan=new Scanner(file);
            while(scan.hasNextLine()){
                arrayList.add(scan.nextLine());
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        System.out.println(arrayList.size()+" records fetched");
        return arrayList;
    }

    public static void main(String[] args) {
        //FindSongUrl findSongUrl=new FindSongUrl();
        //findSongUrl.getUrls();
    }

}
