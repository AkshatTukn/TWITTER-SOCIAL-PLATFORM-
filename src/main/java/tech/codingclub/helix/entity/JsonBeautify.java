package tech.codingclub.helix.entity;

public class JsonBeautify {
    public static void main(String[] args) {
        String str="{\"batchcomplete\":\"\",\"continue\":{\"gpsoffset\":6,\"continue\":\"gpsoffset||\"},\"query\":{\"pages\":{\"17863395\":{\"pageid\":17863395,\"ns\":0,\"title\":\"How to Be\",\"index\":4,\"pageprops\":{\"displaytitle\":\"<i>How to Be</i>\"},\"description\":\"2008 film by Oliver Irving\",\"descriptionsource\":\"central\"},\"46532873\":{\"pageid\":46532873,\"ns\":0,\"title\":\"How to Be Single\",\"index\":2,\"pageprops\":{\"displaytitle\":\"<i>How to Be Single</i>\"},\"description\":\"2016 film by Christian Ditter\",\"descriptionsource\":\"central\"},\"51059288\":{\"pageid\":51059288,\"ns\":0,\"title\":\"How to Be a Human Being\",\"index\":6,\"pageprops\":{\"displaytitle\":\"<i>How to Be a Human Being</i>\"},\"description\":\"2016 studio album by Glass Animals\",\"descriptionsource\":\"local\"},\"52660802\":{\"pageid\":52660802,\"ns\":0,\"title\":\"How to Be a Latin Lover\",\"index\":3,\"pageprops\":{\"displaytitle\":\"<i>How to Be a Latin Lover</i>\"},\"description\":\"2017 film by Ken Marino\",\"descriptionsource\":\"central\"},\"57915356\":{\"pageid\":57915356,\"ns\":0,\"title\":\"How to Build a Girl\",\"index\":5,\"pageprops\":{\"displaytitle\":\"<i>How to Build a Girl</i>\"},\"description\":\"American-British comedy film, directed by Coky Giedroyc\",\"descriptionsource\":\"central\"},\"63673997\":{\"pageid\":63673997,\"ns\":0,\"title\":\"How to Buy a Friend\",\"index\":1,\"pageprops\":{\"displaytitle\":\"<i>How to Buy a Friend</i>\"},\"description\":\"2020 South Korean television series\",\"descriptionsource\":\"local\"}}}}\n";
        String[] str1=str.split("\"title\":\"");
        for(String s:str1){
            System.out.println(s);
        }
    }
}
