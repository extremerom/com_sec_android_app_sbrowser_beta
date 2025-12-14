.class public final synthetic Lsa/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;I)V
    .locals 0

    iput p2, p0, Lsa/a;->a:I

    iput-object p1, p0, Lsa/a;->b:Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;)V
    .locals 1

    iget v0, p0, Lsa/a;->a:I

    iget-object p0, p0, Lsa/a;->b:Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->d(Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->e(Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
