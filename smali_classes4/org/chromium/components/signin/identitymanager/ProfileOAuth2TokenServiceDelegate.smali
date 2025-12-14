.class final Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAccountManagerFacade:Lorg/chromium/components/signin/AccountManagerFacade;


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacadeProvider;->getInstance()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate;->mAccountManagerFacade:Lorg/chromium/components/signin/AccountManagerFacade;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate;->lambda$getAccessTokenFromNative$1(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(J)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate;->lambda$getAccessTokenFromNative$0(J)V

    return-void
.end method

.method private getAccessTokenFromNative(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate;->mAccountManagerFacade:Lorg/chromium/components/signin/AccountManagerFacade;

    invoke-interface {v0}, Lorg/chromium/components/signin/AccountManagerFacade;->getCoreAccountInfos()Lorg/chromium/base/Promise;

    move-result-object v0

    new-instance v7, Lorg/chromium/components/signin/identitymanager/a;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/chromium/components/signin/identitymanager/a;-><init>(Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v7}, Lorg/chromium/base/Promise;->then(Lorg/chromium/base/Callback;)V

    return-void
.end method

.method private static synthetic lambda$getAccessTokenFromNative$0(J)V
    .locals 7

    invoke-static {}, Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegateJni;->get()Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate$Natives;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    move-wide v5, p0

    invoke-interface/range {v0 .. v6}, Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate$Natives;->onOAuth2TokenFetched(Ljava/lang/String;JZJ)V

    return-void
.end method

.method private synthetic lambda$getAccessTokenFromNative$1(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V
    .locals 1

    invoke-static {p5, p1}, Lorg/chromium/components/signin/AccountUtils;->findCoreAccountInfoByEmail(Ljava/util/List;Ljava/lang/String;)Lorg/chromium/components/signin/base/CoreAccountInfo;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p0, Lorg/chromium/components/signin/identitymanager/b;

    invoke-direct {p0, p2, p3}, Lorg/chromium/components/signin/identitymanager/b;-><init>(J)V

    invoke-static {p0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string p5, "oauth2:"

    invoke-static {p5, p4}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate;->mAccountManagerFacade:Lorg/chromium/components/signin/AccountManagerFacade;

    new-instance v0, Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate$1;

    invoke-direct {v0, p0, p2, p3}, Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate$1;-><init>(Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate;J)V

    invoke-interface {p5, p1, p4, v0}, Lorg/chromium/components/signin/AccountManagerFacade;->getAccessToken(Lorg/chromium/components/signin/base/CoreAccountInfo;Ljava/lang/String;Lorg/chromium/components/signin/AccountManagerFacade$GetAccessTokenCallback;)V

    return-void
.end method


# virtual methods
.method public hasOAuth2RefreshToken(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate;->mAccountManagerFacade:Lorg/chromium/components/signin/AccountManagerFacade;

    invoke-interface {p0}, Lorg/chromium/components/signin/AccountManagerFacade;->getCoreAccountInfos()Lorg/chromium/base/Promise;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/base/Promise;->isFulfilled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/base/Promise;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0, p1}, Lorg/chromium/components/signin/AccountUtils;->findCoreAccountInfoByEmail(Ljava/util/List;Ljava/lang/String;)Lorg/chromium/components/signin/base/CoreAccountInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public invalidateAccessToken(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate;->mAccountManagerFacade:Lorg/chromium/components/signin/AccountManagerFacade;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lorg/chromium/components/signin/AccountManagerFacade;->invalidateAccessToken(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
