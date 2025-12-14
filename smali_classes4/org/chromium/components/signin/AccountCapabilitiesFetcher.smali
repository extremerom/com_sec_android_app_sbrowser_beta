.class public Lorg/chromium/components/signin/AccountCapabilitiesFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/signin/AccountCapabilitiesFetcher$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mCoreAccountInfo:Lorg/chromium/components/signin/base/CoreAccountInfo;

.field private mNativeCallback:J


# direct methods
.method public constructor <init>(Lorg/chromium/components/signin/base/CoreAccountInfo;J)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/signin/AccountCapabilitiesFetcher;->mCoreAccountInfo:Lorg/chromium/components/signin/base/CoreAccountInfo;

    iput-wide p2, p0, Lorg/chromium/components/signin/AccountCapabilitiesFetcher;->mNativeCallback:J

    return-void
.end method

.method public static synthetic a(Lorg/chromium/components/signin/AccountCapabilitiesFetcher;Lorg/chromium/components/signin/base/AccountCapabilities;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/signin/AccountCapabilitiesFetcher;->lambda$startFetchingAccountCapabilities$0(Lorg/chromium/components/signin/base/AccountCapabilities;)V

    return-void
.end method

.method private synthetic lambda$startFetchingAccountCapabilities$0(Lorg/chromium/components/signin/base/AccountCapabilities;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/signin/AccountCapabilitiesFetcher;->onCapabilitiesFetchComplete(Lorg/chromium/components/signin/base/AccountCapabilities;)V

    return-void
.end method

.method private onCapabilitiesFetchComplete(Lorg/chromium/components/signin/base/AccountCapabilities;)V
    .locals 3

    invoke-static {}, Lorg/chromium/components/signin/AccountCapabilitiesFetcherJni;->get()Lorg/chromium/components/signin/AccountCapabilitiesFetcher$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/signin/AccountCapabilitiesFetcher;->mNativeCallback:J

    invoke-interface {v0, p1, v1, v2}, Lorg/chromium/components/signin/AccountCapabilitiesFetcher$Natives;->onCapabilitiesFetchComplete(Lorg/chromium/components/signin/base/AccountCapabilities;J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/components/signin/AccountCapabilitiesFetcher;->mNativeCallback:J

    return-void
.end method


# virtual methods
.method public startFetchingAccountCapabilities()V
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacadeProvider;->getInstance()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/signin/AccountCapabilitiesFetcher;->mCoreAccountInfo:Lorg/chromium/components/signin/base/CoreAccountInfo;

    invoke-interface {v0, v1}, Lorg/chromium/components/signin/AccountManagerFacade;->getAccountCapabilities(Lorg/chromium/components/signin/base/CoreAccountInfo;)Lorg/chromium/base/Promise;

    move-result-object v0

    new-instance v1, Lorg/chromium/components/signin/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lorg/chromium/components/signin/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/chromium/base/Promise;->then(Lorg/chromium/base/Callback;)V

    return-void
.end method
