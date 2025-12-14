.class public final synthetic Lw6/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lw6/q;


# direct methods
.method public synthetic constructor <init>(Lw6/q;I)V
    .locals 0

    iput p2, p0, Lw6/k;->a:I

    iput-object p1, p0, Lw6/k;->b:Lw6/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget v0, p0, Lw6/k;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lw6/k;->b:Lw6/q;

    invoke-static {p0}, Lw6/q;->c(Lw6/q;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lw6/k;->b:Lw6/q;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b01ca

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    :goto_0
    move v1, p1

    goto :goto_1

    :cond_0
    const v0, 0x7f0b0b62

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    goto :goto_0

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v5, 0xe

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lw6/q;->d(Lw6/q;IZZZI)V

    iget-object p0, p0, Lw6/q;->I:Landroid/widget/PopupWindow;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
