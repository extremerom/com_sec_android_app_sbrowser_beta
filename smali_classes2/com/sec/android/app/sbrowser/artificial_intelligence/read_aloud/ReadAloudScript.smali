.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript$ExtractSentencesResponse;
    }
.end annotation


# static fields
.field private static sReadAloudScript:Ljava/lang/String;


# direct methods
.method public static synthetic a(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript;->lambda$unhighlight$3(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static applyScript(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/ByteArrayOutputStream;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "read_aloud.js"

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript;->loadScript(Landroid/content/Context;Z)Ljava/lang/String;

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript;->lambda$sort$5(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript;->lambda$highlight$2(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static clear(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;)V
    .locals 2
    .param p0    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/I;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/I;-><init>(I)V

    const-string v1, "SiReadAloudClear();"

    invoke-interface {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;->evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/GetExtractSentencesCallback;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript;->lambda$getSentences$1(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/GetExtractSentencesCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript;->lambda$initialize$0(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript;->lambda$clear$4(Ljava/lang/String;)V

    return-void
.end method

.method public static getOgImage(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 2
    .param p0    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/t;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/t;-><init>(ILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    const-string p1, "SiReadAloudGetOgImage();"

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;->evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V

    return-void
.end method

.method public static getSentences(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/GetExtractSentencesCallback;)V
    .locals 1
    .param p0    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/common/GetExtractSentencesCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/GetExtractSentencesCallback;->onResult(Ljava/util/List;Z)V

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/j;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/j;-><init>(Ljava/lang/Object;)V

    const-string p1, "SiReadAloudTextGetSentences();"

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;->evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V

    return-void
.end method

.method public static highlight(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Ljava/lang/String;IIZZLcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 2
    .param p0    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;",
            "Ljava/lang/String;",
            "IIZZ",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-eqz p4, :cond_1

    const-string p4, "true"

    goto :goto_0

    :cond_1
    const-string p4, "false"

    :goto_0
    const-string v0, "SiReadAloudTextHighlight("

    const-string v1, ", "

    invoke-static {v0, p2, p1, v1, v1}, Lt/b;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", false);"

    invoke-static {p1, p4, p2}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/t;

    const/4 p3, 0x2

    invoke-direct {p2, p3, p6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/t;-><init>(ILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;->evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V

    return-void

    :cond_2
    :goto_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p6, p0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript;->loadScript(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/t;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/t;-><init>(ILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    invoke-interface {p1, p0, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;->evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V

    return-void
.end method

.method private static synthetic lambda$clear$4(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$getSentences$1(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/GetExtractSentencesCallback;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript;->onResultGetSentences(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/GetExtractSentencesCallback;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$highlight$2(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/String;)V
    .locals 0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$initialize$0(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/String;)V
    .locals 0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$sort$5(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr p0, p1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$unhighlight$3(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/String;)V
    .locals 0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void
.end method

.method private static declared-synchronized loadScript(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, ", s: 1)"

    const-string v1, "loadScript(): Use script imported into global config (g:"

    const-class v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript;

    monitor-enter v2

    if-eqz p1, :cond_0

    :try_start_0
    sget-object p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript;->sReadAloudScript:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    monitor-exit v2

    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :try_start_1
    const-string p1, "read_aloud.js"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->isExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/ArtificialIntelligenceFeatureConfigUtils;->getReadAloudScriptVersion(Landroid/content/Context;)I

    move-result p1

    const/4 v3, 0x1

    if-le p1, v3, :cond_1

    const-string v3, "si__ReadAloudScript"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "read_aloud.js"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :try_start_2
    const-string v0, "si__ReadAloudScript"

    const-string v1, "loadScript(): Use script imported into asset (s: 1)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "read_aloud.js"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/AssetUtil;->read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_3
    const-string v0, "si__ReadAloudScript"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    sput-object p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript;->sReadAloudScript:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    return-object p1

    :goto_2
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method private static onResultGetSentences(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/GetExtractSentencesCallback;Ljava/lang/String;)V
    .locals 5
    .param p0    # Lcom/sec/android/app/sbrowser/artificial_intelligence/common/GetExtractSentencesCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "si__ReadAloudScript"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript$ExtractSentencesResponse;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript$ExtractSentencesResponse;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onResultGetSentences(): exception in parsing"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript$ExtractSentencesResponse;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript$ExtractSentencesResponse;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript$ExtractSentencesResponse;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript$ExtractSentencesResponse;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onResultGetSentences(): isArticle => "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript$ExtractSentencesResponse;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript$ExtractSentencesResponse;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript$ExtractSentencesResponse;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript$ExtractSentencesResponse;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript;->sort(Ljava/util/List;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript$ExtractSentencesResponse;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript$ExtractSentencesResponse;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onResultGetSentences(): size => "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript$ExtractSentencesResponse;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript$ExtractSentencesResponse;)Z

    move-result p1

    invoke-interface {p0, v1, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/GetExtractSentencesCallback;->onResult(Ljava/util/List;Z)V

    return-void

    :cond_2
    :goto_2
    const-string p1, "onResultGetSentences(): empty result"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-interface {p0, v1, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/GetExtractSentencesCallback;->onResult(Ljava/util/List;Z)V

    return-void
.end method

.method private static sort(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/L;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-void
.end method

.method public static unhighlight(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 2
    .param p0    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/t;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/t;-><init>(ILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    const-string p1, "SiReadAloudTextUnHighlight();"

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;->evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V

    return-void
.end method
