delete from user_role;
delete from usr;

INSERT INTO public.usr (id, activation_code, active, email, password, username) VALUES
(1, '', true, 'admin@ya.ru', '$2a$08$1TC/nfQ2AutLTGKj8v9SY.ZM6ZFvo9J/pm6/AMK54vA7d6DPLEVqu', 'admin33');
INSERT INTO public.user_role (user_id, roles) VALUES (1, 'ROLE_TOP_MANAGER');
INSERT INTO public.user_role (user_id, roles) VALUES (1, 'ROLE_CLIENT');
INSERT INTO public.user_role (user_id, roles) VALUES (1, 'ROLE_ADMIN');
INSERT INTO public.user_role (user_id, roles) VALUES (1, 'ROLE_MANAGER');