.class public final synthetic Lj9/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lj9/c;->a:I

    iput-object p2, p0, Lj9/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lj9/c;->b:Ljava/lang/Object;

    iget p0, p0, Lj9/c;->a:I

    packed-switch p0, :pswitch_data_0

    sget p0, Landroidx/appcompat/widget/Toolbar;->a:I

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sec/android/app/sbrowser/widget/a;

    const/16 v1, 0x16

    invoke-direct {p0, v1, v0, v0}, Lcom/sec/android/app/sbrowser/widget/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    const-string p0, "this$0"

    check-cast v0, Lj9/h;

    invoke-static {v0, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, v0, Lj9/h;->i:Lj9/f;

    sget-object v1, Lj9/f;->RUNNING:Lj9/f;

    if-ne p0, v1, :cond_0

    invoke-virtual {v0}, Lj9/h;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lj9/h;->j(Z)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
