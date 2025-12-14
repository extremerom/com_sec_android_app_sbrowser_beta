.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWrite;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sHelpMeWriteScript:Ljava/lang/String;


# direct methods
.method public static applyScript(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/ByteArrayOutputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "help_me_write.js"

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWrite;->loadScript(Landroid/content/Context;Z)Ljava/lang/String;

    return-void
.end method

.method public static getContentForHelpMeWrite(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/terrace/TerraceJavaScriptCallback;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/TerraceJavaScriptCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const-string p0, ""

    invoke-interface {p2, p0}, Lcom/sec/terrace/TerraceJavaScriptCallback;->handleJavaScriptResult(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWrite;->loadScript(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "SiGetHelpMeWriteContent();"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;->evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V

    return-void
.end method

.method private static declared-synchronized loadScript(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, ", s: 1)"

    const-string v1, "Use script imported into global config (g:"

    const-class v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWrite;

    monitor-enter v2

    if-eqz p1, :cond_0

    :try_start_0
    sget-object p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWrite;->sHelpMeWriteScript:Ljava/lang/String;
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
    const-string p1, "help_me_write.js"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->isExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/ArtificialIntelligenceFeatureConfigUtils;->getHelpMeWriteScriptVersion(Landroid/content/Context;)I

    move-result p1

    const/4 v3, 0x1

    if-le p1, v3, :cond_1

    const-string v3, "HelpMeWrite"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "help_me_write.js"

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
    const-string v0, "HelpMeWrite"

    const-string v1, "Use script imported into asset (s: 1)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "help_me_write.js"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/AssetUtil;->read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_3
    const-string v0, "HelpMeWrite"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    sput-object p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/help_me_write/HelpMeWrite;->sHelpMeWriteScript:Ljava/lang/String;
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
