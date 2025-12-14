.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$UpdateArticleListCallback;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mArticleListOnPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentIndex:I

.field private final mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;

.field private mHostTabId:I

.field private mIsWaitingReadArticlesAloud:Z

.field private final mItemListOnReadAloud:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLaunchedTimeMs:J

.field private mOriginTabId:I

.field private final mPlayedSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceLanguage:Ljava/lang/String;

.field private mTargetLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mArticleListOnPage:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mItemListOnReadAloud:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mPlayedSet:Ljava/util/HashSet;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mHostTabId:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mOriginTabId:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mCurrentIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mIsWaitingReadArticlesAloud:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$UpdateArticleListCallback;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->lambda$onInitializeResult$1(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$UpdateArticleListCallback;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$UpdateArticleListCallback;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->lambda$requestArticleListUpdate$0(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$UpdateArticleListCallback;Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$onInitializeResult$1(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$UpdateArticleListCallback;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->onGetListResult(Ljava/util/List;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$UpdateArticleListCallback;)V

    return-void
.end method

.method private synthetic lambda$requestArticleListUpdate$0(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$UpdateArticleListCallback;Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;->getJavascriptDelegate()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;

    move-result-object v0

    invoke-direct {p0, p2, v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->onInitializeResult(Ljava/lang/Boolean;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$UpdateArticleListCallback;)V

    return-void
.end method

.method private onGetListResult(Ljava/util/List;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$UpdateArticleListCallback;)V
    .locals 4
    .param p2    # Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$UpdateArticleListCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$UpdateArticleListCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "si__ReadArticlesAloud"

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[onGetListResult] item count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[onInitializeResult] firstItem url : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isDebugReadArticlesAloudUnlimitCount()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/ArtificialIntelligenceFeatureConfigUtils;->getReadArticlesAloudListSize(Landroid/content/Context;)I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v2, v3}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[onGetListResult] limited item count: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->updateArticleList(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$UpdateArticleListCallback;->onUpdate(I)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "[onGetListResult] non-list page"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->cleanList()V

    invoke-interface {p2, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$UpdateArticleListCallback;->onUpdate(I)V

    return-void
.end method

.method private onInitializeResult(Ljava/lang/Boolean;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$UpdateArticleListCallback;)V
    .locals 2
    .param p3    # Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$UpdateArticleListCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[onInitializeResult] result : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ReadArticlesAloud"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/N;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p3, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/N;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$UpdateArticleListCallback;I)V

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudScript;->getListOfArticle(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "[onInitializeResult] extraction failed."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->cleanList()V

    const/4 p0, 0x0

    invoke-interface {p3, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$UpdateArticleListCallback;->onUpdate(I)V

    :goto_0
    return-void
.end method

.method private sendSALog()V
    .locals 4

    const-string v0, "si__ReadArticlesAloud"

    const-string v1, "sendSALog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mLaunchedTimeMs:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mPlayedSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Count"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "Time"

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "1001"

    const-string v0, "20114"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private updateArticleList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mArticleListOnPage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mArticleListOnPage:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public canNext()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mCurrentIndex:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mItemListOnReadAloud:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public canPrev()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mCurrentIndex:I

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cleanList()V
    .locals 2

    const-string v0, "si__ReadArticlesAloud"

    const-string v1, "[cleanList]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mArticleListOnPage:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public continueReadArticlesAloud(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[continueReadArticlesAloud] read article at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ReadArticlesAloud"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "readArticlesAloud(): no network available"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f14009f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :cond_0
    if-ltz p1, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mItemListOnReadAloud:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mCurrentIndex:I

    if-ne v0, p1, :cond_2

    const-string p0, "[readArticlesAloud] index is not changed -> "

    invoke-static {p1, p0, v1}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mCurrentIndex:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mHostTabId:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mOriginTabId:I

    if-ne v0, v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;

    invoke-interface {v2, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;->getOrCreateTabForReadArticlesAloud(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    const-string p0, "launchReadArticlesAloud(): cannot get or create tab for read articles aloud"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;

    invoke-interface {v2, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;->isValidTab(I)Z

    move-result v2

    if-nez v2, :cond_4

    const-string p0, "[readArticlesAloud] invalid tab -> "

    invoke-static {v0, p0, v1}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mHostTabId:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;->setHostTabId(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;->setCurrentTab(I)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;->onArticleIndexChanged()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->setIsWaitingReadArticlesAloud(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mItemListOnReadAloud:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;

    iget v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mHostTabId:I

    invoke-interface {v1, v2, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;->loadUrl(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mPlayedSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_6
    :goto_0
    const-string v0, "[readArticlesAloud] index over size -> "

    const-string v2, " at range (0 ~ "

    invoke-static {p1, v0, v2}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mItemListOnReadAloud:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getArticleCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mArticleListOnPage:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getArticleTitle(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mItemListOnReadAloud:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mItemListOnReadAloud:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mItemListOnReadAloud:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mItemListOnReadAloud:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v1
.end method

.method public getArticleTitles()Ljava/lang/String;
    .locals 4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mArticleListOnPage:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/U;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/U;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, "\n"

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[getArticleTitles] length : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "si__ReadArticlesAloud"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr v3, p0

    const/4 p0, 0x0

    :goto_0
    if-gt p0, v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHostTabId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mHostTabId:I

    return p0
.end method

.method public goToNext()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mCurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->continueReadArticlesAloud(I)V

    return-void
.end method

.method public goToPrev()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mCurrentIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->continueReadArticlesAloud(I)V

    return-void
.end method

.method public isArticleHomepage()Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mCurrentIndex:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWaitingReadArticlesAloud()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mIsWaitingReadArticlesAloud:Z

    return p0
.end method

.method public launchReadArticlesAloud()V
    .locals 4

    const-string v0, "si__ReadArticlesAloud"

    const-string v1, "[launchReadArticlesAloud]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;->getCurrentTabId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mOriginTabId:I

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;->getCurrentTabTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;->getCurrentTabUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mItemListOnReadAloud:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mItemListOnReadAloud:Ljava/util/List;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mArticleListOnPage:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mCurrentIndex:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mOriginTabId:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mHostTabId:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel$Builder;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;->getCurrentTabId()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel$Builder;-><init>(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mItemListOnReadAloud:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel$Builder;->setArticleList(Ljava/util/List;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mSourceLanguage:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mTargetLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel$Builder;->setLanguages(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel$Builder;->build()Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;->launchReadArticlesAloud(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mLaunchedTimeMs:J

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mPlayedSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public onLoadFinished(I)V
    .locals 2

    const-string v0, "[onLoadFinished] tabId: "

    const-string v1, ", mHostTabId: "

    invoke-static {p1, v0, v1}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mHostTabId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ReadArticlesAloud"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->isWaitingReadArticlesAloud()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mHostTabId:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->setIsWaitingReadArticlesAloud(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;->isReadAloudShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mCurrentIndex:I

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;->continueReadArticlesAloud(I)V

    :cond_0
    return-void
.end method

.method public onReadAloudListItemClick(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;

    iget v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mHostTabId:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;->onActivateTab(I)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->continueReadArticlesAloud(I)V

    return-void
.end method

.method public requestArticleListUpdate(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$UpdateArticleListCallback;)V
    .locals 4
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$UpdateArticleListCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "si__ReadArticlesAloud"

    const-string v1, "[requestArticleListUpdate]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->cleanList()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;->getJavascriptDelegate()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/N;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/N;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$UpdateArticleListCallback;I)V

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudScript;->initialize(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method public setIsWaitingReadArticlesAloud(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mIsWaitingReadArticlesAloud:Z

    return-void
.end method

.method public setLaunchWithTranslation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mSourceLanguage:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mTargetLanguage:Ljava/lang/String;

    return-void
.end method

.method public stopReadArticlesAloud()V
    .locals 2

    const-string v0, "si__ReadArticlesAloud"

    const-string v1, "[stopReadArticlesAloud]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mItemListOnReadAloud:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->sendSALog()V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mLaunchedTimeMs:J

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mPlayedSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->setIsWaitingReadArticlesAloud(Z)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mHostTabId:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mCurrentIndex:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mItemListOnReadAloud:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;->getSummarizer()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;->release()V

    :cond_1
    return-void
.end method

.method public summarizeArticle(Ljava/lang/String;ILcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "si__ReadArticlesAloud"

    if-eqz v0, :cond_0

    const-string p0, "[summarizeArticle] empty article"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Summarize_Error_Others"

    invoke-interface {p3, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;->onFailure(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;->getSummarizer()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "[summarizeArticle] null summarizer"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[summarizeArticle] request summarize, itemIndex: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->clearCache()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->mSourceLanguage:Ljava/lang/String;

    new-instance v7, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$1;

    invoke-direct {v7, p0, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$1;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;ILcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;)V

    const-string v8, "news_script"

    const/4 v9, 0x0

    move-object v5, p1

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;->summarize(JLjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Ljava/lang/String;Z)V

    return-void
.end method
