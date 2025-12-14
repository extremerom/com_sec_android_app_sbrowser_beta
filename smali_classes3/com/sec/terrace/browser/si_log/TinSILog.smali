.class public Lcom/sec/terrace/browser/si_log/TinSILog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sDelegate:Lcom/sec/terrace/browser/si_log/TerraceSILog$Delegate;


# direct methods
.method public static getDelegateForTesting()Lcom/sec/terrace/browser/si_log/TerraceSILog$Delegate;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/si_log/TinSILog;->sDelegate:Lcom/sec/terrace/browser/si_log/TerraceSILog$Delegate;

    return-object v0
.end method

.method public static sendEvent(IILjava/lang/String;[[Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [[Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/si_log/TinSILog;->sDelegate:Lcom/sec/terrace/browser/si_log/TerraceSILog$Delegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p3}, Lcom/sec/terrace/browser/si_log/TinSILog;->stringArrayToMap([[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    sget-object v0, Lcom/sec/terrace/browser/si_log/TinSILog;->sDelegate:Lcom/sec/terrace/browser/si_log/TerraceSILog$Delegate;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/sec/terrace/browser/si_log/TerraceSILog$Delegate;->sendEvent(IILjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static sendStatus(IILjava/lang/String;[[Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [[Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/si_log/TinSILog;->sDelegate:Lcom/sec/terrace/browser/si_log/TerraceSILog$Delegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p3}, Lcom/sec/terrace/browser/si_log/TinSILog;->stringArrayToMap([[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    sget-object v0, Lcom/sec/terrace/browser/si_log/TinSILog;->sDelegate:Lcom/sec/terrace/browser/si_log/TerraceSILog$Delegate;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/sec/terrace/browser/si_log/TerraceSILog$Delegate;->sendStatus(IILjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static setDelegate(Lcom/sec/terrace/browser/si_log/TerraceSILog$Delegate;)V
    .locals 0

    sput-object p0, Lcom/sec/terrace/browser/si_log/TinSILog;->sDelegate:Lcom/sec/terrace/browser/si_log/TerraceSILog$Delegate;

    return-void
.end method

.method public static stringArrayToMap([[Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    array-length v0, p0

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    array-length v5, v4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    goto :goto_1

    :cond_0
    aget-object v5, v4, v2

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method
