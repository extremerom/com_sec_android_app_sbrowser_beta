.class public final Lm9/g;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lm9/g;->a:I

    iput-object p2, p0, Lm9/g;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x1

    const-string v1, "it"

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Ldb/r;->a:Ldb/r;

    iget-object v5, p0, Lm9/g;->b:Ljava/lang/Object;

    iget p0, p0, Lm9/g;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lx1/q;

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lx1/d;

    if-nez p0, :cond_1

    instance-of p0, p1, Ly1/b;

    if-eqz p0, :cond_0

    check-cast v5, Lx1/l;

    instance-of p0, v5, Lz1/J;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz0/s;

    check-cast v5, Lz0/t;

    iget-object v1, v5, Lz0/t;->m:Lc0/d;

    invoke-virtual {v1, p0}, Lc0/d;->j(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_3

    iget v1, v5, Lz0/t;->e:I

    if-lt p0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lz0/s;->a()V

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/Throwable;

    check-cast v5, Lx0/j;

    iget-object p0, v5, Lx0/j;->c:LNc/k;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, LNc/k;->i(Ljava/lang/Throwable;)Z

    :cond_4
    iput-object v3, v5, Lx0/j;->c:LNc/k;

    return-object v4

    :pswitch_2
    check-cast p1, Landroid/view/MotionEvent;

    check-cast v5, Lx0/g;

    iget-object p0, v5, Lx0/g;->a:LJ0/b;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, LJ0/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    :cond_5
    const-string p0, "onTouchEvent"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v3

    :pswitch_3
    check-cast p1, Ljava/lang/Throwable;

    check-cast v5, Lv2/q1;

    iget-object p0, v5, Lv2/q1;->a:LPc/i;

    invoke-virtual {p0, v2, v3}, LPc/i;->h(ZLjava/lang/Throwable;)Z

    return-object v4

    :pswitch_4
    check-cast p1, Ljava/lang/Throwable;

    check-cast v5, LA7/c;

    iget-object p0, v5, LA7/c;->a:Ljava/lang/Object;

    check-cast p0, LQc/m0;

    invoke-virtual {p0, v3}, LQc/m0;->a(Ljava/lang/Object;)Z

    return-object v4

    :pswitch_5
    check-cast p1, Lv2/s;

    const-string p0, "loadState"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lv2/i;

    iget-object p0, v5, Lv2/i;->d:LQc/A0;

    invoke-virtual {p0}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_6

    iget-object p0, v5, Lv2/i;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsb/k;

    invoke-interface {v0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    iget-object p0, v5, Lv2/i;->n:Ldb/o;

    invoke-virtual {p0}, Ldb/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    iget-object v0, v5, Lv2/i;->o:Lc5/A;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lc5/A;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-object v4

    :pswitch_6
    check-cast p1, Ls0/f;

    check-cast v5, Ls0/h;

    iget p0, v5, Ls0/h;->k:F

    iget v0, p1, Ls0/f;->a:F

    cmpg-float v0, v0, p0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    iput p0, p1, Ls0/f;->a:F

    :goto_4
    iget p0, v5, Ls0/h;->l:F

    iget v0, p1, Ls0/f;->b:F

    cmpg-float v0, v0, p0

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    iput p0, p1, Ls0/f;->b:F

    :goto_5
    iget p0, v5, Ls0/h;->m:F

    iget v0, p1, Ls0/f;->c:F

    cmpg-float v0, v0, p0

    if-nez v0, :cond_a

    goto :goto_6

    :cond_a
    iput p0, p1, Ls0/f;->c:F

    :goto_6
    iget p0, v5, Ls0/h;->n:F

    iget v0, p1, Ls0/f;->d:F

    cmpg-float v0, v0, p0

    if-nez v0, :cond_b

    goto :goto_7

    :cond_b
    iput p0, p1, Ls0/f;->d:F

    :goto_7
    iget p0, v5, Ls0/h;->o:F

    iget v0, p1, Ls0/f;->e:F

    cmpg-float v0, v0, p0

    if-nez v0, :cond_c

    goto :goto_8

    :cond_c
    iput p0, p1, Ls0/f;->e:F

    :goto_8
    iget p0, v5, Ls0/h;->p:F

    iget v0, p1, Ls0/f;->f:F

    cmpg-float v0, v0, p0

    if-nez v0, :cond_d

    goto :goto_9

    :cond_d
    iput p0, p1, Ls0/f;->f:F

    :goto_9
    iget p0, v5, Ls0/h;->q:F

    iget v0, p1, Ls0/f;->i:F

    cmpg-float v0, v0, p0

    if-nez v0, :cond_e

    goto :goto_a

    :cond_e
    iput p0, p1, Ls0/f;->i:F

    :goto_a
    iget p0, v5, Ls0/h;->r:F

    iget v0, p1, Ls0/f;->j:F

    cmpg-float v0, v0, p0

    if-nez v0, :cond_f

    goto :goto_b

    :cond_f
    iput p0, p1, Ls0/f;->j:F

    :goto_b
    iget p0, v5, Ls0/h;->s:F

    iget v0, p1, Ls0/f;->k:F

    cmpg-float v0, v0, p0

    if-nez v0, :cond_10

    goto :goto_c

    :cond_10
    iput p0, p1, Ls0/f;->k:F

    :goto_c
    iget p0, v5, Ls0/h;->t:F

    iget v0, p1, Ls0/f;->l:F

    cmpg-float v0, v0, p0

    if-nez v0, :cond_11

    goto :goto_d

    :cond_11
    iput p0, p1, Ls0/f;->l:F

    :goto_d
    iget-wide v0, v5, Ls0/h;->u:J

    iget-wide v6, p1, Ls0/f;->m:J

    sget p0, Ls0/i;->b:I

    cmp-long p0, v6, v0

    if-nez p0, :cond_12

    goto :goto_e

    :cond_12
    iput-wide v0, p1, Ls0/f;->m:J

    :goto_e
    iget-object p0, v5, Ls0/h;->v:Ls0/g;

    iget-object v0, p1, Ls0/f;->n:Ls0/g;

    invoke-static {v0, p0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iput-object p0, p1, Ls0/f;->n:Ls0/g;

    :cond_13
    iget-boolean p0, v5, Ls0/h;->w:Z

    iget-boolean v0, p1, Ls0/f;->o:Z

    if-eq v0, p0, :cond_14

    iput-boolean p0, p1, Ls0/f;->o:Z

    :cond_14
    invoke-static {v3, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-wide v0, v5, Ls0/h;->x:J

    iget-wide v2, p1, Ls0/f;->g:J

    invoke-static {v2, v3, v0, v1}, Ls0/b;->b(JJ)Z

    move-result p0

    if-nez p0, :cond_15

    iput-wide v0, p1, Ls0/f;->g:J

    :cond_15
    iget-wide v0, v5, Ls0/h;->y:J

    iget-wide v2, p1, Ls0/f;->h:J

    invoke-static {v2, v3, v0, v1}, Ls0/b;->b(JJ)Z

    move-result p0

    if-nez p0, :cond_16

    iput-wide v0, p1, Ls0/f;->h:J

    :cond_16
    iget p0, v5, Ls0/h;->z:I

    iget v0, p1, Ls0/f;->p:I

    invoke-static {v0, p0}, Ls0/e;->d(II)Z

    move-result v0

    if-nez v0, :cond_17

    iput p0, p1, Ls0/f;->p:I

    :cond_17
    return-object v4

    :pswitch_7
    check-cast p1, Landroid/animation/ValueAnimator;

    const-string p0, "animator"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lk9/i;

    invoke-virtual {v5, p1}, Lk9/i;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    return-object v4

    :pswitch_8
    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lm9/k;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v5, p1}, Lm9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
