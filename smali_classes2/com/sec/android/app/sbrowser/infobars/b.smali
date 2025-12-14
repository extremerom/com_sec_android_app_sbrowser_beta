.class public final synthetic Lcom/sec/android/app/sbrowser/infobars/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/infobars/b;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/b;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/infobars/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/b;->b:Landroid/view/ViewGroup;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->a(Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->f(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
