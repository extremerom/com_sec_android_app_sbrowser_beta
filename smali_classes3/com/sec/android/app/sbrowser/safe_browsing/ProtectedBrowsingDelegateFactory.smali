.class public final Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingDelegateFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate$DelegateFactory;


# static fields
.field private static sInstance:Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingDelegateFactory;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingDelegateFactory;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingDelegateFactory;->sInstance:Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingDelegateFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingDelegateFactory;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingDelegateFactory;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingDelegateFactory;->sInstance:Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingDelegateFactory;

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingDelegateFactory;->sInstance:Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingDelegateFactory;

    return-object v0
.end method


# virtual methods
.method public getDelegate()Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate$Delegate;
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;->isSaferBrowsingSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;-><init>()V

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/utils/SBrowserFlags;->isSafetyNetApiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;->isFakeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;-><init>()V

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isFakeEnabled : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;->isFakeEnabled(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ProtectedBrowsingDelegateFactory"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
