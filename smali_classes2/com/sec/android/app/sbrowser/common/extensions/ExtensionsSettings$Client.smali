.class public Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Client"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static createClient(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;
    .locals 1

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createSimpleClient()Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private isBlockingMode(I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/4 p0, 0x4

    const/4 v0, 0x0

    if-eq p1, p0, :cond_0

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    const/4 p0, 0x6

    if-eq p1, p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->isContentBlockBlockingMode()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getNewExtensionCount()I
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;->d()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->hasNewExtensionFlag(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public hasNewExtension()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;->e()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->isBlockingMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;->b(Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public hasNewExtensionFlag(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->isBlockingMode(I)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;->b(Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isContentBlockBlockingMode()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isContentBlockMenuEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEmergencyMode()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setHasNewExtensionFlag(IZ)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;->c(Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;ILjava/lang/Boolean;)V

    return-void
.end method
