package tech.codingclub.helix.controller;

import com.google.gson.Gson;
import org.apache.log4j.Logger;
import org.jsoup.Jsoup;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import tech.codingclub.helix.entity.GetSongDetailsDB;
import tech.codingclub.helix.entity.TimeApi;
import tech.codingclub.helix.entity.WikiResult;
import tech.codingclub.helix.entity.WikipediaDownloader;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.swing.text.Document;
//import java.io.File;
//import java.io.FileNotFoundException;
import java.util.Date;
//import java.util.Scanner;

@Controller
@RequestMapping("/song")
public class MainControllerSong extends BaseController {

    private static Logger logger = Logger.getLogger(MainControllerSong.class);


    @RequestMapping(method = RequestMethod.GET, value = "/api")
    public String getSongDetailsHTML(ModelMap modelMap,@RequestParam("song_name") String song_name, HttpServletResponse response, HttpServletRequest request){
        GetSongDetailsDB getSongDetailsDB=new GetSongDetailsDB(song_name);
        getSongDetailsDB.FetchSongDetailsDB();
        String downloadString="";
        modelMap.addAttribute("ALBUM",getSongDetailsDB.getAlbum());
        modelMap.addAttribute("DURATION",getSongDetailsDB.getDuration());
        modelMap.addAttribute("LYRICIST",getSongDetailsDB.getLyricist());
        modelMap.addAttribute("SINGERS",getSongDetailsDB.getSingers());
        modelMap.addAttribute("MUSIC DIRECTOR",getSongDetailsDB.getMusic_director());
        modelMap.addAttribute("NAME",getSongDetailsDB.getSong_name());
        modelMap.addAttribute("DOWNLOAD128",getSongDetailsDB.getDownload_128());
        modelMap.addAttribute("DOWNLOAD256",getSongDetailsDB.getDownload_256());
        modelMap.addAttribute("COVERART",getSongDetailsDB.getImage_url());
       // modelMap.addAttribute("document",getSongDetailsDB.getDocument());

        if(getSongDetailsDB.getDownload_128().contains("stream")){
            downloadString=getSongDetailsDB.getDownload_128().replace("stream","download");
            modelMap.addAttribute("DOWNLOAD",downloadString);
        }
        return "songsapi";
    }
    @RequestMapping(method = RequestMethod.GET, value = "/search")
    public String getWikiResultHTML(ModelMap modelMap,HttpServletResponse response, HttpServletRequest request) {
        return "songsapi2";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/handle")
    public
    @ResponseBody
    String handleEncrypt(@RequestBody String data, HttpServletRequest request, HttpServletResponse response) {
        return "ok";
    }
}
