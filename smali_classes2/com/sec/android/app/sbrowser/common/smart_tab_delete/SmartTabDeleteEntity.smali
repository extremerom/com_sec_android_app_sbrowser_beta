.class public Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCumulativeCount:I

.field private mCumulativeTime:J

.field private mCumulativeTimePerDay:F

.field private mIsClosed:I

.field private mIsLaunchedFromAssist:I

.field private mIsLaunchedFromExternalApp:I

.field private mIsLaunchedFromLink:I

.field private mIsLaunchedFromLongpressBackground:I

.field private mIsLaunchedFromLongpressForeground:I

.field private mIsLaunchedFromReaderMode:I

.field private mIsLaunchedFromRestoreBackground:I

.field private mIsLaunchedFromRestoreForeground:I

.field private mIsLaunchedFromUI:I

.field private mIsPageTypeApplication:I

.field private mIsPageTypeAudio:I

.field private mIsPageTypeImage:I

.field private mIsPageTypeOthers:I

.field private mIsPageTypeText:I

.field private mIsPageTypeTextHtml:I

.field private mIsPageTypeVideo:I

.field private mLastActiveStartTime:J

.field private mLaunchType:Ljava/lang/String;

.field private mNonImportanceMLPJava:D

.field private mPageType:Ljava/lang/String;

.field private mPeriodOneCount:I

.field private mPeriodOneTime:J

.field private mPeriodThreeCount:I

.field private mPeriodThreeTime:J

.field private mPeriodTwoCount:I

.field private mPeriodTwoTime:J

.field private mPredictedNonImportance:D

.field private mRefreshCount:I

.field private mTabCreationHour:I

.field private mTabCreationTime:J

.field private mTabId:I

.field private mTabUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mLastActiveStartTime:J

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mCumulativeTime:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mCumulativeTimePerDay:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mCumulativeCount:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mRefreshCount:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mTabCreationHour:I

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mTabCreationTime:J

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsLaunchedFromExternalApp:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsLaunchedFromLink:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsLaunchedFromRestoreBackground:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsLaunchedFromRestoreForeground:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsLaunchedFromUI:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsLaunchedFromLongpressForeground:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsLaunchedFromLongpressBackground:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsLaunchedFromReaderMode:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsLaunchedFromAssist:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsPageTypeImage:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsPageTypeText:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsPageTypeApplication:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsPageTypeVideo:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsPageTypeAudio:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsPageTypeTextHtml:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsPageTypeOthers:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mPeriodOneCount:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mPeriodTwoCount:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mPeriodThreeCount:I

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mPeriodOneTime:J

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mPeriodTwoTime:J

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mPeriodThreeTime:J

    return-void
.end method


# virtual methods
.method public getCumulativeCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mCumulativeCount:I

    return p0
.end method

.method public getCumulativeTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mCumulativeTime:J

    return-wide v0
.end method

.method public getCumulativeTimePerDay()F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mCumulativeTimePerDay:F

    return p0
.end method

.method public getIsClosed()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsClosed:I

    return p0
.end method

.method public getIsLaunchedFromAssist()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsLaunchedFromAssist:I

    return p0
.end method

.method public getIsLaunchedFromExternalApp()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsLaunchedFromExternalApp:I

    return p0
.end method

.method public getIsLaunchedFromLink()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsLaunchedFromLink:I

    return p0
.end method

.method public getIsLaunchedFromLongpressBackground()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsLaunchedFromLongpressBackground:I

    return p0
.end method

.method public getIsLaunchedFromLongpressForeground()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsLaunchedFromLongpressForeground:I

    return p0
.end method

.method public getIsLaunchedFromReaderMode()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsLaunchedFromReaderMode:I

    return p0
.end method

.method public getIsLaunchedFromRestoreBackground()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsLaunchedFromRestoreBackground:I

    return p0
.end method

.method public getIsLaunchedFromRestoreForeground()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsLaunchedFromRestoreForeground:I

    return p0
.end method

.method public getIsLaunchedFromUI()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsLaunchedFromUI:I

    return p0
.end method

.method public getIsPageTypeApplication()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsPageTypeApplication:I

    return p0
.end method

.method public getIsPageTypeAudio()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsPageTypeAudio:I

    return p0
.end method

.method public getIsPageTypeImage()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsPageTypeImage:I

    return p0
.end method

.method public getIsPageTypeOthers()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsPageTypeOthers:I

    return p0
.end method

.method public getIsPageTypeText()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsPageTypeText:I

    return p0
.end method

.method public getIsPageTypeTextHtml()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsPageTypeTextHtml:I

    return p0
.end method

.method public getIsPageTypeVideo()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsPageTypeVideo:I

    return p0
.end method

.method public getLastActiveStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mLastActiveStartTime:J

    return-wide v0
.end method

.method public getNonImportanceMLPJava()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mNonImportanceMLPJava:D

    return-wide v0
.end method

.method public getPeriodOneCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mPeriodOneCount:I

    return p0
.end method

.method public getPeriodOneTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mPeriodOneTime:J

    return-wide v0
.end method

.method public getPeriodThreeCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mPeriodThreeCount:I

    return p0
.end method

.method public getPeriodThreeTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mPeriodThreeTime:J

    return-wide v0
.end method

.method public getPeriodTwoCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mPeriodTwoCount:I

    return p0
.end method

.method public getPeriodTwoTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mPeriodTwoTime:J

    return-wide v0
.end method

.method public getPredictedNonImportance()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mPredictedNonImportance:D

    return-wide v0
.end method

.method public getRefreshCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mRefreshCount:I

    return p0
.end method

.method public getTabCreationHour()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mTabCreationHour:I

    return p0
.end method

.method public getTabCreationTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mTabCreationTime:J

    return-wide v0
.end method

.method public getTabId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mTabId:I

    return p0
.end method

.method public getTabLaunchType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mLaunchType:Ljava/lang/String;

    return-object p0
.end method

.method public getTabPageType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mPageType:Ljava/lang/String;

    return-object p0
.end method

.method public getTabUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mTabUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setCumulativeCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mCumulativeCount:I

    return-void
.end method

.method public setCumulativeTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mCumulativeTime:J

    return-void
.end method

.method public setCumulativeTimePerDay(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mCumulativeTimePerDay:F

    return-void
.end method

.method public setIsClosed(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsClosed:I

    return-void
.end method

.method public setIsLaunchedFromAssist(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsLaunchedFromAssist:I

    return-void
.end method

.method public setIsLaunchedFromExternalApp(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsLaunchedFromExternalApp:I

    return-void
.end method

.method public setIsLaunchedFromLink(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsLaunchedFromLink:I

    return-void
.end method

.method public setIsLaunchedFromLongpressBackground(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsLaunchedFromLongpressBackground:I

    return-void
.end method

.method public setIsLaunchedFromLongpressForeground(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsLaunchedFromLongpressForeground:I

    return-void
.end method

.method public setIsLaunchedFromReaderMode(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsLaunchedFromReaderMode:I

    return-void
.end method

.method public setIsLaunchedFromRestoreBackground(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsLaunchedFromRestoreBackground:I

    return-void
.end method

.method public setIsLaunchedFromRestoreForeground(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsLaunchedFromRestoreForeground:I

    return-void
.end method

.method public setIsLaunchedFromUI(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsLaunchedFromUI:I

    return-void
.end method

.method public setIsPageTypeApplication(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsPageTypeApplication:I

    return-void
.end method

.method public setIsPageTypeAudio(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsPageTypeAudio:I

    return-void
.end method

.method public setIsPageTypeImage(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsPageTypeImage:I

    return-void
.end method

.method public setIsPageTypeOthers(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsPageTypeOthers:I

    return-void
.end method

.method public setIsPageTypeText(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsPageTypeText:I

    return-void
.end method

.method public setIsPageTypeTextHtml(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsPageTypeTextHtml:I

    return-void
.end method

.method public setIsPageTypeVideo(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mIsPageTypeVideo:I

    return-void
.end method

.method public setLastActiveStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mLastActiveStartTime:J

    return-void
.end method

.method public setNonImportanceMLPJava(D)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mNonImportanceMLPJava:D

    return-void
.end method

.method public setPeriodOneCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mPeriodOneCount:I

    return-void
.end method

.method public setPeriodOneTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mPeriodOneTime:J

    return-void
.end method

.method public setPeriodThreeCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mPeriodThreeCount:I

    return-void
.end method

.method public setPeriodThreeTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mPeriodThreeTime:J

    return-void
.end method

.method public setPeriodTwoCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mPeriodTwoCount:I

    return-void
.end method

.method public setPeriodTwoTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mPeriodTwoTime:J

    return-void
.end method

.method public setPredictedNonImportance(D)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mPredictedNonImportance:D

    return-void
.end method

.method public setRefreshCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mRefreshCount:I

    return-void
.end method

.method public setTabCreationHour(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mTabCreationHour:I

    return-void
.end method

.method public setTabCreationTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mTabCreationTime:J

    return-void
.end method

.method public setTabId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mTabId:I

    return-void
.end method

.method public setTabLaunchType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mLaunchType:Ljava/lang/String;

    return-void
.end method

.method public setTabPageType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mPageType:Ljava/lang/String;

    return-void
.end method

.method public setTabUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->mTabUrl:Ljava/lang/String;

    return-void
.end method
