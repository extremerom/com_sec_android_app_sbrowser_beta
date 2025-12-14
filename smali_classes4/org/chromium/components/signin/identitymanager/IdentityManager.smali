.class public Lorg/chromium/components/signin/identitymanager/IdentityManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/signin/identitymanager/IdentityManager$Observer;,
        Lorg/chromium/components/signin/identitymanager/IdentityManager$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mNativeIdentityManager:J

.field private final mObservers:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/components/signin/identitymanager/IdentityManager$Observer;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileOAuth2TokenServiceDelegate:Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate;

.field private mRefreshTokenUpdateObserver:Lorg/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/Callback<",
            "Lorg/chromium/components/signin/base/CoreAccountInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(JLorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/signin/identitymanager/IdentityManager;->mObservers:Lorg/chromium/base/ObserverList;

    iput-wide p1, p0, Lorg/chromium/components/signin/identitymanager/IdentityManager;->mNativeIdentityManager:J

    iput-object p3, p0, Lorg/chromium/components/signin/identitymanager/IdentityManager;->mProfileOAuth2TokenServiceDelegate:Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate;

    return-void
.end method

.method public static create(JLorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate;)Lorg/chromium/components/signin/identitymanager/IdentityManager;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/components/signin/identitymanager/IdentityManager;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/components/signin/identitymanager/IdentityManager;-><init>(JLorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate;)V

    return-object v0
.end method

.method private destroy()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/components/signin/identitymanager/IdentityManager;->mNativeIdentityManager:J

    return-void
.end method

.method private getNativePointer()J
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lorg/chromium/components/signin/identitymanager/IdentityManager;->mNativeIdentityManager:J

    return-wide v0
.end method

.method private onRefreshTokenUpdatedForAccount(Lorg/chromium/components/signin/base/CoreAccountInfo;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/signin/identitymanager/IdentityManager;->mRefreshTokenUpdateObserver:Lorg/chromium/base/Callback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAccountsWithRefreshTokens()[Lorg/chromium/components/signin/base/CoreAccountInfo;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lorg/chromium/components/signin/identitymanager/IdentityManagerJni;->get()Lorg/chromium/components/signin/identitymanager/IdentityManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/signin/identitymanager/IdentityManager;->mNativeIdentityManager:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/components/signin/identitymanager/IdentityManager$Natives;->getAccountsWithRefreshTokens(J)[Lorg/chromium/components/signin/base/CoreAccountInfo;

    move-result-object p0

    return-object p0
.end method

.method public onAccountsCookieDeletedByUserAction()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/signin/identitymanager/IdentityManager;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/signin/identitymanager/IdentityManager$Observer;

    invoke-interface {v0}, Lorg/chromium/components/signin/identitymanager/IdentityManager$Observer;->onAccountsCookieDeletedByUserAction()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onExtendedAccountInfoUpdated(Lorg/chromium/components/signin/base/AccountInfo;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/signin/identitymanager/IdentityManager;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/signin/identitymanager/IdentityManager$Observer;

    invoke-interface {v0, p1}, Lorg/chromium/components/signin/identitymanager/IdentityManager$Observer;->onExtendedAccountInfoUpdated(Lorg/chromium/components/signin/base/AccountInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPrimaryAccountChanged(Lorg/chromium/components/signin/identitymanager/PrimaryAccountChangeEvent;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/signin/identitymanager/IdentityManager;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/signin/identitymanager/IdentityManager$Observer;

    invoke-interface {v0, p1}, Lorg/chromium/components/signin/identitymanager/IdentityManager$Observer;->onPrimaryAccountChanged(Lorg/chromium/components/signin/identitymanager/PrimaryAccountChangeEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method
