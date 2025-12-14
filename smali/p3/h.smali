.class public final synthetic Lp3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lp3/h;->a:I

    iput-object p3, p0, Lp3/h;->c:Ljava/lang/Object;

    iput p1, p0, Lp3/h;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lp3/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lp3/h;->c:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iget-boolean v1, v0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    iget p0, p0, Lp3/h;->b:I

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lz3/k;->i(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lz3/k;->e(Landroid/content/Context;ILjava/lang/String;)Lz3/x;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lz3/k;->e(Landroid/content/Context;ILjava/lang/String;)Lz3/x;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_0
    iget-object v0, p0, Lp3/h;->c:Ljava/lang/Object;

    check-cast v0, LO9/a;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, LO9/a;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->c()Lo3/e;

    move-result-object v1

    const-string v2, "next_job_scheduler_id"

    invoke-virtual {v1, v2}, Lo3/e;->g(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-int v1, v4

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    const v4, 0x7fffffff

    if-ne v1, v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v1, 0x1

    :goto_2
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->c()Lo3/e;

    move-result-object v5

    new-instance v6, Lo3/d;

    int-to-long v7, v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v6, v2, v4}, Lo3/d;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v5, v6}, Lo3/e;->l(Lo3/d;)V

    if-ltz v1, :cond_3

    iget p0, p0, Lp3/h;->b:I

    if-gt v1, p0, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->c()Lo3/e;

    move-result-object p0

    new-instance v0, Lo3/d;

    const/4 v1, 0x1

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lo3/d;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0, v0}, Lo3/e;->l(Lo3/d;)V

    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
