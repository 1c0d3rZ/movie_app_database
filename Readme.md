# Movie_App Database

## `It's just a movie selling app database.`
<br>

### <def><mark>How to use it ?</mark></def>

<br>

## <b>To add an user :</b>
<br>

```sql
INSERT INTO `users` (`fullname`, `username`, `gender`) 
VALUES ('', '', '')

-- for gender section, choose between M and F.
-- M for man or male and F for female or girl.

INSERT INTO `entries_date` (`entry_id`, `creation_date`, `modified_date`) VALUES ('', '', NULL) 

--This command before is used to save the creation date of every user and his update date.
```
## <b>To delete an User:</b>
<br>

```sql
DELETE FROM `users` WHERE `users`.`user_id` = user_id; 
```

## <b>To update an user:</b>
<br>

```sql
UPDATE `users` SET `fullname` = '', `username` = '' WHERE `users`.`user_id` = user_id

-- delete all user values that you no want to change
```

## <b>To add a movie:</b>
<br>

```sql
INSERT INTO `movies`(`movie_name`, `author_name`, `description`, `release_date`, `category`) 
VALUES ([value-1],[value-2],[value-3],[value-4],[value-5])
```

## <b>To update a movie:</b>
<br>

```sql
UPDATE `movies` 
    SET `movie_name`=[value-2],
        `author_name`=[value-3],
        `description`=[value-4],`release_date`=[value-5],`category`=[value-6] 
WHERE movie_id = [movie_id]
```

## <b>To delete a movie:</b>
<br>

```sql
DELETE FROM `movies` 
WHERE movie_id = [movie_id]
```

## <b>Requête pour afficher les 3 derniers films ajoutés:</b>
<br>

```sql
SELECT * FROM `movies` 
ORDER BY `movies`.`release_date` DESC
WHERE movie_id<=3
```

### **Thanks to you !**
