.class public final La0/D;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p2, p0, La0/D;->a:I

    iput-object p3, p0, La0/D;->c:Ljava/lang/Object;

    iput-object p4, p0, La0/D;->d:Ljava/lang/Object;

    iput-object p5, p0, La0/D;->e:Ljava/lang/Object;

    iput p1, p0, La0/D;->b:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, La0/D;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/animation/ValueAnimator;

    const-string v0, "anim"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La0/D;->c:Ljava/lang/Object;

    check-cast v0, Lm9/l;

    iget-object v1, v0, Li9/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, La0/D;->e:Ljava/lang/Object;

    check-cast p1, Lm9/q;

    iget-object v1, p0, La0/D;->d:Ljava/lang/Object;

    check-cast v1, Lm9/i;

    iget p0, p0, La0/D;->b:I

    const/4 v2, 0x1

    invoke-static {v1, p1, p0, v0, v2}, Lm9/l;->h(Lm9/i;Lm9/q;ILm9/l;Z)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    iget-object p1, v0, Li9/a;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    iget-object v0, p0, La0/D;->c:Ljava/lang/Object;

    check-cast v0, La0/E;

    if-eq p1, v0, :cond_4

    instance-of v0, p1, Lk0/r;

    if-eqz v0, :cond_3

    iget-object v0, p0, La0/D;->d:Ljava/lang/Object;

    check-cast v0, Li0/c;

    iget v0, v0, Li0/c;->a:I

    iget v1, p0, La0/D;->b:I

    sub-int/2addr v0, v1

    iget-object p0, p0, La0/D;->e:Ljava/lang/Object;

    check-cast p0, LN/r;

    invoke-virtual {p0, p1}, LN/r;->c(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, p0, LN/r;->c:[I

    aget v1, v2, v1

    goto :goto_1

    :cond_1
    const v1, 0x7fffffff

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, p1}, LN/r;->b(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_2

    not-int v1, v1

    :cond_2
    iget-object v2, p0, LN/r;->b:[Ljava/lang/Object;

    aput-object p1, v2, v1

    iget-object p0, p0, LN/r;->c:[I

    aput v0, p0, v1

    :cond_3
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "A derived state calculation cannot read itself"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
