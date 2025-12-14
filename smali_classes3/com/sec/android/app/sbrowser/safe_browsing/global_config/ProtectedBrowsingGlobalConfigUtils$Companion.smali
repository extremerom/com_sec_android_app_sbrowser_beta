.class public final Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u0007J\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;",
        "",
        "<init>",
        "()V",
        "isFakeEnabled",
        "",
        "context",
        "Landroid/content/Context;",
        "isOptIn",
        "isUpdateApiEnabled",
        "getSafetyNetApiKeys",
        "",
        "getThreatListGetUpdateSecPeriod",
        "",
        "getThreatListFetchUpdateSecPeriod",
        "getMaxUpdateEntries",
        "",
        "getMaxDatabaseEntries",
        "getProtectedBrowsingConfig",
        "Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingConfig;",
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

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMaxDatabaseEntries(Landroid/content/Context;)I
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;->getProtectedBrowsingConfig()Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingConfig;->getMaxDatabaseEntries(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x800

    :goto_0
    return p0
.end method

.method public final getMaxUpdateEntries(Landroid/content/Context;)I
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;->getProtectedBrowsingConfig()Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingConfig;->getMaxUpdateEntries(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x800

    :goto_0
    return p0
.end method

.method public final getProtectedBrowsingConfig()Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object p0

    const-string v0, "ProtectedBrowsing"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getFeature(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;

    move-result-object p0

    instance-of v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingConfig;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingConfig;

    return-object p0
.end method

.method public final getSafetyNetApiKeys(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;->getProtectedBrowsingConfig()Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingConfig;->getSafetyNetApiKeys(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, "0"

    :cond_1
    return-object p0
.end method

.method public final getThreatListFetchUpdateSecPeriod(Landroid/content/Context;)J
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;->getProtectedBrowsingConfig()Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingConfig;->getThreatListFetchUpdateSecPeriod(Landroid/content/Context;)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/32 p0, 0x15180

    :goto_0
    return-wide p0
.end method

.method public final getThreatListGetUpdateSecPeriod(Landroid/content/Context;)J
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;->getProtectedBrowsingConfig()Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingConfig;->getThreatListGetUpdateSecPeriod(Landroid/content/Context;)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/32 p0, 0x15180

    :goto_0
    return-wide p0
.end method

.method public final isFakeEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;->getProtectedBrowsingConfig()Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingConfig;->isFakeEnabled(Landroid/content/Context;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isOptIn(Landroid/content/Context;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;->getProtectedBrowsingConfig()Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingConfig;->isOptIn(Landroid/content/Context;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isUpdateApiEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;->getProtectedBrowsingConfig()Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingConfig;->isUpdateApiEnabled(Landroid/content/Context;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
