package com.saturn.action.webdao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saturn.app.db.ListData;
import com.saturn.app.utils.JSONUtils;
import com.saturn.app.web.IAction;
import com.saturn.app.web.IView;
import com.saturn.app.web.view.JsonView;
import com.saturn.website.Content;

public class ContentListByCidAction implements IAction{
	@Override
	public IView execute(HttpServletRequest request,
			HttpServletResponse response) {
		
		String cid = request.getParameter("cid");
		String start = request.getParameter("size");
		String offset = request.getParameter("opt");
		Content content = Content.get(cid);
		String pid = content.getParentId();
		
		ListData<Content> data = Content.getByCidByPid(pid, start, offset);
		return new JsonView(JSONUtils.getDataGridJSON(data.getTotal(),
				data.getList()));
	}
	@Override
	public String requestMapping() {
		return "/webdo/article/contentListByCid.do";
	}
}
