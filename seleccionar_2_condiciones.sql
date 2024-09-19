USE Estados;

select [Estado]
from [dbo].[Estados]
where [ID_Estado]>30 or [Estado] like 'M%';