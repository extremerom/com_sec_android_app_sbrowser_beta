.class public final synthetic Lm9/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lm9/h;

.field public final synthetic b:[Ljava/lang/Long;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/HashMap;

.field public final synthetic e:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Lm9/h;[Ljava/lang/Long;ILjava/util/HashMap;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm9/e;->a:Lm9/h;

    iput-object p2, p0, Lm9/e;->b:[Ljava/lang/Long;

    iput p3, p0, Lm9/e;->c:I

    iput-object p4, p0, Lm9/e;->d:Ljava/util/HashMap;

    iput-object p5, p0, Lm9/e;->e:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 11

    iget-object v0, p0, Lm9/e;->a:Lm9/h;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lm9/e;->b:[Ljava/lang/Long;

    iget-object v2, p0, Lm9/e;->d:Ljava/util/HashMap;

    const-string v3, "it"

    invoke-static {p1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lm9/e;->e:Landroid/animation/ValueAnimator;

    const-string v3, "null cannot be cast to non-null type kotlin.Float"

    iget-object v4, v0, Lm9/h;->c:Ljava/lang/Float;

    iget p0, p0, Lm9/e;->c:I

    if-eqz v4, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const/4 v6, 0x0

    aget-object v7, v1, v6

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v7, v4, v7

    int-to-long v9, p0

    cmp-long v7, v7, v9

    if-ltz v7, :cond_1

    const-string v7, "position"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsb/k;

    if-eqz v7, :cond_0

    new-instance v8, Landroid/graphics/PointF;

    const-string v9, "x"

    invoke-virtual {p1, v9}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v3}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    const-string v10, "y"

    invoke-virtual {p1, v10}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v3}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v7, v8}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v6

    :cond_1
    iget-object v0, v0, Lm9/h;->d:Ljava/lang/Float;

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const/4 v0, 0x1

    aget-object v6, v1, v0

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v4, v6

    int-to-long v8, p0

    cmp-long p0, v6, v8

    if-ltz p0, :cond_3

    const-string p0, "scale"

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsb/k;

    if-eqz v2, :cond_2

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v3}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Float;

    invoke-interface {v2, p0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v0

    :cond_3
    return-void
.end method
