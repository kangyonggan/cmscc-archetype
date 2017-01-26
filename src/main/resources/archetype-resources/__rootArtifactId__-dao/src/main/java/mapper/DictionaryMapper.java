#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
package ${package}.mapper;

import ${package}.model.vo.Dictionary;
import org.springframework.stereotype.Repository;

@Repository
public interface DictionaryMapper extends MyMapper<Dictionary> {
}