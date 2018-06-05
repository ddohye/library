package multi.project.library;

import java.util.List;

public interface StoreService {
	List<StoreVO> selectAllWithPage(int page);
	int selectAllCnt();
	StoreVO selectOneWithStNum(String stnum);
}
