.class public final Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$TimeoutBitmapCallback$initTimer$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$TimeoutBitmapCallback;->initTimer(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "com/sec/android/app/sbrowser/main_view/MainViewBitmapManager$TimeoutBitmapCallback$initTimer$1",
        "Ljava/util/TimerTask;",
        "Ldb/r;",
        "run",
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
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$TimeoutBitmapCallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$TimeoutBitmapCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$TimeoutBitmapCallback$initTimer$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$TimeoutBitmapCallback;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$TimeoutBitmapCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$TimeoutBitmapCallback$initTimer$1;->run$lambda$0(Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$TimeoutBitmapCallback;)V

    return-void
.end method

.method private static final run$lambda$0(Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$TimeoutBitmapCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$TimeoutBitmapCallback;->access$onResult(Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$TimeoutBitmapCallback;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "si__MainViewBitmapManager"

    const-string v1, "[initTimer] timeout occurs"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$TimeoutBitmapCallback$initTimer$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$TimeoutBitmapCallback;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/main_view/b;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
