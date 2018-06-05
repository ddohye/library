package multi.project.library;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class StoreDAO {
	@Autowired
	SqlSession session;
	
	public List<StoreVO> selectAllWithPage(int page){
		return session.selectList("store.allWithPage", page);
	}
	
	public int selectAllCnt(){
		return session.selectOne("store.allCount");
	}
	
	public StoreVO selectOneWithStNum(String stnum){
		return session.selectOne("store.selectStore", stnum);
	}
	
}
