package tech.codingclub.helix.global;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class HttpURLConnectionExample {

    //private final static String USER_AGENT = "Mozilla/5.0";

    // HTTP GET request
    public static String sendGet(String urlStr) throws Exception {
        System.setProperty("http.agent","Mozilla/5.0");
        StringBuilder result = new StringBuilder();
        URL url = new URL(urlStr);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        String line;
        while ((line = rd.readLine()) != null) {
            result.append(line);
        }
        rd.close();
        return result.toString();
    }


    public static void main(String[] args) {
        try {
            System.out.println(sendGet("https://codingclub.tech/test-get-request?name=AYUSH"));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}