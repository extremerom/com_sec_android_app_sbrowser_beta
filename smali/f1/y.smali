.class public final synthetic Lf1/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lf1/y;->a:I

    iput-object p2, p0, Lf1/y;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lf1/y;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ldb/r;

    iget-object p0, p0, Lf1/y;->b:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lw6/q;

    const-string p0, "this$0"

    invoke-static {v0, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "it"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, v0, Lw6/q;->u:Ly6/b;

    instance-of p1, p0, Ly6/c;

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Ly6/b;->p:Z

    if-nez p0, :cond_1

    iget-object p0, v0, Lw6/q;->e0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object p0, v0, Lw6/q;->f0:LZ3/x;

    const p1, 0x3f828f5c    # 1.02f

    invoke-virtual {p0, p1, p1}, LZ3/x;->l(FF)V

    goto/16 :goto_2

    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lw6/q;->j(I)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "Can\'t change to floatingMode. It is not allowed"

    invoke-static {v0, p0}, Lv6/a;->b(Lw6/a;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    iget p0, v0, Lw6/q;->s:I

    invoke-static {p0, v1}, Lw6/b;->a(II)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    iget-object p0, v0, Lw6/q;->r:Ljava/util/LinkedHashMap;

    new-instance p1, Lw6/b;

    invoke-direct {p1, v1}, Lw6/b;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly6/b;

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ly6/b;->v(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, v0, Lw6/q;->q:LMd/c;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, LMd/c;->f(I)V

    new-instance p1, Lw6/b;

    const/4 v3, 0x4

    invoke-direct {p1, v3}, Lw6/b;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ly6/c;

    if-eqz p1, :cond_5

    check-cast p0, Ly6/c;

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Ly6/b;->m()I

    move-result p1

    int-to-float p1, p1

    int-to-float v3, v2

    div-float/2addr p1, v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, p0, Ly6/c;->A:I

    iget v3, v0, Lw6/q;->s:I

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lw6/b;->a(II)Z

    move-result v3

    if-nez v3, :cond_7

    iget v3, v0, Lw6/q;->s:I

    invoke-static {v3, v2}, Lw6/b;->a(II)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lw6/q;->z:F

    add-float/2addr v2, v3

    sub-float/2addr v2, p1

    float-to-int p1, v2

    iput p1, p0, Ly6/c;->z:I

    :cond_8
    :goto_1
    const/4 v2, 0x0

    const/16 v5, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lw6/q;->d(Lw6/q;IZZZI)V

    :goto_2
    return-void

    :pswitch_0
    check-cast p1, Landroid/view/ViewGroup;

    iget-object p0, p0, Lf1/y;->b:Ljava/lang/Object;

    check-cast p0, Lm/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    const p0, 0x7f0b01eb

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    if-nez p0, :cond_a

    goto :goto_3

    :cond_a
    new-instance p1, Lcom/sec/android/app/sbrowser/tab_sync/o;

    const/16 v0, 0xb

    invoke-direct {p1, v0, p0}, Lcom/sec/android/app/sbrowser/tab_sync/o;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_3
    return-void

    :pswitch_1
    iget-object p0, p0, Lf1/y;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    check-cast p1, Lf1/D;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
