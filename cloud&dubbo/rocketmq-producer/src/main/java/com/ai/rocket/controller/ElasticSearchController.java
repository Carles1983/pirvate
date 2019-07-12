package com.ai.rocket.controller;

import com.ai.rocket.domain.LogDomain;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.index.query.BoolQueryBuilder;
import org.elasticsearch.search.SearchHits;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.elasticsearch.core.ElasticsearchTemplate;
import org.springframework.data.elasticsearch.core.ResultsExtractor;
import org.springframework.data.elasticsearch.core.query.NativeSearchQueryBuilder;
import org.springframework.data.elasticsearch.core.query.SearchQuery;
import org.springframework.data.elasticsearch.core.query.StringQuery;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author: soane
 * @Date: 2019/7/11
 * @Time: 9:40
 * @Description: TODO
 */
@RestController
@RequestMapping("/")
public class ElasticSearchController {

	@Autowired
	private ElasticsearchTemplate elasticsearchTemplate;

	@RequestMapping(value = "/log", method = RequestMethod.GET)
	public List<LogDomain> listLogInformation(@RequestParam String script){
		Pageable pageable = PageRequest.of(1, 10);
		SearchQuery searchQuery = new NativeSearchQueryBuilder().withIndices("crmbusilog-2019-07-10", "crmbusilog" +
				"-2019-07-11").withPageable(pageable).build();

		List<LogDomain> logList = elasticsearchTemplate.query(searchQuery, response ->  {
				SearchHits hits = response.getHits();
				List<LogDomain> list = new ArrayList<>();
				Arrays.stream(hits.getHits()).forEach(h -> {
					String source = h.getSourceAsString();
					LogDomain domain = JSON.parseObject(source, LogDomain.class);
					list.add(domain);
				});
				return list;
		});
		return logList;
	}

}
