.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\'\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\'\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J!\u0010\u0013\u001a\u00020\u000f2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u000fH\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0003J)\u0010\u0017\u001a\u00020\u000f2\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001f\u0010\u0019\u001a\u00020\u000f2\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0015\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\u00068\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0014\u0010 \u001a\u00020\u00068\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001fR\u0014\u0010!\u001a\u00020\u00068\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008!\u0010\u001fR\u0014\u0010\"\u001a\u00020\u00068\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\"\u0010\u001fR\u0014\u0010#\u001a\u00020\u00068\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008#\u0010\u001fR\u0014\u0010$\u001a\u00020\u00068\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008$\u0010\u001fR\u0014\u0010%\u001a\u00020\r8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0014\u0010\'\u001a\u00020\r8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\'\u0010&R\u0016\u0010(\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010\u001f\u00a8\u0006)"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "",
        "loadVideoSubtitleScript",
        "(Landroid/content/Context;)Ljava/lang/String;",
        "Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;",
        "delegate",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;",
        "callback",
        "",
        "spendingTime",
        "Ldb/r;",
        "getTranscriptResult",
        "(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;J)V",
        "getLanguageListResult",
        "initVideoSubtitleControllerScript",
        "(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;)V",
        "onLoadFinished",
        "languageCode",
        "getSubtitle",
        "(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;)V",
        "requestSummarize",
        "(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;)V",
        "",
        "isVideoTranscriptEnabled",
        "(Landroid/content/Context;)Z",
        "TAG",
        "Ljava/lang/String;",
        "VIDEO_SUBTITLE_JS",
        "VIDEO_SUBTITLE_METHOD_GET_SUBTITLE",
        "VIDEO_SUBTITLE_METHOD_GET_SUBTITLE_RESULT",
        "VIDEO_SUBTITLE_METHOD_GET_SUBTITLE_LANG_LIST",
        "VIDEO_SUBTITLE_METHOD_GET_SUBTITLE_LANG_LIST_RESULT",
        "RETRY_TIMEOUT",
        "J",
        "RETRY_TIME",
        "sVideoSubtitleControllerScript",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ltb/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;->getTranscriptResult$lambda$3(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;J)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;->initVideoSubtitleControllerScript$lambda$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;JLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;->getLanguageListResult$lambda$5$lambda$4(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;JLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;->getTranscriptResult$lambda$3$lambda$2(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;->requestSummarize$lambda$6(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;->getSubtitle$lambda$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;->getLanguageListResult$lambda$5(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;J)V

    return-void
.end method

.method private final getLanguageListResult(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;J)V
    .locals 7

    const-string p0, "console : handleLanguageList "

    const-string v0, "VideoTranscriptManager"

    invoke-static {p3, p4, p0, v0}, Lt/b;->y(JLjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0xbb8

    cmp-long p0, p3, v1

    if-lez p0, :cond_0

    const-string p0, "failed to retry : over 3000 ms"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/q;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/q;-><init>(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;JI)V

    const-wide/16 p1, 0x64

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final getLanguageListResult$lambda$5(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;J)V
    .locals 7

    new-instance v6, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/r;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/r;-><init>(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;JI)V

    const-string p1, "SiGetSubtitleLangListResult();"

    invoke-interface {p0, p1, v6}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;->evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V

    return-void
.end method

.method private static final getLanguageListResult$lambda$5$lambda$4(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;JLjava/lang/String;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "null"

    invoke-virtual {v0, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p4, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;

    const-wide/16 v0, 0x64

    add-long/2addr p2, v0

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;->getLanguageListResult(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;J)V

    return-void

    :cond_0
    invoke-interface {p1, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;->onGetLanguageList(Ljava/lang/String;)V

    return-void
.end method

.method private static final getSubtitle$lambda$1(Ljava/lang/String;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "console result : "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoTranscriptManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final getTranscriptResult(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;J)V
    .locals 7

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "console : handleTranscript "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoTranscriptManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/q;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/q;-><init>(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;JI)V

    const-wide/16 p1, 0x64

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final getTranscriptResult$lambda$3(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;J)V
    .locals 7

    new-instance v6, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/r;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/r;-><init>(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;JI)V

    const-string p1, "SiGetSubtitleResult();"

    invoke-interface {p0, p1, v6}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;->evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V

    return-void
.end method

.method private static final getTranscriptResult$lambda$3$lambda$2(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;JLjava/lang/String;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "null"

    invoke-virtual {v0, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p4, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;

    const-wide/16 v0, 0x64

    add-long/2addr p2, v0

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;->getTranscriptResult(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;J)V

    return-void

    :cond_0
    invoke-interface {p1, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;->onGetTranscript(Ljava/lang/String;)V

    return-void
.end method

.method private static final initVideoSubtitleControllerScript$lambda$0(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private final declared-synchronized loadVideoSubtitleScript(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager;->access$getSVideoSubtitleControllerScript$cp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager;->access$getSVideoSubtitleControllerScript$cp()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "video_subtitle_controller.js"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/device/AssetUtil;->read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager;->access$setSVideoSubtitleControllerScript$cp(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager;->access$getSVideoSubtitleControllerScript$cp()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private static final requestSummarize$lambda$6(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getSubtitle(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string v0, "SiGetSubtitle(\"%s\");"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/google/firebase/messaging/m;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/m;-><init>(I)V

    invoke-interface {p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;->evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;->getTranscriptResult(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;J)V

    return-void
.end method

.method public final initVideoSubtitleControllerScript(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;->loadVideoSubtitleScript(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/google/firebase/messaging/m;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Lcom/google/firebase/messaging/m;-><init>(I)V

    invoke-interface {p2, p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;->evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final isVideoTranscriptEnabled(Landroid/content/Context;)Z
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "context"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isVideoSummarizeSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/ArtificialIntelligenceFeatureConfigUtils;->isVideoSummarySupported(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public final onLoadFinished()V
    .locals 1
    .annotation runtime Lcom/sec/terrace/browser/JavascriptInterface;
    .end annotation

    const-string p0, "VideoTranscriptManager"

    const-string v0, "console : onLoadFinished()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final requestSummarize(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/firebase/messaging/m;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/m;-><init>(I)V

    const-string v1, "SiGetSubtitleLangList();"

    invoke-interface {p1, v1, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;->evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;->getLanguageListResult(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;J)V

    return-void
.end method
