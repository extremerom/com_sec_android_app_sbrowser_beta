.class public final synthetic Lcom/sec/android/app/sbrowser/media/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/media/MediaHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/media/MediaHandler;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/media/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/a;->b:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/media/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/a;->b:Lcom/sec/android/app/sbrowser/media/MediaHandler;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->c(Lcom/sec/android/app/sbrowser/media/MediaHandler;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->i(Lcom/sec/android/app/sbrowser/media/MediaHandler;)V

    return-void

    :pswitch_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->j(Lcom/sec/android/app/sbrowser/media/MediaHandler;)V

    return-void

    :pswitch_2
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->d(Lcom/sec/android/app/sbrowser/media/MediaHandler;)V

    return-void

    :pswitch_3
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->h(Lcom/sec/android/app/sbrowser/media/MediaHandler;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
