package day04;

import java.util.ArrayList;

public class MemberDAO {
	ArrayList<MemberVO> datas = new ArrayList<MemberVO>();

	MemberVO vo = new MemberVO();

	public ArrayList<MemberVO> getDatas() {
		return datas;
	}

	public void addMember(MemberVO vo) {
		datas.add(vo);
	}

	// 로그인 시, 회원 확인 메서드
	public int isMem(MemberVO vo) {
		
		/*if(vo.getUserID().equals(getDatas())&& vo.getUserPW().equals(datas)) {
			return true;
		}else {*/
		
		for(MemberVO data: datas) {
			if(data.getUserID().equals(vo.getUserID())) {
				if(data.getUserPW().equals(vo.getUserPW())) {
					return 1; //로그인성공
				}
				else {
					return -1; //아이디는 같으나, 비밀번호가 불일치
				}
			}
		}
			return 0; // 해당 아이디 없음 
			
		
	}

}
