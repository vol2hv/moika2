package com.example.moika2.domain;

import com.example.moika2.innerdata.FieldRendering;
import com.example.moika2.innerdata.FieldsTypes;
import lombok.*;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "usr")
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class   User extends BaseEntity<Long> implements UserDetails {
    @NotBlank(message = "Username cannot be empty")
    @Column(unique = true, nullable = false, length = 30)
    @FieldRendering(fildnumber =2)
    private String username;

    @NotBlank(message = "Password cannot be empty")
    @FieldRendering(fildnumber =100,isHidden = true)
    private String password;

    @FieldRendering(fildnumber =3, type = FieldsTypes.BOOLEAN)
    private boolean active;

    @FieldRendering(fildnumber =4)
    @Email(message = "Email is not correct")
    @NotBlank(message = "Email cannot be empty")
    @Column(unique = true, nullable = false, length = 30)
    private String email;

    private String activationCode;

    @FieldRendering(fildnumber =5, type = FieldsTypes.ENUMSET)
    @ElementCollection(targetClass = Role.class, fetch = FetchType.EAGER)
    @CollectionTable(name = "user_role", joinColumns = @JoinColumn(name = "user_id"))
    @Enumerated(EnumType.STRING)
    private Set<Role> roles = new HashSet<>();

    public boolean isAdmin() {
        return roles.contains(Role.ROLE_ADMIN);
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return isActive();
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return getRoles();
    }
}
