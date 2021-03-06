SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- vTimeSeries view supports the creation of time series data mining models.
--      - Replaces predecessor model with successor model.
--      - Abbreviates model names to improve view in mining model viewer
--      - Concatenates model and region so that table only has one input.
--      - Creates date series field indexed to start of month for use in prediction.

CREATE VIEW [dbo].[vTimeSeries] 
AS
    SELECT 
        CASE [Model] 
            WHEN 'Mountain-100' THEN 'M200' 
            WHEN 'Road-150' THEN 'R250' 
            WHEN 'Road-650' THEN 'R750' 
            WHEN 'Touring-1000' THEN 'T1000' 
            ELSE Left([Model], 1) + Right([Model], 3) 
        END + ' ' + [Region] AS [ModelRegion] 
        ,(Convert(Integer, [CalendarYear]) * 100) + Convert(Integer, [Month]) AS [TimeIndex] 
        ,Sum([Quantity]) AS [Quantity] 
        ,Sum([Amount]) AS [Amount]
		,CalendarYear
		,[Month]
        ,dateadd(Month, [Month]-1, cast([CalendarYear] as datetime)) as DateSeries
    FROM 
        [dbo].[vDMPrep] 
    WHERE 
        [Model] IN ('Mountain-100', 'Mountain-200', 'Road-150', 'Road-250', 
            'Road-650', 'Road-750', 'Touring-1000') 
    GROUP BY 
        CASE [Model] 
            WHEN 'Mountain-100' THEN 'M200' 
            WHEN 'Road-150' THEN 'R250' 
            WHEN 'Road-650' THEN 'R750' 
            WHEN 'Touring-1000' THEN 'T1000' 
            ELSE Left(Model,1) + Right(Model,3) 
        END + ' ' + [Region], 
        (Convert(Integer, [CalendarYear]) * 100) + Convert(Integer, [Month]),
		CalendarYear,
		[Month],
		dateadd(Month, [Month]-1, cast([CalendarYear] as datetime)) 
;
GO
