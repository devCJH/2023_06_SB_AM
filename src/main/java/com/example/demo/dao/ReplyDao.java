package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.example.demo.vo.Reply;

@Mapper
public interface ReplyDao {

	@Insert("""
			INSERT INTO reply
				SET regDate = NOW()
					, updateDate = NOW()
					, memberId = #{loginedMemberId}
					, relTypeCode = #{relTypeCode}
					, relId = #{relId}
					, `body` = #{body}
			""")
	void writeReply(int loginedMemberId, String relTypeCode, int relId, String body);

	@Select("""
			SELECT R.*, M.nickname AS writerName 
				FROM reply AS R
				INNER JOIN `member` AS M
				ON R.memberId = M.id
				WHERE R.relTypeCode = #{relTypeCode}
				AND R.relId = #{relId}
			""")
	List<Reply> getReplies(String relTypeCode, int relId);

	@Select("""
			SELECT *
				FROM reply
				WHERE id = #{id}
			""")
	Reply getReply(int id);

	@Delete("""
			DELETE FROM reply
				WHERE id = #{id}
			""")
	void deleteReply(int id);

	@Update("""
			UPDATE reply
				SET updateDate = NOW()
					, `body` = #{body}
				WHERE id = #{id}
			""")
	void modifyReply(int id, String body);
	
}
