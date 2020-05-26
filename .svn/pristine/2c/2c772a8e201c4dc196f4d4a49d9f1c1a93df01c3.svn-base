
select a.*, rownum
from(
select calendar_id, day,step, product_id
from calendar
where step=1
order by calendar_id
) a;

create SEQUENCE seq_temp;
insert into calendar(rn)
select seq_temp.nextval
from calendar 
where step=1;

select product_id, rownum, rowt
from t_product;

select t.product_id as pro, c.product_id
from t_product t, calendar c
where t.rowt = c.calendar_id;

update calendar
    set product_id = (select product_id from t_product where t_product.rowt=calendar.calendar_id)
    where step=1;
    
select calendar_id, product_id
from calendar;

update calendar
    set product_id = null;
delete from calendar;
commit;

update t_product
    set account = 110123456789
        , account_bank = '넥스트은행'
        , view_yn = 'Y'
        , total_people=20
        ,apply_people=0
        ,res_yn='Y';


select distinct  spot_name, spot_pic
from calendar
where spot_name is not null
order by spot_name;

create SEQUENCE spot_temp;
drop SEQUENCE spot_temp;

insert into spot(spot_nm, spot_pic)
select distinct  spot_name, spot_pic from calendar where spot_name is not null
;

update spot
    set spot_id = spot_temp.nextval;
commit;

insert into city(city_nm)
select distinct city_name from city_collect;

create SEQUENCE seq_city;
drop SEQUENCE seq_city;
update city
    set city_id = seq_city.nextval
;
update city_collect
    set city_id = (select city.city_id from city where city_collect.city_name = city.city_nm)
;
commit;

update t_product
    set package_id = SUBSTR(product_id,1,7);

insert into t_package(package_id)
select distinct package_id
from t_product;


select CALENDAR.SPOT_PIC 
from T_PRODUCT,t_package, CALENDAR 
where t_package.PACKAGE_ID=T_PRODUCT.PACKAGE_ID 
and CALENDAR.product_id=T_PRODUCT.product_id  
and rownum=1
;

UPDATE t_package
SET
    package_id = (select package_id from t_product where t_package.package_id=t_product.package_id and rownum=1 )
    , package_name = (select product_name from t_product where t_package.package_id=t_product.package_id and rownum=1 )
    , package_price = (select adult_price from t_product where t_package.package_id=t_product.package_id and rownum=1 )
    , package_pic = (select calendar.spot_pic from t_product, calendar where t_package.package_id=t_product.package_id and calendar.product_id=t_product.product_id  and rownum=1 )
    , package_grade = 0
    , total_people = 20
    , notice = (select notice from t_product where t_package.package_id=t_product.package_id and rownum=1 )
    , adult_price = (select adult_price from t_product where t_package.package_id=t_product.package_id and rownum=1 )
    , child_price = (select child_price from t_product where t_package.package_id=t_product.package_id and rownum=1 )
    , baby_price = (select adult_price from t_product where t_package.package_id=t_product.package_id and rownum=1 )
    , account_bank = (select account_bank from t_product where t_package.package_id=t_product.package_id and rownum=1 )
    , account = (select account from t_product where t_package.package_id=t_product.package_id and rownum=1 )
    , package_period = (select package_period from t_product where t_package.package_id=t_product.package_id and rownum=1 )
    , air_start = (select air_start from t_product where t_package.package_id=t_product.package_id and rownum=1 )
    , air_end = (select air_end from t_product where t_package.package_id=t_product.package_id and rownum=1 )
;
update t_package
    set view_yn = 'Y';
    
update t_product
    set account = '110123456789';
update t_package
    set account = '110123456789';

update t_package
    set package_region = 'EUW'
where substr(package_id,1,2) = 'EW';
update t_package
    set package_region = 'EUE'
where substr(package_id,1,2) = 'EE'
    or substr(package_id,1,2) = 'EK'
    or substr(package_id,1,2) = 'ER';
update t_package
    set package_region = 'EUS'
where substr(package_id,1,2) = 'EM'
    or substr(package_id,1,2) = 'ET';
update t_package
    set package_region = 'EUS'
where substr(package_id,1,2) = 'EN'
    or substr(package_id,1,2) = 'EB';
commit;


    
UPDATE t_package
    SET package_pic = (select calendar.spot_pic 
                                    from  calendar 
                                    where SUBSTR(calendar.product_id,1,7) = t_package.package_id 
                                    and calendar.spot_pic is not null
                                    and rownum=1);

select calendar.spot_pic, SUBSTR(calendar.product_id,1,7), t_package.package_id 
from  calendar, t_package
where SUBSTR(calendar.product_id,1,7) = t_package.package_id 
and calendar.spot_pic is not null
order by t_package.package_id  ;

select calendar.spot_pic 
from calendar
where calendar.spot_pic is not null;

select START_DATE
from t_product
where package_id = 'EWP2301'
order by START_DATE;

select end_date
from t_product
where package_id = 'EWP2301'
order by end_date DESC;

update t_package 
    set package_dep_period1 = (
                                                select min(START_DATE)
                                                from t_product
                                                where t_product.package_id = t_package.package_id)
    , package_dep_period2 = (
                                                select max(end_date)
                                                from t_product
                                                where t_product.package_id = t_package.package_id)
 ;

update t_product
    set air_line_nm = (select air_line_nm  
                                from air_line 
                                where air_line.AIR_LINE_CODE =  substr(air_start,1,2))
;

update calendar
    set spot_id = (select spot.spot_id from spot where calendar.SPOT_NAME =spot.SPOT_NM and rownum=1);
commit;
rollback;

select *
from calendar
where product_id = 'EWP3058-200611KE00'
order by day, step;

insert into calendar2(
    spot_id
    , day
    , calendar_title
    , calendar_content
    , product_id
    , step
    , spot_pic
    , spot_name)
SELECT distinct
    spot_id
    , day
    , calendar_title
    , calendar_content
    , product_id
    , step
    , spot_pic
    , spot_name
FROM
    calendar;

create SEQUENCE seq_cal_temp;
drop SEQUENCE seq_cal_temp;

update calendar2
    set calendar_id = seq_cal_temp.nextval;
    
create sequence seq_res;
drop sequence seq_res;
seq_res.nextval




