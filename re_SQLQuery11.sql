select * from dbo.engagement_data

select engagementid, contentid, campaignid, productid,
upper(replace(contenttype, 'socialmedia', 'Social Media')) as contenttype,
left(viewsclickscombined, CHARINDEX('-', viewsclickscombined)- 1) as views,
right(viewsclickscombined, len(viewsclickscombined)- CHARINDEX('-',viewsclickscombined)) as clicks,
likes,
format(CONVERT(date, engagementdate),'dd.MM.yyyy') as engagementdate
from
dbo.engagement_data
where
ContentType != 'Newsletter';