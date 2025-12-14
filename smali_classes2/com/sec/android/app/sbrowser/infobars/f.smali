.class public final synthetic Lcom/sec/android/app/sbrowser/infobars/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/infobars/f;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/f;->b:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/infobars/f;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/f;->b:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->e(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->f(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;)V

    return-void

    :pswitch_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->a(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;)V

    return-void

    :pswitch_2
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->c(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
