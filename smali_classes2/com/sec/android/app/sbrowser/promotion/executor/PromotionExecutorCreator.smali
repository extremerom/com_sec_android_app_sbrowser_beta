.class public Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static create(Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorCreator$1;->$SwitchMap$com$sec$android$app$sbrowser$promotion$executor$PromotionExecutorId:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    return-object v0

    :cond_1
    new-instance p0, Lcom/sec/android/app/sbrowser/promotion/executor/QuickAccessPageNewsFeed;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/promotion/executor/QuickAccessPageNewsFeed;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "native"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;->fromKey(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorCreator;->create(Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v1
.end method
