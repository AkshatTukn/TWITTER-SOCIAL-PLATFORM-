package tech.codingclub.helix.utility;

import java.util.concurrent.*;
public class TaskManagerCallable {

    private int threadCount;
    private ExecutorService executorService;

    public TaskManagerCallable(int threadCount) {
        this.threadCount = threadCount;
        this.executorService = Executors.newFixedThreadPool(threadCount);

    }

    public Future waitTillQueueIsFreeAndAddTask(Callable callable) throws InterruptedException {
        while (getQueueSize() >= threadCount) {
            try {
                System.out.println("Sleeping");
                Thread.currentThread().sleep(1000);

            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }

       return executorService.submit(callable);
    }




    private int getQueueSize() {
        ThreadPoolExecutor executor = (ThreadPoolExecutor) (executorService);
        return executor.getQueue().size();
    }

    public ExecutorService getExecutorService(){
        return this.executorService;
    }
}
