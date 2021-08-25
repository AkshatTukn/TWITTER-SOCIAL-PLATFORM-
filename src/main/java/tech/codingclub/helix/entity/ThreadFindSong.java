package tech.codingclub.helix.entity;

import tech.codingclub.helix.entity.FindSongUrl;
import tech.codingclub.helix.entity.TaskManager;

import java.util.ArrayList;

public class ThreadFindSong  {
    public static void main(String[] args) throws InterruptedException {
        TaskManager taskManager=new TaskManager(60);
        ArrayList<String> arrayList=new FindSongUrl().getUrls();
        for(String s:arrayList){
            taskManager.waitTillQueueIsFreeAndAddTask(new FindSongList(s));
        }
//       for(String s:FindSongList.getArrayList1()){
//           System.out.println(s);
//       }
    }


}
