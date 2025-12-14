.class public final synthetic Lcom/sec/android/app/sbrowser/save_image/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/save_image/b;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/b;->b:Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/b;->b:Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->h(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->i(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;)V

    return-void

    :pswitch_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->j(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;)V

    return-void

    :pswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
