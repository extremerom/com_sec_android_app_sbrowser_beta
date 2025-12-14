.class public final LJ6/f;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LJ6/f;->a:I

    iput-object p2, p0, LJ6/f;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    iget v0, p0, LJ6/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LJ6/f;->b:Ljava/lang/Object;

    check-cast p0, Lt/q0;

    invoke-virtual {p0}, Lt/q0;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lt/q0;->show()V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, LJ6/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->p()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onInvalidated()V
    .locals 1

    iget v0, p0, LJ6/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LJ6/f;->b:Ljava/lang/Object;

    check-cast p0, Lt/q0;

    invoke-virtual {p0}, Lt/q0;->dismiss()V

    return-void

    :pswitch_0
    iget-object p0, p0, LJ6/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->p()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
