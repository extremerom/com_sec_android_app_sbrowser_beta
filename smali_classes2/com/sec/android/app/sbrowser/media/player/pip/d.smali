.class public final synthetic Lcom/sec/android/app/sbrowser/media/player/pip/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/media/player/pip/d;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/pip/d;->b:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/d;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/d;->b:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;->removeCallbackForPlaybackStateChange()V

    return-void

    :pswitch_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;->removeCallbackForExitFullscreenMode()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
