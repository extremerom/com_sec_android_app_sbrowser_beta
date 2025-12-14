.class public abstract Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnUiThread;
.super Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ResultCallbackOnUiThread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallback<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public invokeOnResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnUiThread$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnUiThread$1;-><init>(Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnUiThread;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
