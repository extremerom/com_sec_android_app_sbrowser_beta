.class final Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;


# instance fields
.field private final mActiveTime:J

.field private final mDexUserAgentOption:I

.field private final mGroupColorId:I

.field private final mGroupName:Ljava/lang/String;

.field private final mId:I

.field private final mIsIncognito:Z

.field private final mIsLocked:Z

.field private final mIsZoomApplyToThisTabOnlyDex:Z

.field private final mIsZoomApplyToThisTabOnlyMobile:Z

.field private final mOriginalUrl:Ljava/lang/String;

.field private final mPhoneUserAgentOption:I

.field private final mState:Lcom/sec/terrace/TerraceState;

.field private final mTitle:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;

.field private final mVisitCount:I

.field private final mZoomValueDex:D

.field private final mZoomValueMobile:D


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getState()Lcom/sec/terrace/TerraceState;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mState:Lcom/sec/terrace/TerraceState;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mId:I

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mTitle:Ljava/lang/String;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mUrl:Ljava/lang/String;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mOriginalUrl:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mIsLocked:Z

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mIsIncognito:Z

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mGroupName:Ljava/lang/String;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupColorId()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mGroupColorId:I

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUserAgentOption(Z)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mPhoneUserAgentOption:I

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUserAgentOption(Z)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mDexUserAgentOption:I

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getZoomValueMobile()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mZoomValueMobile:D

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getZoomValueDex()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mZoomValueDex:D

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isZoomApplyToThisTabOnlyMobile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mIsZoomApplyToThisTabOnlyMobile:Z

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isZoomApplyToThisTabOnlyDex()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mIsZoomApplyToThisTabOnlyDex:Z

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getVisitCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mVisitCount:I

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getActiveTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mActiveTime:J

    return-void
.end method

.method public constructor <init>(Lcom/sec/terrace/TerraceState;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;IIIDDZZIJ)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mState:Lcom/sec/terrace/TerraceState;

    move v1, p2

    iput v1, v0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mId:I

    move-object v1, p3

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mTitle:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mUrl:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mOriginalUrl:Ljava/lang/String;

    move v1, p6

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mIsLocked:Z

    move v1, p7

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mIsIncognito:Z

    move-object v1, p8

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mGroupName:Ljava/lang/String;

    move v1, p9

    iput v1, v0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mGroupColorId:I

    move v1, p10

    iput v1, v0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mPhoneUserAgentOption:I

    move v1, p11

    iput v1, v0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mDexUserAgentOption:I

    move-wide v1, p12

    iput-wide v1, v0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mZoomValueMobile:D

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mZoomValueDex:D

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mIsZoomApplyToThisTabOnlyMobile:Z

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mIsZoomApplyToThisTabOnlyDex:Z

    move/from16 v1, p18

    iput v1, v0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mVisitCount:I

    move-wide/from16 v1, p19

    iput-wide v1, v0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mActiveTime:J

    return-void
.end method


# virtual methods
.method public getActiveTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mActiveTime:J

    return-wide v0
.end method

.method public getGroupColorId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mGroupColorId:I

    return p0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mGroupName:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mOriginalUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getState()Lcom/sec/terrace/TerraceState;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mState:Lcom/sec/terrace/TerraceState;

    return-object p0
.end method

.method public getTabId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mId:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getUserAgentOption(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mDexUserAgentOption:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mPhoneUserAgentOption:I

    :goto_0
    return p0
.end method

.method public getVisitCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mVisitCount:I

    return p0
.end method

.method public getZoomValueDex()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mZoomValueDex:D

    return-wide v0
.end method

.method public getZoomValueMobile()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mZoomValueMobile:D

    return-wide v0
.end method

.method public isIncognito()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mIsIncognito:Z

    return p0
.end method

.method public isLocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mIsLocked:Z

    return p0
.end method

.method public isZoomApplyToThisTabOnlyDex()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mIsZoomApplyToThisTabOnlyDex:Z

    return p0
.end method

.method public isZoomApplyToThisTabOnlyMobile()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mIsZoomApplyToThisTabOnlyMobile:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->mId:I

    const-string v1, "]"

    invoke-static {v0, p0, v1}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
