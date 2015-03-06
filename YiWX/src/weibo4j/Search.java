package weibo4j;

import java.net.URLEncoder;

import weibo4j.model.Paging;
import weibo4j.model.PostParameter;
import weibo4j.model.Status;
import weibo4j.model.StatusWapper;
import weibo4j.model.WeiboException;
import weibo4j.org.json.JSONArray;
import weibo4j.org.json.JSONObject;
import weibo4j.util.WeiboConfig;

public class Search extends Weibo {
	// ---------------------------------搜索接口-----------------------------------------------

	/**
	 * 
	 */
	private static final long serialVersionUID = 1060145395982699914L;

	public JSONArray searchSuggestionsUsers(String q) throws WeiboException {
		return client.get(
				WeiboConfig.getValue("baseURL")
						+ "search/suggestions/users.json",
				new PostParameter[] { new PostParameter("q", q) })
				.asJSONArray();
	}

	public JSONArray searchSuggestionsUsers(String q, int count)
			throws WeiboException {
		return client.get(
				WeiboConfig.getValue("baseURL")
						+ "search/suggestions/users.json",
				new PostParameter[] { new PostParameter("q", q),
						new PostParameter("count", count) }).asJSONArray();
	}

	public JSONArray searchSuggestionsStatuses(String q) throws WeiboException {
		return client.get(
				WeiboConfig.getValue("baseURL")
						+ "search/suggestions/statuses.json",
				new PostParameter[] { new PostParameter("q", q) })
				.asJSONArray();
	}

	public JSONArray searchSuggestionsStatuses(String q, int count)
			throws WeiboException {
		return client.get(
				WeiboConfig.getValue("baseURL")
						+ "search/suggestions/statuses.json",
				new PostParameter[] { new PostParameter("q", q),
						new PostParameter("count", count) }).asJSONArray();
	}

	public JSONArray searchSuggestionsCompanies(String q) throws WeiboException {
		return client.get(
				WeiboConfig.getValue("baseURL")
						+ "search/suggestions/companies.json",
				new PostParameter[] { new PostParameter("q", q) })
				.asJSONArray();
	}

	public JSONArray searchSuggestionsCompanies(String q, int count)
			throws WeiboException {
		return client.get(
				WeiboConfig.getValue("baseURL")
						+ "search/suggestions/companies.json",
				new PostParameter[] { new PostParameter("q", q),
						new PostParameter("count", count) }).asJSONArray();
	}

	public JSONArray searchSuggestionsApps(String q) throws WeiboException {
		return client.get(
				WeiboConfig.getValue("baseURL")
						+ "search/suggestions/apps.json",
				new PostParameter[] { new PostParameter("q", q) })
				.asJSONArray();
	}

	public JSONArray searchSuggestionsApps(String q, int count)
			throws WeiboException {
		return client.get(
				WeiboConfig.getValue("baseURL")
						+ "search/suggestions/apps.json",
				new PostParameter[] { new PostParameter("q", q),
						new PostParameter("count", count) }).asJSONArray();
	}

	public JSONArray searchSuggestionsSchools(String q) throws WeiboException {
		return client.get(
				WeiboConfig.getValue("baseURL")
						+ "search/suggestions/schools.json",
				new PostParameter[] { new PostParameter("q", q) })
				.asJSONArray();
	}

	public JSONArray searchSuggestionsSchools(String q, int count, int type)
			throws WeiboException {
		return client.get(
				WeiboConfig.getValue("baseURL")
						+ "search/suggestions/schools.json",
				new PostParameter[] { new PostParameter("q", q),
						new PostParameter("count", count),
						new PostParameter("type", type) }).asJSONArray();
	}

	public JSONArray searchSuggestionsAt_users(String q, int type)
			throws WeiboException {
		return client.get(
				WeiboConfig.getValue("baseURL")
						+ "search/suggestions/at_users.json",
				new PostParameter[] { new PostParameter("q", q),
						new PostParameter("type", type) }).asJSONArray();
	}

	public JSONArray searchSuggestionsAt_users(String q, int count, int type,
			int range) throws WeiboException {
		return client.get(
				WeiboConfig.getValue("baseURL")
						+ "search/suggestions/at_users.json",
				new PostParameter[] { new PostParameter("q", q),
						new PostParameter("count", count),
						new PostParameter("type", type),
						new PostParameter("range", range) }).asJSONArray();
	}

	public JSONObject searchStatus(String q, int filter_ori, int filter_pic,
			int fuid, int province, int city, int starttime, int endtime,
			int count, int page, boolean needcount) throws WeiboException {
		return client.get(
				WeiboConfig.getValue("baseURL") + "search/statuses.json",
				new PostParameter[] {
						new PostParameter("q", q),
						new PostParameter("filter_ori", filter_ori),
						new PostParameter("filter_pic", filter_pic),
						new PostParameter("fuid", fuid),
						new PostParameter("province", province),
						new PostParameter("city", city),
						new PostParameter("starttime", starttime),
						new PostParameter("endtime", endtime),
						new PostParameter("count", count),
						new PostParameter("page", page),
						new PostParameter("needcount", needcount ? "true"
								: "false") }).asJSONObject();
	}

	public JSONObject searchStatus(String q, int filter_ori, int filter_pic,
	int count, int page, boolean needcount) throws WeiboException {
		//StringBuffer stringBuffer = new StringBuffer();
		return client.get(
				WeiboConfig.getValue("baseURL") + "search/statuses.json",
				new PostParameter[] {
						new PostParameter("q", q),
						new PostParameter("filter_ori", filter_ori),
						new PostParameter("filter_pic", filter_pic),
						new PostParameter("count", count),
						new PostParameter("page", page),
						new PostParameter("needcount", needcount ? "true"
								: "false") }).asJSONObject();
	}
	
	public StatusWapper searchStatuses(String q, int filter_ori, int filter_pic,
			int count, int page, String starttime,boolean needcount) throws WeiboException {
		return Status.constructWapperStatus(client.get(
				WeiboConfig.getValue("baseURL") + "search/statuses.json",
				new PostParameter[] {
						new PostParameter("q", q),
						new PostParameter("starttime", starttime),
						new PostParameter("filter_ori", filter_ori),
						new PostParameter("filter_pic", filter_pic),
						new PostParameter("count", count),
						new PostParameter("page", page),
						new PostParameter("needcount", needcount ? "true"
								: "false") }));
	}
	
	
	/*
public StatusWapper getUserTimelineByName(String screen_name, Paging page,Integer base_app, Integer feature) throws WeiboException {
		return Status.constructWapperStatus(client.get(
						WeiboConfig.getValue("baseURL")	+ "statuses/user_timeline.json",
						new PostParameter[] {
								new PostParameter("screen_name", screen_name),
								new PostParameter("base_app", base_app.toString()),
								new PostParameter("feature", feature.toString()) },
						page));
	} 
	*/
	
	public JSONObject searchContent(String q,boolean needcount,int sort,int count,int page)throws WeiboException
	{
		return client.get(
				WeiboConfig.getValue("baseURL") + "search/users.json",
				new PostParameter[] {
						new PostParameter("q", q),
						new PostParameter("needcount", needcount?"true":"false"),
						new PostParameter("sort", sort),
						new PostParameter("count", count),
						new PostParameter("page", page) }).asJSONObject();
	}
}
