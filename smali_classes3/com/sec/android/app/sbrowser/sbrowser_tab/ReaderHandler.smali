.class Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityObserver;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsArticleAvailable:Z

.field private mIsExtractionFailed:Z

.field private mIsSavedReaderPage:Z

.field private final mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

.field private mReader:Lcom/sec/android/app/sbrowser/reader/Reader;

.field private mReaderCallback:Lcom/sec/android/app/sbrowser/reader/ReaderCallback;

.field private mReaderDelegate:Lcom/sec/android/app/sbrowser/reader/ReaderDelegate;

.field private mReaderTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

.field private mRecognizedUrl:Ljava/lang/String;

.field private mShowReaderView:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;->createForTerrace(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;->addObserver(Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityObserver;)V

    goto :goto_0

    :cond_1
    const-string p0, "si__ReaderHandler"

    const-string p1, "Failed to register as TerraceReadabilityObserver"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->lambda$applyReaderOption$1(I)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->lambda$recognizeArticle$0()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->lambda$applyReaderFontScale$2(I)V

    return-void
.end method

.method private createReader()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mReader:Lcom/sec/android/app/sbrowser/reader/Reader;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createReader(): for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ReaderHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/reader/Reader;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->createReaderDelegate()Lcom/sec/android/app/sbrowser/reader/ReaderDelegate;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->createReaderCallback()Lcom/sec/android/app/sbrowser/reader/ReaderCallback;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/reader/Reader;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/reader/ReaderDelegate;Lcom/sec/android/app/sbrowser/reader/ReaderCallback;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mReader:Lcom/sec/android/app/sbrowser/reader/Reader;

    return-void
.end method

.method private createReaderCallback()Lcom/sec/android/app/sbrowser/reader/ReaderCallback;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mReaderCallback:Lcom/sec/android/app/sbrowser/reader/ReaderCallback;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mReaderCallback:Lcom/sec/android/app/sbrowser/reader/ReaderCallback;

    return-object v0
.end method

.method private createReaderDelegate()Lcom/sec/android/app/sbrowser/reader/ReaderDelegate;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mReaderDelegate:Lcom/sec/android/app/sbrowser/reader/ReaderDelegate;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$1;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mReaderDelegate:Lcom/sec/android/app/sbrowser/reader/ReaderDelegate;

    return-object v0
.end method

.method public static synthetic d(Ljava/lang/Runnable;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->lambda$evaluateReaderScript$3(Ljava/lang/Runnable;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private evaluateReaderScript(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/e;

    invoke-direct {v0, p3, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/e;-><init>(Ljava/lang/Runnable;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_1
    if-eqz p2, :cond_2

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mReaderTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mIsExtractionFailed:Z

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mReaderTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    return-void
.end method

.method private synthetic lambda$applyReaderFontScale$2(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->setDefaultFontSize(I)V

    return-void
.end method

.method private synthetic lambda$applyReaderOption$1(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->setDefaultFontSize(I)V

    return-void
.end method

.method private static synthetic lambda$evaluateReaderScript$3(Ljava/lang/Runnable;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$recognizeArticle$0()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->onRecognizeArticleResult(Z)V

    return-void
.end method


# virtual methods
.method public applyReaderFontScale(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 4
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "applyReaderFontScale(): for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ReaderHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderFontSize(Z)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/reader/ReaderScript;->getReaderFontScaleScript(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/sbrowser_tab/d;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/d;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;II)V

    invoke-direct {p0, v1, p1, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->evaluateReaderScript(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/Runnable;)V

    return-void
.end method

.method public applyReaderOption(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 4
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "applyReaderOption(): for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ReaderHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderFontSize(Z)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/sbrowser/reader/ReaderScript;->getReaderOptionScript(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/sbrowser_tab/d;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/d;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;II)V

    invoke-direct {p0, v0, p1, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->evaluateReaderScript(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/Runnable;)V

    return-void
.end method

.method public applyReaderThemeColor(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "applyReaderThemeColor(): for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ReaderHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/reader/ReaderScript;->getReaderThemeScript(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->evaluateReaderScript(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroyReader()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "destroyReader(): for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ReaderHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mReader:Lcom/sec/android/app/sbrowser/reader/Reader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/Reader;->destroy()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mReader:Lcom/sec/android/app/sbrowser/reader/Reader;

    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mRecognizedUrl:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mShowReaderView:Z

    return-void
.end method

.method public getArticleImageUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mReader:Lcom/sec/android/app/sbrowser/reader/Reader;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/Reader;->getArticleImageUrl()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getOriginalTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->isReaderView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getReader()Lcom/sec/android/app/sbrowser/reader/Reader;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mReader:Lcom/sec/android/app/sbrowser/reader/Reader;

    return-object p0
.end method

.method public getReaderTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->isReaderView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mReaderTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mIsSavedReaderPage:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getReaderTabWhenSplitView()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mReaderTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    return-object p0
.end method

.method public getReaderTheme()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getDefaultReaderTheme()I

    move-result p0

    return p0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result p0

    return p0
.end method

.method public hide()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mReaderTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->hide()V

    return-void
.end method

.method public isArticleAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mIsArticleAvailable:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExtractionFailed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mIsExtractionFailed:Z

    return p0
.end method

.method public isLoadFinished()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mReader:Lcom/sec/android/app/sbrowser/reader/Reader;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/Reader;->isLoadFinished()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReaderView()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mReader:Lcom/sec/android/app/sbrowser/reader/Reader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mReaderTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mShowReaderView:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReadyToShow()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mReaderTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isReadyToShow()Z

    move-result p0

    return p0
.end method

.method public isSavedReaderPage()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mIsSavedReaderPage:Z

    return p0
.end method

.method public onDidCommitProvisionalLoadForFrame(Ljava/lang/String;I)V
    .locals 0

    const/16 p1, 0x8

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->destroyReader()V

    :cond_0
    return-void
.end method

.method public onDidStartProvisionalLoadForFrame(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->isSavedReaderPage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->setIsSavedReaderPage(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyReaderPageVisibilityChanged(ZZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->isSavedReaderPage()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->setIsSavedReaderPage(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/reader/ReaderScript;->getReaderThemeScript(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->disableDefaultFontSize()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getTextScale()F

    move-result p1

    invoke-static {p1}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setFontScaleFactor(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->setApplySettings()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyReaderPageVisibilityChanged(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLoadFinished(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getAmpViewerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onLoadFinished(): for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / isSavedReaderPage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mIsSavedReaderPage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / isMainFrame : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ReaderHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mIsExtractionFailed:Z

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->recognizeArticle(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->isSavedReaderPage()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->applyReaderOption(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    :cond_1
    return-void
.end method

.method public onLoadStarted(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->resetArticleState(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->isReaderView()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->setReaderPageEnabled(ZZZZ)V

    :cond_0
    return-void
.end method

.method public onMainActivityRecreated(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mReaderTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->onMainActivityRecreated(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onReadabilityResult(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->onRecognizeArticleResult(Z)V

    return-void
.end method

.method public onRecognizeArticleResult(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isReaderModeSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mIsArticleAvailable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mIsExtractionFailed:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyRecognizeArticleResult(Z)V

    return-void
.end method

.method public recognizeArticle(Ljava/lang/String;Z)V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isReaderModeSupported()Z

    move-result v0

    const-string v1, "si__ReaderHandler"

    if-nez v0, :cond_0

    const-string p0, "recognizeArticle(): skipped - reader mode is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->alwaysShowReaderIcon()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mRecognizedUrl:Ljava/lang/String;

    const-string p1, "recognizeArticle(): returning true - alwaysShowReaderIcon debug setting enabled"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/sbrowser_tab/g;

    const/4 v0, 0x2

    invoke-direct {p2, v0, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/g;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_a

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->enableReaderDetectionForContentUrls()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isContentUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_3
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isFileUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isXmlBasedUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isErrorPage()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isMultiCpUrl()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isUnifiedHomepageUrl()Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "internet://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "internet-native://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p0, "recognizeArticle(): skipped - unnecessary request for reader mode"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mRecognizedUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    const-string p0, "recognizeArticle(): skipped - already recognized"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;->getForTerrace(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;

    move-result-object p1

    if-nez p1, :cond_8

    const-string p0, "recognizeArticle(): skipped - controller is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "recognizeArticle(): for "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabId()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mRecognizedUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;->runReadabilityDetection()V

    return-void

    :cond_9
    :goto_0
    const-string p1, "recognizeArticle(): skipped - invalid article"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mRecognizedUrl:Ljava/lang/String;

    return-void

    :cond_a
    :goto_1
    const-string p1, "recognizeArticle(): skipped - invalid article(native page)"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mRecognizedUrl:Ljava/lang/String;

    return-void
.end method

.method public resetArticleState(Ljava/lang/String;)V
    .locals 1

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mIsArticleAvailable:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "resetArticleState(): for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "si__ReaderHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mIsArticleAvailable:Z

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mRecognizedUrl:Ljava/lang/String;

    return-void
.end method

.method public setIsSavedReaderPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mIsSavedReaderPage:Z

    return-void
.end method

.method public setReaderForTesting(Lcom/sec/android/app/sbrowser/reader/Reader;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mReader:Lcom/sec/android/app/sbrowser/reader/Reader;

    return-void
.end method

.method public setReaderPageEnabled(ZZZZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[setReaderPageEnabled] for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / enabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / skipJavascript : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / bAnimation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / keepReaderTab : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "si__ReaderHandler"

    invoke-static {v1, v0, p4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->hideInfoBar()V

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mShowReaderView:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->createReader()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mReader:Lcom/sec/android/app/sbrowser/reader/Reader;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/Reader;->extractContent()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->isReaderView()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mReaderTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-virtual {p1, p4, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->notifyReaderPageDisabled(ZZ)V

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mShowReaderView:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyReaderPageVisibilityChanged(ZZ)V

    :goto_0
    return-void
.end method

.method public setReaderTabForTesting(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mReaderTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    return-void
.end method

.method public show()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->mReaderTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->show()V

    return-void
.end method
