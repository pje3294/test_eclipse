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

	// �α��� ��, ȸ�� Ȯ�� �޼���
	public int isMem(MemberVO vo) {
		
		/*if(vo.getUserID().equals(getDatas())&& vo.getUserPW().equals(datas)) {
			return true;
		}else {*/
		
		for(MemberVO data: datas) {
			if(data.getUserID().equals(vo.getUserID())) {
				if(data.getUserPW().equals(vo.getUserPW())) {
					return 1; //�α��μ���
				}
				else {
					return -1; //���̵�� ������, ��й�ȣ�� ����ġ
				}
			}
		}
			return 0; // �ش� ���̵� ���� 
			
		
	}

}
