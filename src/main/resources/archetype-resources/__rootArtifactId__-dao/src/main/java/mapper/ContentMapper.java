#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
package ${package}.mapper;

import ${package}.model.vo.Content;
import org.springframework.stereotype.Repository;

@Repository
public interface ContentMapper extends MyMapper<Content> {
}