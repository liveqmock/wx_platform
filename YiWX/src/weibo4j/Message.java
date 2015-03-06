package weibo4j;

import weibo4j.model.PostParameter;
import weibo4j.model.WeiboException;
import weibo4j.org.json.JSONObject;
import weibo4j.util.WeiboConfig;

public class Message extends Weibo {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public JSONObject SendDirectMessageByUID(String text, String uid)
			throws WeiboException {
		// //https://api.weibo.com/2/direct_messages/new.json
		return client.post(
				WeiboConfig.getValue("baseURL") + "direct_messages/new.json",
				new PostParameter[] { new PostParameter("text", text),
						new PostParameter("uid", uid), }).asJSONObject();
	}

	public JSONObject SendDirectMessageByScreenName(String text, String screen_name)
			throws WeiboException {
		return client.post(
				WeiboConfig.getValue("baseURL") + "direct_messages/new.json",
				new PostParameter[] { new PostParameter("text", text),
						new PostParameter("screen_name", screen_name), })
				.asJSONObject();
	}
}
