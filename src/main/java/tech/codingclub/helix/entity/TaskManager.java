package tech.codingclub.helix.entity;

import tech.codingclub.helix.entity.FindSongList;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/**
 * Created by Coding Club India.
 */
public class TaskManager {

    private int threadCount;
    private ExecutorService executorService;

    public TaskManager(int threadCount) {
        this.threadCount = threadCount;
        this.executorService = Executors.newFixedThreadPool(threadCount);

    }

    public void waitTillQueueIsFreeAndAddTask(Runnable runnable) throws InterruptedException {
        while (getQueueSize() >= threadCount) {
            try {
                System.out.println("Sleeping");
                Thread.currentThread().sleep(1000);

            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
//        if(FindSongList.count1==428){
//            this.executorService.shutdownNow();
//        }

        addTask(runnable);

        //executorService.awaitTermination(1, TimeUnit.HOURS);
    }

    public void addTask(Runnable runnable) throws InterruptedException {
        this.executorService.submit(runnable);


//        try {
//            this.executorService.awaitTermination(Long.MAX_VALUE, TimeUnit.NANOSECONDS);
//        } catch (InterruptedException e) {
//            e.printStackTrace();
//        }
//        if(FindSongList.count1==428){
//            this.executorService.shutdownNow();
//
//        }
//        try {
//            this.executorService.wait(50000);
//            this.executorService.shutdownNow();
//        } catch (InterruptedException e) {
//            e.printStackTrace();
//        }
//        this.executorService.shutdown();
//        try {
//            if (!this.executorService.awaitTermination(60, TimeUnit.SECONDS)) {
//                this.executorService.shutdownNow();
//            }
//        } catch (InterruptedException ex) {
//            this.executorService.shutdownNow();
//            Thread.currentThread().interrupt();
//        }

    }


    private int getQueueSize() {
        ThreadPoolExecutor executor = (ThreadPoolExecutor) (executorService);
        return executor.getQueue().size();
    }

    public ExecutorService getExecutorService(){
        return this.executorService;
    }
}