.class public interface abstract Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract clearWithRefresh()V
.end method

.method public abstract get()Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;
.end method
