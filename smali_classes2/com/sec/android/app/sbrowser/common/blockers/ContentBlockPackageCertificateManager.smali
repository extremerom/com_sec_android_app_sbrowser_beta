.class public Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager$LazyHolder;
    }
.end annotation


# static fields
.field private static final HEX_ARRAY:[C


# instance fields
.field private mBlackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;",
            ">;"
        }
    .end annotation
.end field

.field private mInstalledPackageNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNotAvailableSdkApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSentSAStatusLog:Z

.field private mUseFeaturedCategory:Z

.field private mWhiteMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->HEX_ARRAY:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager$1;-><init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->mComparator:Ljava/util/Comparator;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->mBlackMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->mWhiteMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->mNotAvailableSdkApps:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->mInstalledPackageNames:Ljava/util/HashSet;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->mInstalledPackageNames:Ljava/util/HashSet;

    return-object p0
.end method

.method private appendPackageInfo(Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->isWhite()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->mWhiteMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->mBlackMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .locals 7

    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-byte v3, p0, v2

    and-int/lit16 v4, v3, 0xff

    mul-int/lit8 v5, v2, 0x2

    sget-object v6, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->HEX_ARRAY:[C

    ushr-int/lit8 v4, v4, 0x4

    aget-char v4, v6, v4

    aput-char v4, v1, v5

    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v6, v3

    aput-char v3, v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static computeHash([B)Ljava/lang/String;
    .locals 1

    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCurrentGroup(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isForGalaxyApps(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "CN|CHINA"

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->isInitialized()Z

    move-result p0

    const-string p1, "default"

    if-nez p0, :cond_1

    return-object p1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getConfig()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;->getExtensionAppGroup()Ljava/util/Set;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v0

    if-nez p0, :cond_2

    return-object p1

    :cond_2
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    return-object v1

    :cond_4
    return-object p1
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager$LazyHolder;->a()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;

    move-result-object v0

    return-object v0
.end method

.method private getSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 p1, 0x40

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->computeHash([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getSignature Exception: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContentBlock.CertificateManager"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private initializeInternal(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->mWhiteMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->mBlackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->retrievePackages(Landroid/content/Context;)V

    return-void
.end method

.method private retrievePackageListForDebugMode(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    :try_start_0
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x1000

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v6, :cond_0

    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_0

    aget-object v9, v6, v8

    const-string v10, "com.samsung.android.sbrowser.permission.CONTENTBLOCKER"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->mInstalledPackageNames:Ljava/util/HashSet;

    iget-object v10, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    new-instance v6, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v6, v5, v7, v8}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "retrievePackageListForDebugMode: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not found"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ContentBlock.CertificateManager"

    invoke-static {v5, v4}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private sendStatusLogForNumberOfBlockers(Landroid/content/Context;ZLjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->mSentSAStatusLog:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->mSentSAStatusLog:Z

    const-string p0, "0058"

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    const-string p0, "0066"

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getNumberOfInstalledPackagesFromDirectDownload(Landroid/content/Context;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->initializeInternal(Landroid/content/Context;)V

    return-void
.end method

.method public isBlack(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->mBlackMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->getSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBlack(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->mBlackMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNotAvailableSdk(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->mNotAvailableSdkApps:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isWhite(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->mWhiteMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->getSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWhite(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->mWhiteMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public retrievePackages(Landroid/content/Context;)V
    .locals 14

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getConfig()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isUsingFeaturedCategory(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->mUseFeaturedCategory:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->getCurrentGroup(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isForGalaxyApps(Landroid/content/Context;)Z

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->mInstalledPackageNames:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v9

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isActivatedByConfig(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;->getExtensionApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->getGroup()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->getExcludedCountries()Ljava/util/Set;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->getExcludedCountries()Ljava/util/Set;

    move-result-object v11

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    :cond_2
    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->getExcludedDevices()Ljava/util/Set;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->getExcludedDevices()Ljava/util/Set;

    move-result-object v11

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getModelName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->appendPackageInfo(Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;Ljava/lang/String;)V

    invoke-direct {p0, p1, v11}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->getSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->getSignature()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {p1, v11}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->setAppName(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->mInstalledPackageNames:Ljava/util/HashSet;

    invoke-virtual {v12, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->isAvailableSdk()Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->mNotAvailableSdkApps:Ljava/util/Set;

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v10, v5}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->getStoreType(Z)I

    move-result v11

    if-lez v11, :cond_1

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->isSupportedSdk()Z

    move-result v11

    if-eqz v11, :cond_1

    if-eqz v9, :cond_5

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->isGEDSupported()Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_5
    iget-boolean v11, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->mUseFeaturedCategory:Z

    if-eqz v11, :cond_6

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->isFeatured()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {p1, v11}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFileUtils;->getIconFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->mComparator:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->retrievePackageListForDebugMode(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_8
    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setContentBlockerData(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->mComparator:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {p1, v2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setContentBlockerFeaturedData(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->mComparator:Ljava/util/Comparator;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {p1, v3}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setContentBlockerAvailableData(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_9

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    :cond_9
    new-instance v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isNeedToUpdateIcon(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0, p1, v2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;->updateAppIcon(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_2

    :cond_a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    invoke-virtual {v0, p1, v8}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;->updateAppIcon(Landroid/content/Context;Ljava/util/List;)V

    :cond_b
    :goto_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isDebugMode()Z

    move-result v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->sendStatusLogForNumberOfBlockers(Landroid/content/Context;ZLjava/util/ArrayList;)V

    return-void
.end method
