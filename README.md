Collaborated with Mai Hang and Susan Thao Vang on 1/2/24 during class hours. 
OpenAI. "ChatGPT." OpenAI, OpenAI, 2024, www.openai.com/chatgpt. Accessed 05 Jan. 2025. 
Mai and Susan were able to help me code most of the terminal/frames on 01/02/24. I used ChatGPT to help debug and code the frames for
**# Rename the blurb, launched_at, and deadline columns, # Format the launched_date and end_date columns to datetime format, and our instructor Thomas helped with coding # Iterate through the contact_info_df and convert each row to a dictionary. On 01/05/25 Susan and I continue to collaborate. I created a EDR using QuickDBD going off of the CVS files I exported for campaign, category, contacts, and subcategory. There was already a crowdfunding CSV file so I assumed that was the file to use for the EDR board. I exported the QuickDBD onto my desktop and then opened up PG Admin 4. I created a new data base called crowdfunding_db and imported my QuickDBD board. On 01/06/24 during class Mai suggested to run each table by them selves in order for them to load into the schema. Once the tables loaded I imported the CSV files of each category into their correct table. After exporting the files to CSV I discovered that I didn't have a new one for Crowdfunding, I went back to the ETL_Mini_Project_Code.pynb to review it and sure enough their wasn't any frames directing me to code an export for a crowdfunding CSV file. So I add a new frame to export for the Crowdfunding CSV file. Once I have it, I tried loading it into the schema in PG Admin 4 in my crowdfunding table but it fails. I decided to move on after a few failed attemps. I then used the SELECT/FROM function to call the tables to make sure the data was being retrieved. I then pushed my updates to my project 2 repository. 

Instructions to use program in PG Admin 4
1. open pg admin 4
2. using your mouse right click on databases and then "create" to create a new database. Name that database "crowdfunding_db".
3. in your crowdfunding_db click on schemas to ensure you're in the correct area when querrying, then create a new query using the query tool. 
4. click on the folder icon to import the crowdfunding_db_schema on your desk top.
5. once imported run each table separately by highlighting the individual table codes and pressing the play button. the tables will appear in your schema under tables.
6. under the tables tab, right click on the first table and select "import/export data" to import your CSV file.
7. do that for the next 4 tables.
8. once the CSV files containing the data has been imported you can then call the data by typing SELECT * FROM <Name of table> into the query.  
