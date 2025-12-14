.class public Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderPermissionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALLOWED_PACKAGE_LIST:[Ljava/lang/String;

.field private static final sAllowedPkgSet:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPlatformKey:Ljava/lang/String;

.field private static final sSignatureMap:Ljava/util/Map;
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
    .locals 18

    const-string v16, "com.sec.android.app.showbookmarkspanel"

    const-string v17, "com.sec.android.easyMover"

    const-string v0, "com.sec.android.app.sbrowser.beta"

    const-string v1, "com.android.settings"

    const-string v2, "com.salab.ABRT"

    const-string v3, "com.samsung.Gate.GMA"

    const-string v4, "com.samsung.android.app.galaxyfinder"

    const-string v5, "com.samsung.android.app.sbrowseredge"

    const-string v6, "com.samsung.android.bixby.agent"

    const-string v7, "com.samsung.android.familyctrl"

    const-string v8, "com.samsung.android.messaging"

    const-string v9, "com.samsung.android.moneta"

    const-string v10, "com.samsung.android.rubin.app"

    const-string v11, "com.samsung.android.scloud"

    const-string v12, "com.samsung.android.smartsuggestions"

    const-string v13, "com.samsung.sec.android.application.csc"

    const-string v14, "com.samsung.svoice.sync"

    const-string v15, "com.sec.android.app.launcher"

    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderPermissionManager;->ALLOWED_PACKAGE_LIST:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderPermissionManager;->sAllowedPkgSet:Ljava/util/Collection;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderPermissionManager;->sSignatureMap:Ljava/util/Map;

    return-void
.end method

.method public static checkAllowedSet(Landroid/content/Context;)Z
    .locals 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderPermissionManager;->initAllowedPackageSet(Landroid/content/Context;)V

    const-string v1, "checkAllowedSet"

    const-string v3, "SBrowserProviderPermissionManager"

    invoke-static {v3, v1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v4, v0

    if-lez v4, :cond_2

    array-length v4, v0

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v0, v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "checkAllowedSet pkg : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v1

    sget-object v7, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderPermissionManager;->sAllowedPkgSet:Ljava/util/Collection;

    invoke-interface {v7, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {p0, v6}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderPermissionManager;->getPackageSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderPermissionManager;->isPlatformKeySigned(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    return v2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "checkAllowedSet pkgs empty"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v2
.end method

.method private static getPackageSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderPermissionManager;->sSignatureMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "SBrowserProviderPermissionManager"

    if-eqz v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getPackageSignature hit : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x40

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object p0, p0, v3

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static initAllowedPackageSet(Landroid/content/Context;)V
    .locals 2

    sget-object p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderPermissionManager;->sAllowedPkgSet:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SBrowserProviderPermissionManager"

    const-string v1, "initAllowedPackageSet first time"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderPermissionManager;->ALLOWED_PACKAGE_LIST:[Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static isPlatformKeySigned(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderPermissionManager;->sPlatformKey:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderPermissionManager;->getPackageSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderPermissionManager;->sPlatformKey:Ljava/lang/String;

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderPermissionManager;->sPlatformKey:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
