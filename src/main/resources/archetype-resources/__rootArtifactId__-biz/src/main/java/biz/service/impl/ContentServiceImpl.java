#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
package ${package}.biz.service.impl;

import com.github.pagehelper.PageHelper;
import ${package}.biz.service.AttachmentService;
import ${package}.biz.service.ContentService;
import ${package}.biz.util.StringUtil;
import ${package}.model.annotation.CacheDelete;
import ${package}.model.annotation.CacheGetOrSave;
import ${package}.model.annotation.LogTime;
import ${package}.model.constants.AppConstants;
import ${package}.model.vo.Attachment;
import ${package}.model.vo.Content;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author kangyonggan
 * @since 2017/1/21
 */
@Service
public class ContentServiceImpl extends BaseService<Content> implements ContentService {

    @Autowired
    private AttachmentService attachmentService;

    @Override
    @LogTime
    public List<Content> searchContents(int pageNum, String template, String title) {
        Example example = new Example(Content.class);
        Example.Criteria criteria = example.createCriteria();

        if (StringUtils.isNotEmpty(template)) {
            criteria.andEqualTo("template", template);
        }
        if (StringUtils.isNotEmpty(title)) {
            criteria.andLike("title", StringUtil.toLikeString(title));
        }
        example.setOrderByClause("id desc");

        PageHelper.startPage(pageNum, AppConstants.PAGE_SIZE);
        return super.selectByExample(example);
    }

    @Override
    @LogTime
    public void saveContentWithAttachments(Content content, List<Attachment> attachments) {
        super.insertSelective(content);

        if (attachments != null && !attachments.isEmpty()) {
            attachmentService.saveAttachments(content.getId(), attachments);
        }
    }

    @Override
    @LogTime
    @CacheGetOrSave("content:id:{0}")
    public Content findContentById(Long id) {
        return super.selectByPrimaryKey(id);
    }

    @Override
    @LogTime
    @CacheDelete("content:id:{0:id}")
    public void updateContentWithAttachments(Content content, List<Attachment> attachments) {
        super.updateByPrimaryKeySelective(content);

        if (attachments != null && !attachments.isEmpty()) {
            attachmentService.saveAttachments(content.getId(), attachments);
        }
    }

    @Override
    @LogTime
    @CacheDelete("content:id:{0}")
    public void deleteContent(Long id) {
        super.deleteByPrimaryKey(id);
    }
}
