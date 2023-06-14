package javaOracleMapCollectionExample;

import java.util.NavigableMap;
import java.util.TreeMap;
import java.util.Map;

public class HashTableExample {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		TreeMap<String, Integer> treeMap = new TreeMap<String, Integer>();
		treeMap.put("apple", 10);
		treeMap.put("forever", 60);
		treeMap.put("description", 40);
		treeMap.put("ever", 50);
		treeMap.put("zoo", 10);
		treeMap.put("base", 20);
		treeMap.put("guess", 70);
		treeMap.put("cherry", 30);
		
		System.out.println("[c-f 사이의 단어 검색");
		NavigableMap<String, Integer> rangeMap = treeMap.subMap("c", true, "f", true);
		for (Map.Entry<String, Integer> entry : rangeMap.entrySet()) {
				System.out.print(entry.getKey() + "-" + entry.getValue() + "페이지 ");
		}
		System.out.println();
	}

}
