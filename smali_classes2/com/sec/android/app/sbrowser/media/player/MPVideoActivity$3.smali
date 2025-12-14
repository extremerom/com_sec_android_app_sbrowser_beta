.class Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity$3;
.super Landroidx/activity/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity$3;->this$0:Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;

    invoke-direct {p0, p2}, Landroidx/activity/u;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleOnBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity$3;->this$0:Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->g(Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity$3;->this$0:Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->g(Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->handleOnBackPressInVideoFullscreen()V

    :cond_0
    return-void
.end method
