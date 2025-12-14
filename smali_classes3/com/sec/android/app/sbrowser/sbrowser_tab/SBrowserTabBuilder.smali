.class public Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActiveTime:J

.field private final mContext:Landroid/content/Context;

.field private mCreationType:Ljava/lang/Integer;

.field private mFromFrozenState:Z

.field private mGroupColorId:I

.field private mGroupName:Ljava/lang/String;

.field private mId:I

.field private mIsCreatedByTerrace:Z

.field private mIsLocked:Z

.field private final mLogBuilder:Ljava/lang/StringBuilder;

.field private mParentId:I

.field private mTabLaunchType:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

.field private mTerrace:Lcom/sec/terrace/Terrace;

.field private mVisitCount:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mId:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mParentId:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[SBrowserTabBuilder]"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mLogBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method private buildFrozenTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 10

    new-instance v9, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;-><init>(Landroid/content/Context;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mParentId:I

    invoke-virtual {v9, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->setParentTabId(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mTabLaunchType:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    iget v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mId:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mTerrace:Lcom/sec/terrace/Terrace;

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mIsCreatedByTerrace:Z

    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mIsLocked:Z

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mGroupName:Ljava/lang/String;

    iget v8, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mGroupColorId:I

    move-object v0, v9

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->initializeTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;ILandroid/content/Context;Lcom/sec/terrace/Terrace;ZZLjava/lang/String;I)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mVisitCount:I

    invoke-virtual {v9, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->setVisitCount(I)V

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mActiveTime:J

    invoke-virtual {v9, v0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->setActiveTime(J)V

    return-object v9
.end method

.method private buildLiveTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 10

    new-instance v9, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->generateTabId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mId:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mParentId:I

    invoke-virtual {v9, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->setParentTabId(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mTabLaunchType:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    iget v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mId:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mTerrace:Lcom/sec/terrace/Terrace;

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mIsCreatedByTerrace:Z

    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mIsLocked:Z

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mGroupName:Ljava/lang/String;

    iget v8, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mGroupColorId:I

    move-object v0, v9

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->initializeTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;ILandroid/content/Context;Lcom/sec/terrace/Terrace;ZZLjava/lang/String;I)V

    return-object v9
.end method

.method public static createFrozenTab(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x2

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setCreationType(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setFromFrozenState(Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static createLiveTab(Landroid/content/Context;Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;-><init>(Landroid/content/Context;)V

    xor-int/lit8 p0, p1, 0x1

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setCreationType(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setFromFrozenState(Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p0

    return-object p0
.end method

.method private generateTabId()I
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/tab/TabIdManager;->getInstance()Lcom/sec/android/app/sbrowser/tab/TabIdManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/TabIdManager;->generateTabId()I

    move-result p0

    return p0
.end method

.method private setCreationType(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mCreationType:Ljava/lang/Integer;

    return-object p0
.end method

.method private setFromFrozenState(Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mFromFrozenState:Z

    return-object p0
.end method


# virtual methods
.method public build()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mFromFrozenState:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->buildFrozenTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->buildLiveTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public setActiveTime(J)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mActiveTime:J

    return-object p0
.end method

.method public setGroup(Landroid/util/Pair;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;"
        }
    .end annotation

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mGroupName:Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mGroupColorId:I

    return-object p0
.end method

.method public setId(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mId:I

    return-object p0
.end method

.method public setIsCreatedByTerrace(Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mIsCreatedByTerrace:Z

    return-object p0
.end method

.method public setIsLocked(Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mIsLocked:Z

    return-object p0
.end method

.method public setParentId(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mParentId:I

    return-object p0
.end method

.method public setTabLaunchType(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mTabLaunchType:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    return-object p0
.end method

.method public setTerrace(Lcom/sec/terrace/Terrace;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;
    .locals 0
    .param p1    # Lcom/sec/terrace/Terrace;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mTerrace:Lcom/sec/terrace/Terrace;

    return-object p0
.end method

.method public setVisitCount(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->mVisitCount:I

    return-object p0
.end method
