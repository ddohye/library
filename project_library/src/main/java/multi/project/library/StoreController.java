package multi.project.library;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.SystemEnvironmentPropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StoreController {
	@Autowired
	StoreService service;
	
	@RequestMapping(value="/store", method=RequestMethod.GET)
	public ModelAndView getStoreAllPage(
			@RequestParam(value="page", defaultValue="1") String page){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("store");
		List<StoreVO> list = service.selectAllWithPage(Integer.parseInt(page));
		mv.addObject("storeList", list);
		
		int cntAll = service.selectAllCnt(); //모든 데이터 갯수
		int pageCnt = 1;
		if(cntAll/10 == 0){ //한번에 나누어 떨어지면
			pageCnt = cntAll/10; //한페이지에 10개씩 보여줄 때 
		}
		else{ //10의 배수 아닐경우 11, 12 ...
			pageCnt = cntAll/10 + 1;
		}
		mv.addObject("pageCnt", pageCnt);
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/store.stnum")
	public StoreVO getStoreOneNum(String stnum){
		System.out.println(stnum);
		StoreVO storevo = service.selectOneWithStNum(stnum);
		System.out.println(storevo);
		return storevo;
	}
	
	
}
