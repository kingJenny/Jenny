package com.ting.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ting.dao.ClientInfoDAO;
import com.ting.domain.ClientInfoVO;

@Service("clientInfoService")
@Transactional
public class ClientInfoService {
	@Autowired //자동으로 주입하ㅏㄹ수있게하는 스티커
	private SqlSessionTemplate mybatis; //스프링이 만든다음에 나한테 주입
	@Autowired
	private ClientInfoDAO clientInfoDAO;
	
	public ClientInfoVO login(ClientInfoVO clientInfoVO) {
		// VO 넘겨서 로그인 사용자 일치하는 수를 정수로 받음[1,0]
		ClientInfoVO login = clientInfoDAO.login(clientInfoVO);
		
		return login;
	}
	
	public int register(ClientInfoVO clientInfoVO) {
		return clientInfoDAO.register(clientInfoVO);
	}

	// 아이디 중복체크
	public int emailChk(ClientInfoVO clientInfoVO) {
		int result = mybatis.selectOne("com.ting.dao.ClientInfoDAO.emailChk", clientInfoVO);
		return result;
	}
/*
	public String getData() {
		return "I am a boy";
	}

	public List<HashMap<String, Object>> selectAll() {
		return clientInfoDAO.selectAll();
	}

	public void joinMember(HashMap<String, Object> params) {

		if (params.get("pwd").equals(params.get("pwd_CHECK"))) {
			clientInfoDAO.insertMember(params);
		}
	}

	// 회원 한명의 정보를 가져다주는
	public HashMap<String, Object> getMemberInfo(String id) {
		return clientInfoDAO.selectOne(id);
	}
*/


	/*
	 * public void memberUpdate(HashMap<String, Object> params){
	 * 
	 * if(params.get("pwd").equals(params.get("pwd_CHECK"))) { HashMap<String,
	 * Object> record =
	 * clientInfoDAO.selectOne((String)params.get(Constant.Member.USERID));
	 * record.putAll(params); //원래있던거에 내가 받은걸로 수정
	 * clientInfoDAO.updateMember(record); } }
	 */

}
