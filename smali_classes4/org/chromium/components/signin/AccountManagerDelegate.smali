.class public interface abstract Lorg/chromium/components/signin/AccountManagerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/signin/AccountManagerDelegate$CapabilityResponse;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract attachAccountsChangeObserver(Lorg/chromium/components/signin/AccountsChangeObserver;)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract getAccessToken(Landroid/accounts/Account;Ljava/lang/String;)Lorg/chromium/components/signin/AccessTokenData;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract getAccountGaiaId(Ljava/lang/String;)Lorg/chromium/components/signin/base/GaiaId;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract getAccountsSynchronous()[Landroid/accounts/Account;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract hasCapability(Landroid/accounts/Account;Ljava/lang/String;)I
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract hasFeature(Landroid/accounts/Account;Ljava/lang/String;)Z
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract invalidateAccessToken(Ljava/lang/String;)V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method
