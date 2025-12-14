.class public interface abstract Lorg/chromium/components/signin/AccountManagerFacade$GetAccessTokenCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/signin/AccountManagerFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetAccessTokenCallback"
.end annotation


# virtual methods
.method public abstract onGetTokenFailure(Z)V
.end method

.method public abstract onGetTokenSuccess(Lorg/chromium/components/signin/AccessTokenData;)V
.end method
