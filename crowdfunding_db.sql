-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
Drop table if exists "crowdfunding"
Drop table if exists "campaign"
Drop table if exists "category"
Drop table if exists "contacts"
Drop table if exists "subcategory"


CREATE TABLE "crowdfunding" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar   NOT NULL,
    "blurb" varchar   NOT NULL,
    "goal" int   NOT NULL,
    "pledged" int   NOT NULL,
    "outcome" varchar   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar   NOT NULL,
    "currency" varchar   NOT NULL,
    "launched_at" int   NOT NULL,
    "deadline" int   NOT NULL,
    "staff_pic" boolean   NOT NULL,
    "spotlight" boolean   NOT NULL,
    "category&subcategory" varchar   NOT NULL,
    CONSTRAINT "pk_crowdfunding" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "campaign" (
    "cf_id" int   NOT NULL,
    "contac_id" int   NOT NULL,
    "company_name" varchar   NOT NULL,
    "discription" varchar   NOT NULL,
    "goal" varchar   NOT NULL,
    "pledged" varchar   NOT NULL,
    "outcome" varchar   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar   NOT NULL,
    "currency" varchar   NOT NULL,
    "launch_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" int   NOT NULL,
    "subcategory_id" int   NOT NULL
);

CREATE TABLE "category" (
    "category_id" int   NOT NULL,
    "category" varchar   NOT NULL
);

CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "email" varchar   NOT NULL
);

CREATE TABLE "subcategory" (
    "subcategory_id" int   NOT NULL,
    "subcategory" varchar   NOT NULL
);

ALTER TABLE "crowdfunding" ADD CONSTRAINT "fk_crowdfunding_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_cf_id" FOREIGN KEY("cf_id")
REFERENCES "crowdfunding" ("cf_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contac_id" FOREIGN KEY("contac_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");

SELECT * FROM campaign;

SELECT * FROM category;

SELECT * FROM contacts;

SELECT * FROM subcategory;

SELECT * FROM crowdfunding;
