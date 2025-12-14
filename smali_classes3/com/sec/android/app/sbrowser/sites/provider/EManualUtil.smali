.class public Lcom/sec/android/app/sbrowser/sites/provider/EManualUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sEManualUrl:Ljava/lang/String;


# direct methods
.method public static convertEmanualUrlforDex(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "ro.product.model"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Android"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ro.build.version.release"

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    move-object p0, v3

    :goto_0
    invoke-static {v2, p0, v0, v3, v1}, Lt/b;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static getEManualUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/provider/EManualUtil;->sEManualUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/provider/EManualUtil;->initEManualURL()V

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/sites/provider/EManualUtil;->sEManualUrl:Ljava/lang/String;

    return-object v0
.end method

.method private static initEManualURL()V
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;-><init>()V

    const-string v1, "Settings.Browser."

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    sput-object v2, Lcom/sec/android/app/sbrowser/sites/provider/EManualUtil;->sEManualUrl:Ljava/lang/String;

    return-void

    :cond_0
    const-string v3, "eManual"

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "URL"

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/provider/EManualUtil;->sEManualUrl:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/sites/provider/EManualUtil;->sEManualUrl:Ljava/lang/String;

    if-nez v0, :cond_2

    sput-object v2, Lcom/sec/android/app/sbrowser/sites/provider/EManualUtil;->sEManualUrl:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public static isEmanualUrl(Ljava/lang/String;)Z
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/provider/EManualUtil;->getEManualUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-static {v4, v1, v0}, LB/e;->n(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v4, v1, p0}, LB/e;->n(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v1
.end method
