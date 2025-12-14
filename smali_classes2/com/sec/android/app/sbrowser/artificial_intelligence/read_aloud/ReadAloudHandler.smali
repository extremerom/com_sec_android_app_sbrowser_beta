.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudHandler;
.super Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;-><init>()V

    return-void
.end method

.method public static synthetic O(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudHandler;Ljava/lang/Boolean;Z)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudHandler;->lambda$start$3(ZLjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic P()Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudHandler;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudHandler;-><init>()V

    return-object v0
.end method

.method public static synthetic Q(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudHandler;ZLjava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudHandler;->lambda$start$0(ZLjava/util/List;Z)V

    return-void
.end method

.method public static synthetic R(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudHandler;->lambda$onReadAloudStateChanged$4()V

    return-void
.end method

.method public static synthetic S(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudHandler;Ljava/lang/Boolean;ZLandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudHandler;->lambda$start$2(Ljava/lang/Boolean;ZLandroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic T(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudHandler;Ljava/lang/Boolean;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudHandler;->lambda$start$1(Ljava/lang/Boolean;Z)V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/I;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/I;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudHandler;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->sInstance:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    return-object v0
.end method

.method private synthetic lambda$onReadAloudStateChanged$4()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->mNotificationHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;->updateNotification()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->mToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->updateToolbar()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$start$0(ZLjava/util/List;Z)V
    .locals 0

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->onReceiveSentences(Ljava/util/List;Z)V

    return-void
.end method

.method private synthetic lambda$start$1(Ljava/lang/Boolean;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start(): result -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ReadAloudHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->mModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel;->getTabId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;->getJavascriptDelegate(I)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/H;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/H;-><init>(ILjava/lang/Object;Z)V

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript;->getSentences(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/GetExtractSentencesCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "start(): cannot extract sentences"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->stop()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$start$2(Ljava/lang/Boolean;ZLandroid/graphics/Bitmap;)V
    .locals 1

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->onThumbnailBitmapUpdated(Landroid/graphics/Bitmap;)V

    new-instance p3, Lcom/google/firebase/messaging/p;

    const/4 v0, 0x2

    invoke-direct {p3, p0, p1, p2, v0}, Lcom/google/firebase/messaging/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    invoke-static {p3}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$start$3(ZLjava/lang/Boolean;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/f;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;Ljava/lang/Object;ZI)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->requestThumbnailImage(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method


# virtual methods
.method public canNextArticle()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canPrevArticle()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canTranslate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->mActivity:Landroid/app/Activity;

    const v0, 0x7f140083

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHostTabId()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->mModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel;->getTabId()I

    move-result p0

    return p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "1001"

    return-object p0
.end method

.method public getScreenMode()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "Read"

    return-object p0
.end method

.method public goNextArticle()V
    .locals 0

    return-void
.end method

.method public goPrevArticle()V
    .locals 0

    return-void
.end method

.method public handlePreviousUtterance(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->mUtterance:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->setIsReadFinished(Z)V

    :cond_0
    return-void
.end method

.method public isArticleHomepage()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isReadArticlesAloudRunning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSummaryOnGoing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTranslationSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onHostTabChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->mModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel;->getTabId()I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onHostTabChanged(): stop read aloud -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "si__ReadAloudHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->stop()V

    return-void
.end method

.method public onReadAloudStateChanged(I)V
    .locals 1

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->mState:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->goNext()V

    :cond_0
    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/n;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/n;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setShouldShowError(Z)V
    .locals 0

    return-void
.end method

.method public shouldShowError()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public start(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->mModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel;->getTabId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;->getJavascriptDelegate(I)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/G;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/G;-><init>(ILjava/lang/Object;Z)V

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript;->initialize(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method
