.class final Lorg/chromium/components/signin/ChildAccountInfoFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/signin/ChildAccountInfoFetcher$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAccountFlagsChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mCoreAccountInfo:Lorg/chromium/components/signin/base/CoreAccountInfo;

.field private final mNativeAccountFetcherService:J


# direct methods
.method private constructor <init>(JLorg/chromium/components/signin/base/CoreAccountInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->mNativeAccountFetcherService:J

    iput-object p3, p0, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->mCoreAccountInfo:Lorg/chromium/components/signin/base/CoreAccountInfo;

    new-instance p1, Lorg/chromium/components/signin/ChildAccountInfoFetcher$1;

    invoke-direct {p1, p0}, Lorg/chromium/components/signin/ChildAccountInfoFetcher$1;-><init>(Lorg/chromium/components/signin/ChildAccountInfoFetcher;)V

    iput-object p1, p0, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->mAccountFlagsChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "com.google.android.gms.auth.ACCOUNT_SERVICES_CHANGED"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "com.google.android.gms.auth.permission.GOOGLE_ACCOUNT_CHANGE"

    invoke-static {p2, p1, p3, v0}, Lorg/chromium/base/ContextUtils;->registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0}, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->fetch()V

    return-void
.end method

.method public static synthetic a(Lorg/chromium/components/signin/ChildAccountInfoFetcher;ZLorg/chromium/components/signin/base/CoreAccountInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->onChildAccountStatusReady(ZLorg/chromium/components/signin/base/CoreAccountInfo;)V

    return-void
.end method

.method public static bridge synthetic b(Lorg/chromium/components/signin/ChildAccountInfoFetcher;)Lorg/chromium/components/signin/base/CoreAccountInfo;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->mCoreAccountInfo:Lorg/chromium/components/signin/base/CoreAccountInfo;

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/chromium/components/signin/ChildAccountInfoFetcher;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->fetch()V

    return-void
.end method

.method private static create(JLorg/chromium/components/signin/base/CoreAccountInfo;)Lorg/chromium/components/signin/ChildAccountInfoFetcher;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/components/signin/ChildAccountInfoFetcher;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/components/signin/ChildAccountInfoFetcher;-><init>(JLorg/chromium/components/signin/base/CoreAccountInfo;)V

    return-object v0
.end method

.method private destroy()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->mAccountFlagsChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private fetch()V
    .locals 3

    iget-object v0, p0, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->mCoreAccountInfo:Lorg/chromium/components/signin/base/CoreAccountInfo;

    invoke-virtual {v0}, Lorg/chromium/components/signin/base/CoreAccountInfo;->getEmail()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "signin"

    const-string v2, "Checking child account status for %s"

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacadeProvider;->getInstance()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->mCoreAccountInfo:Lorg/chromium/components/signin/base/CoreAccountInfo;

    new-instance v2, Lorg/chromium/components/signin/d;

    invoke-direct {v2, p0}, Lorg/chromium/components/signin/d;-><init>(Lorg/chromium/components/signin/ChildAccountInfoFetcher;)V

    invoke-interface {v0, v1, v2}, Lorg/chromium/components/signin/AccountManagerFacade;->checkChildAccountStatus(Lorg/chromium/components/signin/base/CoreAccountInfo;Lorg/chromium/components/signin/AccountManagerFacade$ChildAccountStatusListener;)V

    return-void
.end method

.method private onChildAccountStatusReady(ZLorg/chromium/components/signin/base/CoreAccountInfo;)V
    .locals 2

    iget-object p2, p0, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->mCoreAccountInfo:Lorg/chromium/components/signin/base/CoreAccountInfo;

    invoke-virtual {p2}, Lorg/chromium/components/signin/base/CoreAccountInfo;->getEmail()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "signin"

    const-string v1, "Setting child account status for %s to %s"

    invoke-static {v0, v1, p2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lorg/chromium/components/signin/ChildAccountInfoFetcherJni;->get()Lorg/chromium/components/signin/ChildAccountInfoFetcher$Natives;

    move-result-object p2

    iget-wide v0, p0, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->mNativeAccountFetcherService:J

    iget-object p0, p0, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->mCoreAccountInfo:Lorg/chromium/components/signin/base/CoreAccountInfo;

    invoke-virtual {p0}, Lorg/chromium/components/signin/base/CoreAccountInfo;->getId()Lorg/chromium/components/signin/base/CoreAccountId;

    move-result-object p0

    invoke-interface {p2, v0, v1, p0, p1}, Lorg/chromium/components/signin/ChildAccountInfoFetcher$Natives;->setIsChildAccount(JLorg/chromium/components/signin/base/CoreAccountId;Z)V

    return-void
.end method
