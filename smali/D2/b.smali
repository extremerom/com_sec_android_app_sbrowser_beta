.class public final LD2/b;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public final synthetic b:LD2/f;

.field public final synthetic c:Ljava/lang/Number;

.field public final synthetic d:LD2/a;


# direct methods
.method public constructor <init>(LD2/f;Ljava/lang/Number;LD2/a;Lib/c;)V
    .locals 0

    iput-object p1, p0, LD2/b;->b:LD2/f;

    iput-object p2, p0, LD2/b;->c:Ljava/lang/Number;

    iput-object p3, p0, LD2/b;->d:LD2/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2

    new-instance p1, LD2/b;

    iget-object v0, p0, LD2/b;->c:Ljava/lang/Number;

    iget-object v1, p0, LD2/b;->d:LD2/a;

    iget-object p0, p0, LD2/b;->b:LD2/f;

    invoke-direct {p1, p0, v0, v1, p2}, LD2/b;-><init>(LD2/f;Ljava/lang/Number;LD2/a;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LD2/b;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LD2/b;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LD2/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const-string v0, "this"

    sget-object v1, Ldb/r;->a:Ldb/r;

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v4, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v5, p0, LD2/b;->a:I

    if-eqz v5, :cond_1

    if-ne v5, v3, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iput v3, p0, LD2/b;->a:I

    iget-object p1, p0, LD2/b;->c:Ljava/lang/Number;

    iget-object v5, p0, LD2/b;->d:LD2/a;

    iget-object v6, p0, LD2/b;->b:LD2/f;

    iget v7, v6, LD2/f;->d:I

    packed-switch v7, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    new-instance v7, LNc/k;

    invoke-static {p0}, LG5/U3;->e(Lib/c;)Lib/c;

    move-result-object p0

    invoke-direct {v7, v3, p0}, LNc/k;-><init>(ILib/c;)V

    invoke-virtual {v7}, LNc/k;->q()V

    new-instance p0, LD2/g;

    invoke-direct {p0, v6, v2}, LD2/g;-><init>(LD2/f;I)V

    invoke-virtual {v7, p0}, LNc/k;->t(Lsb/k;)V

    invoke-virtual {v6}, LD2/f;->a()V

    invoke-virtual {v6}, LD2/f;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    cmpg-float p0, p0, p1

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, LD2/f;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/4 v8, 0x2

    new-array v8, v8, [F

    aput p0, v8, v2

    aput p1, v8, v3

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v8, v5, LD2/a;->b:J

    invoke-virtual {p0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, v5, LD2/a;->c:Ljava/lang/Object;

    check-cast p1, Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, LD2/d;

    invoke-direct {p1, v3, v6}, LD2/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, LD2/e;

    invoke-direct {p1, v3, v7, v6}, LD2/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p0, v6, LD2/f;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    invoke-virtual {v7}, LNc/k;->p()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_3

    goto :goto_1

    :cond_3
    move-object p0, v1

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    new-instance v7, LNc/k;

    invoke-static {p0}, LG5/U3;->e(Lib/c;)Lib/c;

    move-result-object p0

    invoke-direct {v7, v3, p0}, LNc/k;-><init>(ILib/c;)V

    invoke-virtual {v7}, LNc/k;->q()V

    new-instance p0, LD2/c;

    invoke-direct {p0, v6, v2}, LD2/c;-><init>(LD2/f;I)V

    invoke-virtual {v7, p0}, LNc/k;->t(Lsb/k;)V

    invoke-virtual {v6}, LD2/f;->a()V

    invoke-virtual {v6}, LD2/f;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-eq p0, p1, :cond_4

    invoke-virtual {v6}, LD2/f;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    filled-new-array {p0, p1}, [I

    move-result-object p0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v8, v5, LD2/a;->b:J

    invoke-virtual {p0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, v5, LD2/a;->c:Ljava/lang/Object;

    check-cast p1, Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, LD2/d;

    invoke-direct {p1, v2, v6}, LD2/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, LD2/e;

    invoke-direct {p1, v2, v7, v6}, LD2/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p0, v6, LD2/f;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    invoke-virtual {v7}, LNc/k;->p()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_3

    :goto_1
    if-ne p0, v4, :cond_5

    return-object v4

    :cond_5
    :goto_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
