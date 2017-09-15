﻿SET ANSI_NULLS              ON;
SET ANSI_PADDING            ON;
SET ANSI_WARNINGS           ON;
SET ANSI_NULL_DFLT_ON       ON;
SET CONCAT_NULL_YIELDS_NULL ON;
SET QUOTED_IDENTIFIER       ON;
go

-- Views
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='dbo' AND TABLE_NAME='RequestResponse' AND TABLE_TYPE='VIEW')
    DROP VIEW dbo.RequestResponse;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='dbo' AND TABLE_NAME='APIMErrorDetail' AND TABLE_TYPE='VIEW')
    DROP VIEW dbo.APIMErrorDetail;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='dbo' AND TABLE_NAME='RequestSummary' AND TABLE_TYPE='VIEW')
    DROP VIEW dbo.RequestSummary;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='dbo' AND TABLE_NAME='vw_date' AND TABLE_TYPE='VIEW')
    DROP VIEW dbo.vw_date;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='dbo' AND TABLE_NAME='ApiSummary' AND TABLE_TYPE='VIEW')
    DROP VIEW dbo.ApiSummary;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='dbo' AND TABLE_NAME='OperationSummary' AND TABLE_TYPE='VIEW')
    DROP VIEW dbo.OperationSummary;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='dbo' AND TABLE_NAME='ProductSummary' AND TABLE_TYPE='VIEW')
    DROP VIEW dbo.ProductSummary;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='dbo' AND TABLE_NAME='SubscriptionSummary' AND TABLE_TYPE='VIEW')
    DROP VIEW dbo.SubscriptionSummary;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='dbo' AND TABLE_NAME='AllRequestData' AND TABLE_TYPE='VIEW')
    DROP VIEW dbo.AllRequestData;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='dbo' AND TABLE_NAME='VisualOperationCallVolume' AND TABLE_TYPE='VIEW')
    DROP VIEW dbo.VisualOperationCallVolume;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='dbo' AND TABLE_NAME='VisualCallProbabilityEdgeList' AND TABLE_TYPE='VIEW')
    DROP VIEW dbo.VisualCallProbabilityEdgeList;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='dbo' AND TABLE_NAME='VisualIPEdgeCounts' AND TABLE_TYPE='VIEW')
    DROP VIEW dbo.VisualIPEdgeCounts;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='dbo' AND TABLE_NAME='VisualFreqHour' AND TABLE_TYPE='VIEW')
    DROP VIEW dbo.VisualFreqHour;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='dbo' AND TABLE_NAME='VisualFreqMinute' AND TABLE_TYPE='VIEW')
    DROP VIEW dbo.VisualFreqMinute;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='dbo' AND TABLE_NAME='VisualFreqSecond' AND TABLE_TYPE='VIEW')
    DROP VIEW dbo.VisualFreqSecond;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='dbo' AND TABLE_NAME='IPAddressSummary' AND TABLE_TYPE='VIEW')
    DROP VIEW dbo.IPAddressSummary;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='dbo' AND TABLE_NAME='SubscriptionIPAddress' AND TABLE_TYPE='VIEW')
    DROP VIEW dbo.SubscriptionIPAddress;

-- Tables
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='dbo' AND TABLE_NAME='Request' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE dbo.Request;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='dbo' AND TABLE_NAME='Response' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE dbo.Response;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='dbo' AND TABLE_NAME='Error' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE dbo.Error;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='dbo' AND TABLE_NAME='CallExtendedEdgeList' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE dbo.CallExtendedEdgeList;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='dbo' AND TABLE_NAME='CallExtendedEdgeList_STAGE' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE dbo.CallExtendedEdgeList_STAGE;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='dbo' AND TABLE_NAME='CallProbabilityEdgeList' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE dbo.CallProbabilityEdgeList;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='dbo' AND TABLE_NAME='CallProbabilityEdgeList_STAGE' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE dbo.CallProbabilityEdgeList_STAGE;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='dbo' AND TABLE_NAME='FFT' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE dbo.FFT;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='dbo' AND TABLE_NAME='FFT_STAGE' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE dbo.FFT_STAGE;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='dbo' AND TABLE_NAME='Date' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE dbo.[Date];
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='dbo' AND TABLE_NAME='GeoLite2-City-Blocks-IPv4' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE dbo.[GeoLite2-City-Blocks-IPv4];

-- Stored procedures
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE ROUTINE_SCHEMA='dbo' AND ROUTINE_NAME='EdgeTablesSwap' AND ROUTINE_TYPE='PROCEDURE')
    DROP PROCEDURE dbo.EdgeTablesSwap;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE ROUTINE_SCHEMA='dbo' AND ROUTINE_NAME='FFTTableSwap' AND ROUTINE_TYPE='PROCEDURE')
    DROP PROCEDURE dbo.FFTTableSwap;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE ROUTINE_SCHEMA='dbo' AND ROUTINE_NAME='GetDistinctIpAddressesInWindow' AND ROUTINE_TYPE='PROCEDURE')
    DROP PROCEDURE dbo.GetDistinctIpAddressesInWindow;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE ROUTINE_SCHEMA='dbo' AND ROUTINE_NAME='GetRequestsByIpAddressInWindow' AND ROUTINE_TYPE='PROCEDURE')
    DROP PROCEDURE dbo.GetRequestsByIpAddressInWindow;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE ROUTINE_SCHEMA='dbo' AND ROUTINE_NAME='FFTDataExtraction' AND ROUTINE_TYPE='PROCEDURE')
    DROP PROCEDURE dbo.FFTDataExtraction;
