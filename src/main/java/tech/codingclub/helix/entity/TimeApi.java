package tech.codingclub.helix.entity;

public class TimeApi {
    private String time_str;
    private Long epoch_time;

    public TimeApi(){

    }

    public TimeApi(String time_str, Long epoch_time){
        this.time_str = time_str;

        this.epoch_time = epoch_time;
    }


}
