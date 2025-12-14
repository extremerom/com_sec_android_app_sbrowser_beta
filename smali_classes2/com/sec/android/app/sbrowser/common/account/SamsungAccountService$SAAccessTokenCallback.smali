.class public interface abstract Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SAAccessTokenCallback"
.end annotation


# virtual methods
.method public abstract onAccessTokenAcquired(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onAuthTokenExpiredError()V
.end method

.method public abstract onConsentListReceived(ZLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onNoAccountError()V
.end method
