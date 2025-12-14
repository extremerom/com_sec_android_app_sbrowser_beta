.class public interface abstract Lorg/chromium/components/signin/AccountManagerFacade;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/signin/AccountManagerFacade$ChildAccountStatusListener;,
        Lorg/chromium/components/signin/AccountManagerFacade$GetAccessTokenCallback;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract checkChildAccountStatus(Lorg/chromium/components/signin/base/CoreAccountInfo;Lorg/chromium/components/signin/AccountManagerFacade$ChildAccountStatusListener;)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract getAccessToken(Lorg/chromium/components/signin/base/CoreAccountInfo;Ljava/lang/String;Lorg/chromium/components/signin/AccountManagerFacade$GetAccessTokenCallback;)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract getAccountCapabilities(Lorg/chromium/components/signin/base/CoreAccountInfo;)Lorg/chromium/base/Promise;
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/components/signin/base/CoreAccountInfo;",
            ")",
            "Lorg/chromium/base/Promise<",
            "Lorg/chromium/components/signin/base/AccountCapabilities;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCoreAccountInfos()Lorg/chromium/base/Promise;
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/chromium/base/Promise<",
            "Ljava/util/List<",
            "Lorg/chromium/components/signin/base/CoreAccountInfo;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract invalidateAccessToken(Ljava/lang/String;Ljava/lang/Runnable;)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method
