.class public final synthetic Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/animation/Animation;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;ILandroid/view/animation/Animation;)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/a;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/a;->c:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/a;->b:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/a;->c:Landroid/view/animation/Animation;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->f(Landroid/view/View;Landroid/view/animation/Animation;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/a;->b:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/a;->c:Landroid/view/animation/Animation;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->b(Landroid/view/View;Landroid/view/animation/Animation;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
