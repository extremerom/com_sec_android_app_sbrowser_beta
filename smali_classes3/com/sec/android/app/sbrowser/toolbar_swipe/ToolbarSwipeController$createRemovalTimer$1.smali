.class public final Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$createRemovalTimer$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->createRemovalTimer()Landroid/os/CountDownTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "com/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$createRemovalTimer$1",
        "Landroid/os/CountDownTimer;",
        "",
        "millisUntilFinished",
        "Ldb/r;",
        "onTick",
        "(J)V",
        "onFinish",
        "()V",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;)V
    .locals 4

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$createRemovalTimer$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;

    const-wide/16 v0, 0x12c

    const-wide/16 v2, 0x32

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const-string v0, "ToolbarSwipeController"

    const-string v1, "[createSwipeViewRemovalTimer] onFinish()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$createRemovalTimer$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->access$removeSwipeViewAfterRendererShown(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
