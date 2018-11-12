package gol;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class Gol {

	public static void main(String[] args) throws IOException {
		StringBuffer str = new StringBuffer();
		String fileStr = null;
		String fileReadline = null;
		int interval = 63;
		
		for(int i=0;i<100000;i++) {
			BufferedWriter out = new BufferedWriter(new FileWriter("C:\\Users\\ASUS\\Desktop\\gol\\go.txt",true));
			for(int j=0;j<100000;j++) {
				str.append(String.valueOf(((int)(Math.random()*2))));
			}
			for(int l = 0,k = 0; l < 1587 ; l++ , k += 63) {
				fileStr = String.valueOf(Long.parseLong(str.substring(k,k+interval),2));
				out.write(fileStr.toString()+" ");
			}
			out.newLine();
			out.flush();
			out.close();
			str.setLength(0);
			fileStr = null;
		}
		
		BufferedReader in = new BufferedReader(new FileReader("C:\\Users\\ASUS\\Desktop\\gol\\go.txt"));
		while((fileReadline = in.readLine())!=null) {
			fileReadline.split(" ");
		}
	}

}
