.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$ExtractSentencesResponse;
    }
.end annotation


# static fields
.field private static sSummarizeControllerScript:Ljava/lang/String;


# direct methods
.method public static synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController;->lambda$isRobotsIndexBlocked$2(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;Ljava/lang/String;)V

    return-void
.end method

.method public static applyScript(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "summarize_controller.js"

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController;->loadScript(Landroid/content/Context;ZI)Ljava/lang/String;

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController;->lambda$sort$4(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/GetExtractSentencesCallback;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController;->lambda$getExtractSentences$3(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/GetExtractSentencesCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController;->lambda$init$0(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController;->lambda$isPaywall$1(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;Ljava/lang/String;)V

    return-void
.end method

.method public static getExtractSentences(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/GetExtractSentencesCallback;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/common/GetExtractSentencesCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "PageController"

    const-string v1, "[getExtractSentences]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/GetExtractSentencesCallback;->onResult(Ljava/util/List;Z)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/firebase/messaging/z;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/messaging/z;-><init>(ILjava/lang/Object;)V

    const-string p1, "SiTextGetSentences();"

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;->evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;I)V
    .locals 1
    .param p2    # Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback<",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController;->loadScript(Landroid/content/Context;ZI)Ljava/lang/String;

    move-result-object p0

    new-instance p3, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/a;

    const/4 v0, 0x0

    invoke-direct {p3, p2, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/a;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;I)V

    invoke-interface {p1, p0, p3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;->evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V

    return-void

    :cond_1
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method public static isPaywall(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;->onResult(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/a;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/a;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;I)V

    const-string p1, "SiTextIsPayWallPage();"

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;->evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V

    return-void
.end method

.method public static isRobotsIndexBlocked(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "PageController"

    const-string v1, "[isRobotsIndexBlocked]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;->onResult(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/a;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/a;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;I)V

    const-string p1, "SiTextIsRobotsIndexBlocked();"

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;->evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V

    return-void
.end method

.method private static synthetic lambda$getExtractSentences$3(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/GetExtractSentencesCallback;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController;->onResultGetSentences(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/GetExtractSentencesCallback;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$init$0(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;Ljava/lang/String;)V
    .locals 0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$isPaywall$1(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;Ljava/lang/String;)V
    .locals 1

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$isRobotsIndexBlocked$2(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;Ljava/lang/String;)V
    .locals 1

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$sort$4(Ljava/lang/String;Ljava/lang/String;)I
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
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method private static declared-synchronized loadScript(Landroid/content/Context;ZI)Ljava/lang/String;
    .locals 4

    const-string v0, ", s: 2)"

    const-string v1, "Use script imported into global config (g:"

    const-class v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController;

    monitor-enter v2

    if-eqz p1, :cond_0

    :try_start_0
    sget-object p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController;->sSummarizeControllerScript:Ljava/lang/String;
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
    const-string p1, "summarize_controller.js"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->isExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    if-le p2, p1, :cond_1

    const-string p1, "PageController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "summarize_controller.js"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    :try_start_2
    const-string p2, "PageController"

    const-string v0, "Use script imported into asset (s: 2)"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "summarize_controller.js"

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/common/device/AssetUtil;->read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_3
    const-string p2, "PageController"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    sput-object p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController;->sSummarizeControllerScript:Ljava/lang/String;
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
    .locals 6
    .param p0    # Lcom/sec/android/app/sbrowser/artificial_intelligence/common/GetExtractSentencesCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "PageController"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$ExtractSentencesResponse;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$ExtractSentencesResponse;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parse():Exception in parsing"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$ExtractSentencesResponse;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$ExtractSentencesResponse;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$ExtractSentencesResponse;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$ExtractSentencesResponse;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[onResultGetSentences] is article : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$ExtractSentencesResponse;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$ExtractSentencesResponse;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$ExtractSentencesResponse;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$ExtractSentencesResponse;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController;->sort(Ljava/util/List;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$ExtractSentencesResponse;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$ExtractSentencesResponse;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[onResultGetSentences] Found null sentence for key: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ""

    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[onResultGetSentences] sentences.size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$ExtractSentencesResponse;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$ExtractSentencesResponse;)Z

    move-result p1

    invoke-interface {p0, v1, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/GetExtractSentencesCallback;->onResult(Ljava/util/List;Z)V

    return-void

    :cond_3
    :goto_2
    const-string p1, "[onResultGetSentences] empty result"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-interface {p0, v1, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/GetExtractSentencesCallback;->onResult(Ljava/util/List;Z)V

    return-void
.end method

.method private static sort(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, LB0/r;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LB0/r;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-void
.end method
