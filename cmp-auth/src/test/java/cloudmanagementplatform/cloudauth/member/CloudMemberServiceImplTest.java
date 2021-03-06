package cloudmanagementplatform.cloudauth.member;

import cmpauth.member.*;
import org.junit.Test;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Optional;

/**
 * @author agj017@gmail.com
 * @since 2022/02/21
 */
public class CloudMemberServiceImplTest {

    CloudMemberService cloudMemberService;

    @Autowired
    CloudMemberRepository cloudMemberRepository;

    @BeforeEach
    public void beforeEach(){
        cloudMemberService = new CloudMemberServiceImpl(cloudMemberRepository);
    }


    @Test
    public void save() {

        CloudMember admin = new CloudMember();
        admin.setUsername("test");
        admin.setPassword("test");
        admin.setName("someone");
        admin.setStatus(MemberStatus.MEMBER);
        admin.setRole(MemberRole.ROLE_ADMIN);

        Long adminId = cloudMemberService.save(admin);
        Optional<CloudMember> byId = cloudMemberRepository.findById(adminId);
        CloudMember cloudMember = byId.orElse(null);

        Assertions.assertEquals("test", cloudMember.getUsername());



    }
}