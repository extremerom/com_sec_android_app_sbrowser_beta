.class Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0xfa0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
