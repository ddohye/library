package multi.project.library;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StoreServiceImpl implements StoreService{
	@Autowired
	StoreDAO storeDAO;

	public List<StoreVO> selectAllWithPage(int page) {
		return storeDAO.selectAllWithPage(page);
	}

	public int selectAllCnt() { //전체갯수 출력
		return storeDAO.selectAllCnt();
	}

	public StoreVO selectOneWithStNum(String stnum) {
		return storeDAO.selectOneWithStNum(stnum);
	}

}
