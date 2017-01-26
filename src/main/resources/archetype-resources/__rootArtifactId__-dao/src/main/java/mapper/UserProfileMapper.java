#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
package ${package}.mapper;

import ${package}.model.vo.UserProfile;
import org.springframework.stereotype.Repository;

@Repository
public interface UserProfileMapper extends MyMapper<UserProfile> {
}