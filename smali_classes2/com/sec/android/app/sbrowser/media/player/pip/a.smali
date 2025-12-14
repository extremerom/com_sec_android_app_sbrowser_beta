.class public final synthetic Lcom/sec/android/app/sbrowser/media/player/pip/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/player/pip/a;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/pip/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$DismissActivityOnStop;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->a(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$DismissActivityOnStop;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/terrace/Terrace;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->c(Lcom/sec/terrace/Terrace;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
