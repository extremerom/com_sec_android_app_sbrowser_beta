.class public interface abstract Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/stub/StubRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StubListener"
.end annotation


# virtual methods
.method public abstract onGetDownloadUrlFail(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
.end method

.method public abstract onGetDownloadUrlSuccess(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
.end method

.method public abstract onNoMatchingApplication(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
.end method

.method public abstract onUpdateAvailable(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
.end method

.method public abstract onUpdateCheckFail(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
.end method

.method public abstract onUpdateNotNecessary(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
.end method
