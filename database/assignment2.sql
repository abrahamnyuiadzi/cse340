

/*

INSERTING THE DATA TO THE ACCOUNT TABLE 
*/
INSERT INTO public.account(account_firstname,account_lastname,account_email,account_password)
VALUES(Tony,Stark,tony@starkent.com,Iam1ronM@n);
/*
MODIFY  THE DATA TO THE ACCOUNT TABLE 
*/
UPDATE account
SET account_type = Admin;
/*3. DELETE THE DATA TO THE ACCOUNT TABLE 
*/
 DELETE from account
 WHERE account_firstname=Tony AND account_lastname =Stark 
 AND account_email=tony@starkent.com AND  account_password =Iam1ronM@n
/*
4
*/
UPDATE 
account
SET 
  account_type = REPLACE(account_type,small interior , a huge interior) 
/*
5
*/
SELECT inv_make ,inv_model,classification_name
FROM inventory 
inner JOIN  classsification 
ON inventory_id =classification_id 
WHERE classification_name = sport 
/*
6
*/
UPDATE 
inv_image,inv_thumbnail 
SET 
  inv_image = REPLACE(inv_image, /image/inv_model.jpg , /images/vehicles/inv_model.jpg) 
   inv_thumbnail = REPLACE(inv_thumbnail, /image/inv_model.jpg , /images/vehicles/inv_model.jpg) 






