.class public Lcom/sec/android/app/sbrowser/reader/Reader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/reader/IReader;


# instance fields
.field private mArticleImageUrl:Ljava/lang/String;

.field private mArticleUrl:Ljava/lang/String;

.field private final mCallback:Lcom/sec/android/app/sbrowser/reader/ReaderCallback;

.field private final mDelegate:Lcom/sec/android/app/sbrowser/reader/ReaderDelegate;

.field private mEvaluatedJavaScript:Z

.field private mExtractionTimer:Ljava/util/Timer;

.field private final mHelper:Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;

.field private mLoadFinished:Z

.field private mRenderData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/reader/ReaderDelegate;Lcom/sec/android/app/sbrowser/reader/ReaderCallback;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/reader/ReaderDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/reader/ReaderCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mDelegate:Lcom/sec/android/app/sbrowser/reader/ReaderDelegate;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mCallback:Lcom/sec/android/app/sbrowser/reader/ReaderCallback;

    new-instance p2, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;

    invoke-direct {p2, p1}, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mHelper:Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/reader/Reader;Ljava/lang/String;Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/reader/Reader;->lambda$createReadabilityExtractionCallback$0(Ljava/lang/String;Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionResult;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/reader/Reader;)Lcom/sec/android/app/sbrowser/reader/ReaderCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mCallback:Lcom/sec/android/app/sbrowser/reader/ReaderCallback;

    return-object p0
.end method

.method private cancelExtractionTimer()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mExtractionTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mExtractionTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mExtractionTimer:Ljava/util/Timer;

    return-void
.end method

.method private createReadabilityExtractionCallback(Ljava/lang/String;)Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionCallback;
    .locals 2

    new-instance v0, LHa/a;

    const/16 v1, 0x16

    invoke-direct {v0, v1, p0, p1}, LHa/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private getImageSrc(LQd/n;)Ljava/lang/String;
    .locals 3

    const-string v0, "style"

    invoke-virtual {p1, v0}, LQd/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "src"

    invoke-virtual {p1, v0}, LQd/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "data:image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mArticleImageUrl:Ljava/lang/String;

    return-object p1

    :cond_2
    return-object v1
.end method

.method private getImageUrlData()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mRenderData:Ljava/lang/String;

    const-string v1, ""

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mHelper:Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->getVisibleImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mHelper:Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->removeSmallImages(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$createReadabilityExtractionCallback$0(Ljava/lang/String;Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionResult;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/reader/Reader;->cancelExtractionTimer()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mDelegate:Lcom/sec/android/app/sbrowser/reader/ReaderDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/reader/ReaderDelegate;->isReaderTabDestroyed()Z

    move-result v0

    const-string v1, "si__Reader"

    if-eqz v0, :cond_0

    const-string p0, "[onExtractionFinished] reader tab is already destroyed."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mDelegate:Lcom/sec/android/app/sbrowser/reader/ReaderDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/reader/ReaderDelegate;->isExtractionFailed()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "[onExtractionFinished] time out already"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p2, :cond_2

    const-string p1, "[onExtractionFinished] extraction result is not available"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mCallback:Lcom/sec/android/app/sbrowser/reader/ReaderCallback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/reader/ReaderCallback;->onExtractionFailed()V

    return-void

    :cond_2
    const-string v0, "[onExtractionFinished] get result for reader"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/reader/Reader;->parseContent(Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionResult;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/reader/Reader;->getImageUrlData()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/reader/Reader;->setReaderImageUrl(Ljava/lang/String;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mEvaluatedJavaScript:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/Reader;->loadData()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mArticleUrl:Ljava/lang/String;

    return-void
.end method

.method private reusePreviousContent()V
    .locals 5

    const-string v0, "si__Reader"

    const-string v1, "[reusePreviousContent]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/reader/Reader;->getImageUrlData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/reader/Reader;->setReaderImageUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mCallback:Lcom/sec/android/app/sbrowser/reader/ReaderCallback;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/reader/ReaderCallback;->attachReaderTab()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mCallback:Lcom/sec/android/app/sbrowser/reader/ReaderCallback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sec/android/app/sbrowser/download/b;

    const/16 v3, 0x11

    invoke-direct {v2, v3, v1}, Lcom/sec/android/app/sbrowser/download/b;-><init>(ILjava/lang/Object;)V

    const-wide/16 v3, 0xa

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mEvaluatedJavaScript:Z

    return-void
.end method

.method private setExtractionTimer()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/reader/Reader;->cancelExtractionTimer()V

    new-instance v0, Lcom/sec/android/app/sbrowser/reader/Reader$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/reader/Reader$1;-><init>(Lcom/sec/android/app/sbrowser/reader/Reader;)V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mExtractionTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private setReaderImageUrl(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mHelper:Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->findImgTag(Ljava/lang/String;)LRd/d;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQd/n;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setReaderImageUrl] : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "style"

    invoke-virtual {v0, v2}, LQd/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "si__Reader"

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/reader/Reader;->getImageSrc(LQd/n;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mArticleImageUrl:Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method public canReuse()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mArticleUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mLoadFinished:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mDelegate:Lcom/sec/android/app/sbrowser/reader/ReaderDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/reader/ReaderDelegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mArticleUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mDelegate:Lcom/sec/android/app/sbrowser/reader/ReaderDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/reader/ReaderDelegate;->isReaderTabDestroyed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mArticleUrl:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mLoadFinished:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mEvaluatedJavaScript:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mCallback:Lcom/sec/android/app/sbrowser/reader/ReaderCallback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/reader/ReaderCallback;->destroyReaderTab()V

    return-void
.end method

.method public extractContent()V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isTransBarShowing(Landroid/app/Activity;)Z

    move-result v0

    const-string v1, "si__Reader"

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/Reader;->canReuse()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[extractContent] previous content is reusable"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/reader/Reader;->reusePreviousContent()V

    return-void

    :cond_0
    const-string v0, "[extractContent] load js to extract"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/Reader;->destroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mCallback:Lcom/sec/android/app/sbrowser/reader/ReaderCallback;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/reader/ReaderCallback;->createReaderTab()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mDelegate:Lcom/sec/android/app/sbrowser/reader/ReaderDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/reader/ReaderDelegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/reader/Reader;->createReadabilityExtractionCallback(Ljava/lang/String;)Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionCallback;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/reader/Reader;->setExtractionTimer()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderFontSize(Z)I

    move-result v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mCallback:Lcom/sec/android/app/sbrowser/reader/ReaderCallback;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/reader/ReaderScript;->getReaderOptions(I)Ljava/util/Map;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Lcom/sec/android/app/sbrowser/reader/ReaderCallback;->extractArticle(Ljava/util/Map;Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionCallback;)V

    return-void
.end method

.method public getArticleImageUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mArticleImageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public isLoadCompleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mLoadFinished:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mEvaluatedJavaScript:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLoadFinished()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mLoadFinished:Z

    return p0
.end method

.method public loadData()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[loadData] LoadFinished : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mLoadFinished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / Evaluated : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mEvaluatedJavaScript:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__Reader"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/Reader;->isLoadCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mCallback:Lcom/sec/android/app/sbrowser/reader/ReaderCallback;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mRenderData:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/reader/ReaderCallback;->loadData(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mEvaluatedJavaScript:Z

    :cond_0
    return-void
.end method

.method public parseContent(Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionResult;)V
    .locals 4
    .param p1    # Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mHelper:Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->makeCSP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mHelper:Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->makeRtlStyle(Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mHelper:Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->makeViewPort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mHelper:Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mDelegate:Lcom/sec/android/app/sbrowser/reader/ReaderDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/reader/ReaderDelegate;->getCurrentTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->wrapTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mHelper:Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->makeCssStyle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mHelper:Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;

    const-string v2, "head"

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->wrapTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mHelper:Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;

    const-string v2, "body"

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->getReaderInnerHtml(Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionResult;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->wrapTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mHelper:Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;

    const-string v1, "html"

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->wrapTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mRenderData:Ljava/lang/String;

    return-void
.end method

.method public setLoadFinished(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/reader/Reader;->mLoadFinished:Z

    return-void
.end method
