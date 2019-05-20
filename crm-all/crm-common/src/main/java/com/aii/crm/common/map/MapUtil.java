package com.aii.crm.common.map;

import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import java.util.Map;
import java.util.Set;

public class MapUtil {

	private MapUtil() {
	}

	/**
	 * 取Map集合的并集
	 *
	 * @param map1 大集合
	 * @param map2 小集合
	 * @return 两个集合的并集
	 */
	public static <E,T> Map<E, T> getUnionSet(Map<E, T> map1, Map<E, T> map2) {
		Set<E> bigMapKey = map1.keySet();
		Set<E> smallMapKey = map2.keySet();
		Set<E> differenceSet = Sets.union(bigMapKey, smallMapKey);
		Map<E, T> result = Maps.newHashMap();
		for (E key : differenceSet) {
			if (map1.containsKey(key)) {
				result.put(key, map1.get(key));
			} else {
				result.put(key, map2.get(key));
			}
		}
		return result;
	}

	/**
	 * 取Map集合的差集
	 *
	 * @param map1   大集合
	 * @param map2 小集合
	 * @return 两个集合的差集
	 */
	public static <E,T> Map<E, T> getDifferenceSet(Map<E, T> map1, Map<E, T> map2) {
		Set<E> bigMapKey = map1.keySet();
		Set<E> smallMapKey = map2.keySet();
		Set<E> differenceSet = Sets.difference(bigMapKey, smallMapKey);
		Map<E, T> result = Maps.newHashMap();
		for (E key : differenceSet) {
			result.put(key, map1.get(key));
		}
		return result;
	}

	/**
	 * 取Map集合的交集（String,String）
	 *
	 * @param map1 大集合
	 * @param map2 小集合
	 * @return 两个集合的交集
	 */
	public static <E,T> Map<E, T> getIntersectionSet(Map<E, T> map1, Map<E, T> map2) {
		Set<E> bigMapKey = map1.keySet();
		Set<E> smallMapKey = map2.keySet();
		Set<E> differenceSet = Sets.intersection(bigMapKey, smallMapKey);
		Map<E, T> result = Maps.newHashMap();
		for (E key : differenceSet) {
			result.put(key, map1.get(key));
		}
		return result;
	}

}
