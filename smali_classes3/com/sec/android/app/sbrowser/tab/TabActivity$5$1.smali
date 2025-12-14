.class Lcom/sec/android/app/sbrowser/tab/TabActivity$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab/TabObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/tab/TabActivity$5;->addCallbackForExitFullscreenMode(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/tab/TabActivity$5;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab/TabActivity$5;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$5$1;->this$1:Lcom/sec/android/app/sbrowser/tab/TabActivity$5;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$5$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFullscreenModeChanged(ZZ)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$5$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$5$1;->this$1:Lcom/sec/android/app/sbrowser/tab/TabActivity$5;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$5;->this$0:Lcom/sec/android/app/sbrowser/tab/TabActivity;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mPictureInPictureController:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->updateAutoPictureInPictureStatus(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
