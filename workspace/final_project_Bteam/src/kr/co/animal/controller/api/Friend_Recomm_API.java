package kr.co.animal.controller.api;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Component;

@Component
public class Friend_Recomm_API {
	private HttpURLConnection http; // 요청을 보낼 url주소! => 192.168.0.11:9000/park/shop_recom
	
	// 장고 서버에 요청을 보내는 메서드!
	// 2.
	public void request(String method, String headerName, String headerValue, JSONObject jsonData) throws IOException{
		http.setRequestMethod(method);
		http.setRequestProperty(headerName, headerValue);
		// GET 데이터를 스트림으로 처리 후 서버에 전송
		http.setDoOutput(true);
		// 요청 전송
		PrintWriter printWriter = new PrintWriter(new OutputStreamWriter(http.getOutputStream()));
		printWriter.write(jsonData.toString());
		printWriter.flush();
	}
	
	// 3.
	public List<Map<String, Object>> response() throws IOException{
		BufferedReader bufferedReader = null;
		int status = http.getResponseCode();
		if (status==HttpURLConnection.HTTP_OK) {
			bufferedReader = new BufferedReader(new InputStreamReader(http.getInputStream(),"UTF-8"));
		} else {
			bufferedReader = new BufferedReader(new InputStreamReader(http.getErrorStream()));
		}
		String line;
		StringBuffer response = new StringBuffer();
		while((line = bufferedReader.readLine()) != null) {
			response.append(line);
		}
		bufferedReader.close();
		JSONArray jsonArray = new JSONArray(response.toString());
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
        
        if( jsonArray != null )
        {
            int jsonSize = jsonArray.length();
            for( int i = 0; i < jsonSize; i++ )
            {
                Map<String, Object> map = getMapFromJsonObject(jsonArray.getJSONObject(i));
                list.add( map );
            }
        }
		return list;
	}
	
	// 1.
	public List<Map<String, Object>> restPlatform(String member_id, String apiurl) {
		List<Map<String, Object>> jsonString = null;
		try {
			URL url = new URL(apiurl);
			HttpURLConnection http = (HttpURLConnection) url.openConnection();
			this.http = http;
			JSONObject jsonData = new JSONObject();
			jsonData.put("member_id", member_id);
			request("POST","Content-Type","application/json;charset=UTF-8",jsonData);
			jsonString = response();
			System.out.println("하이이이 jsonString => "+jsonString);
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return jsonString;
	}
	// 3-1.
	@SuppressWarnings("unchecked")
	public Map<String, Object> getMapFromJsonObject( JSONObject jsonObj ){
        Map<String, Object> map = new HashMap<String, Object>();
        
		int animal_num = jsonObj.getInt("ANIMAL_NUM");
		String animal_name = jsonObj.getString("ANIMAL_NAME");
		String member_id = jsonObj.getString("MEMBER_ID");
		String animal_img1 = jsonObj.getString("ANIMAL_IMG1");
		map.put("ANIMAL_NUM", animal_num);
		map.put("ANIMAL_NAME", animal_name);
		map.put("MEMBER_ID", member_id);
		map.put("ANIMAL_IMG1", animal_img1);
		System.out.println("========================");
        return map;
	    }
}
