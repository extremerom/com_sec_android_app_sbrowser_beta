.class public final Lo3/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN3/n;
.implements LQ/J;
.implements Lac/o;
.implements Lr/a;


# static fields
.field public static e:Lo3/n;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/n;->a:Ljava/lang/Object;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, LH6/r;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, LH6/r;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lo3/n;->b:Ljava/lang/Object;

    return-void

    :pswitch_0
    new-instance p1, LJa/b;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, LJa/b;-><init>(I)V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo3/n;->b:Ljava/lang/Object;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lo3/n;->c:Ljava/lang/Object;

    iput-object p1, p0, Lo3/n;->a:Ljava/lang/Object;

    new-instance v0, LH6/p;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, LH6/p;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(LP0/j;LZ3/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lo3/n;->a:Ljava/lang/Object;

    iput-object p2, p0, Lo3/n;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lo3/n;->c:Ljava/lang/Object;

    iput-object p1, p0, Lo3/n;->d:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "unprocessedInsns == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(LQ/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/n;->a:Ljava/lang/Object;

    return-void
.end method

.method public static u()Lo3/n;
    .locals 2

    sget-object v0, Lo3/n;->e:Lo3/n;

    if-nez v0, :cond_0

    new-instance v0, Lo3/n;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo3/n;-><init>(I)V

    sput-object v0, Lo3/n;->e:Lo3/n;

    :cond_0
    sget-object v0, Lo3/n;->e:Lo3/n;

    return-object v0
.end method


# virtual methods
.method public A(LH6/j;)V
    .locals 2

    iget-object v0, p0, Lo3/n;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lo3/n;->v(LH6/j;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo3/n;->c:Ljava/lang/Object;

    check-cast p1, LH6/s;

    iget-boolean v1, p1, LH6/s;->c:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p1, LH6/s;->c:Z

    invoke-virtual {p0, p1}, Lo3/n;->B(LH6/s;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public B(LH6/s;)V
    .locals 2

    iget v0, p1, LH6/s;->b:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/16 v0, 0x5dc

    goto :goto_0

    :cond_2
    const/16 v0, 0xabe

    :goto_0
    iget-object p0, p0, Lo3/n;->b:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public C()V
    .locals 2

    iget-object v0, p0, Lo3/n;->d:Ljava/lang/Object;

    check-cast v0, LH6/s;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lo3/n;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lo3/n;->d:Ljava/lang/Object;

    iget-object v0, v0, LH6/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LH6/j;

    if-eqz v0, :cond_0

    sget-object p0, LH6/m;->z:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-object v0, v0, LH6/j;->a:LH6/m;

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lo3/n;->c:Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public D()V
    .locals 11

    const v0, 0x1020048

    iget-object v1, p0, Lo3/n;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/viewpager2/widget/ViewPager2;

    invoke-static {v0, v1}, Lf1/W;->h(ILandroid/view/View;)V

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lf1/W;->e(ILandroid/view/View;)V

    const v3, 0x1020049

    invoke-static {v3, v1}, Lf1/W;->h(ILandroid/view/View;)V

    invoke-static {v2, v1}, Lf1/W;->e(ILandroid/view/View;)V

    const v4, 0x1020046

    invoke-static {v4, v1}, Lf1/W;->h(ILandroid/view/View;)V

    invoke-static {v2, v1}, Lf1/W;->e(ILandroid/view/View;)V

    const v5, 0x1020047

    invoke-static {v5, v1}, Lf1/W;->h(ILandroid/view/View;)V

    invoke-static {v2, v1}, Lf1/W;->e(ILandroid/view/View;)V

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/u0;

    move-result-object v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/u0;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/recyclerview/widget/u0;->getItemCount()I

    move-result v6

    if-nez v6, :cond_1

    return-void

    :cond_1
    iget-boolean v7, v1, Landroidx/viewpager2/widget/ViewPager2;->r:Z

    if-nez v7, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v7

    iget-object v8, p0, Lo3/n;->b:Ljava/lang/Object;

    check-cast v8, LI3/d;

    iget-object p0, p0, Lo3/n;->a:Ljava/lang/Object;

    check-cast p0, LI3/c;

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v7, :cond_7

    iget-object v4, v1, Landroidx/viewpager2/widget/ViewPager2;->g:Le3/i;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/J0;->getLayoutDirection()I

    move-result v4

    if-ne v4, v9, :cond_3

    move v2, v9

    :cond_3
    if-eqz v2, :cond_4

    move v4, v0

    goto :goto_0

    :cond_4
    move v4, v3

    :goto_0
    if-eqz v2, :cond_5

    move v0, v3

    :cond_5
    iget v2, v1, Landroidx/viewpager2/widget/ViewPager2;->d:I

    sub-int/2addr v6, v9

    if-ge v2, v6, :cond_6

    new-instance v2, Lg1/d;

    invoke-direct {v2, v4, v10}, Lg1/d;-><init>(ILjava/lang/CharSequence;)V

    invoke-static {v1, v2, p0}, Lf1/W;->i(Landroid/view/View;Lg1/d;Lg1/q;)V

    :cond_6
    iget p0, v1, Landroidx/viewpager2/widget/ViewPager2;->d:I

    if-lez p0, :cond_9

    new-instance p0, Lg1/d;

    invoke-direct {p0, v0, v10}, Lg1/d;-><init>(ILjava/lang/CharSequence;)V

    invoke-static {v1, p0, v8}, Lf1/W;->i(Landroid/view/View;Lg1/d;Lg1/q;)V

    goto :goto_1

    :cond_7
    iget v0, v1, Landroidx/viewpager2/widget/ViewPager2;->d:I

    sub-int/2addr v6, v9

    if-ge v0, v6, :cond_8

    new-instance v0, Lg1/d;

    invoke-direct {v0, v5, v10}, Lg1/d;-><init>(ILjava/lang/CharSequence;)V

    invoke-static {v1, v0, p0}, Lf1/W;->i(Landroid/view/View;Lg1/d;Lg1/q;)V

    :cond_8
    iget p0, v1, Landroidx/viewpager2/widget/ViewPager2;->d:I

    if-lez p0, :cond_9

    new-instance p0, Lg1/d;

    invoke-direct {p0, v4, v10}, Lg1/d;-><init>(ILjava/lang/CharSequence;)V

    invoke-static {v1, p0, v8}, Lf1/W;->i(Landroid/view/View;Lg1/d;Lg1/q;)V

    :cond_9
    :goto_1
    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lo3/n;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo3/n;->d:Ljava/lang/Object;

    check-cast v1, LD4/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "elements"

    invoke-static {v0, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lo3/n;->c:Ljava/lang/Object;

    check-cast p0, Lhc/f;

    if-nez p0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v2, v1, LD4/d;->d:Ljava/lang/Object;

    check-cast v2, LJb/f;

    invoke-static {p0, v2}, LG5/v2;->e(Lhc/f;LJb/f;)LMb/T;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v1, v1, LD4/d;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0}, LHc/l;->d(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    check-cast v2, LMb/U;

    invoke-virtual {v2}, LMb/U;->getType()Lyc/w;

    move-result-object v2

    const-string v3, "getType(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lmc/y;

    invoke-direct {v3, v0, v2}, Lmc/y;-><init>(Ljava/util/List;Lyc/w;)V

    invoke-virtual {v1, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    iget-object v2, v1, LD4/d;->c:Ljava/lang/Object;

    check-cast v2, LQ9/a;

    iget-object v3, v1, LD4/d;->e:Ljava/lang/Object;

    check-cast v3, Lhc/b;

    invoke-virtual {v2, v3}, LQ9/a;->s(Lhc/b;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lhc/f;->c()Ljava/lang/String;

    move-result-object p0

    const-string v2, "value"

    invoke-static {p0, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lmc/a;

    if-eqz v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, v1, LD4/d;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmc/a;

    iget-object v1, v1, Lmc/g;->a:Ljava/lang/Object;

    check-cast v1, LKb/b;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public c(Lhc/b;)Lac/n;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, LJb/S;->L:LJb/T;

    iget-object v2, p0, Lo3/n;->b:Ljava/lang/Object;

    check-cast v2, LQ9/a;

    invoke-virtual {v2, p1, v1, v0}, LQ9/a;->t(Lhc/b;LJb/S;Ljava/util/List;)LD4/d;

    move-result-object p1

    new-instance v1, Lo3/i;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p1, v1, Lo3/i;->b:Ljava/lang/Object;

    iput-object p0, v1, Lo3/i;->c:Ljava/lang/Object;

    iput-object v0, v1, Lo3/i;->d:Ljava/lang/Object;

    iput-object p1, v1, Lo3/i;->a:Ljava/lang/Object;

    return-object v1
.end method

.method public d(Lhc/b;Lhc/f;)V
    .locals 1

    iget-object p0, p0, Lo3/n;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    new-instance v0, Lmc/i;

    invoke-direct {v0, p1, p2}, Lmc/i;-><init>(Lhc/b;Lhc/f;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e(JLQ/m;LQ/m;LQ/m;)LQ/m;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const-string v4, "initialValue"

    invoke-static {v1, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "targetValue"

    invoke-static {v2, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "initialVelocity"

    invoke-static {v3, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lo3/n;->b:Ljava/lang/Object;

    check-cast v4, LQ/m;

    if-nez v4, :cond_0

    invoke-virtual/range {p3 .. p3}, LQ/m;->c()LQ/m;

    move-result-object v4

    iput-object v4, v0, Lo3/n;->b:Ljava/lang/Object;

    :cond_0
    iget-object v4, v0, Lo3/n;->b:Ljava/lang/Object;

    check-cast v4, LQ/m;

    const/4 v5, 0x0

    const-string v6, "valueVector"

    if-eqz v4, :cond_4

    invoke-virtual {v4}, LQ/m;->b()I

    move-result v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_2

    iget-object v8, v0, Lo3/n;->b:Ljava/lang/Object;

    check-cast v8, LQ/m;

    if-eqz v8, :cond_1

    iget-object v9, v0, Lo3/n;->a:Ljava/lang/Object;

    check-cast v9, LQ/n;

    invoke-interface {v9, v7}, LQ/n;->get(I)LQ/r;

    move-result-object v9

    invoke-virtual {v1, v7}, LQ/m;->a(I)F

    move-result v10

    invoke-virtual {v2, v7}, LQ/m;->a(I)F

    move-result v11

    invoke-virtual {v3, v7}, LQ/m;->a(I)F

    move-result v12

    const-wide/32 v13, 0xf4240

    div-long v13, p1, v13

    iget-object v9, v9, LQ/r;->b:LQ/z;

    iput v11, v9, LQ/z;->a:F

    invoke-virtual {v9, v13, v14, v10, v12}, LQ/z;->a(JFF)J

    move-result-wide v9

    const/16 v11, 0x20

    shr-long/2addr v9, v11

    long-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    invoke-virtual {v8, v9, v7}, LQ/m;->e(FI)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v6}, Ltb/k;->l(Ljava/lang/String;)V

    throw v5

    :cond_2
    iget-object v0, v0, Lo3/n;->b:Ljava/lang/Object;

    check-cast v0, LQ/m;

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    invoke-static {v6}, Ltb/k;->l(Ljava/lang/String;)V

    throw v5

    :cond_4
    invoke-static {v6}, Ltb/k;->l(Ljava/lang/String;)V

    throw v5
.end method

.method public f(Lr/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lo3/n;->t(Lr/b;)Lr/h;

    move-result-object p1

    iget-object p0, p0, Lo3/n;->a:Ljava/lang/Object;

    check-cast p0, Landroid/view/ActionMode$Callback;

    invoke-interface {p0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public g(Lmc/f;)V
    .locals 2

    iget-object p0, p0, Lo3/n;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    new-instance v0, Lmc/t;

    new-instance v1, Lmc/r;

    invoke-direct {v1, p1}, Lmc/r;-><init>(Lmc/f;)V

    invoke-direct {v0, v1}, Lmc/g;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public h(Lr/b;Ls/i;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lo3/n;->t(Lr/b;)Lr/h;

    move-result-object p1

    iget-object v0, p0, Lo3/n;->d:Ljava/lang/Object;

    check-cast v0, LN/A;

    invoke-virtual {v0, p2}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Menu;

    if-nez v1, :cond_0

    new-instance v1, Ls/w;

    iget-object v2, p0, Lo3/n;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Ls/w;-><init>(Landroid/content/Context;Ls/i;)V

    invoke-virtual {v0, p2, v1}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lo3/n;->a:Ljava/lang/Object;

    check-cast p0, Landroid/view/ActionMode$Callback;

    invoke-interface {p0, p1, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public i(Lr/b;Ls/i;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lo3/n;->t(Lr/b;)Lr/h;

    move-result-object p1

    iget-object v0, p0, Lo3/n;->d:Ljava/lang/Object;

    check-cast v0, LN/A;

    invoke-virtual {v0, p2}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Menu;

    if-nez v1, :cond_0

    new-instance v1, Ls/w;

    iget-object v2, p0, Lo3/n;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Ls/w;-><init>(Landroid/content/Context;Ls/i;)V

    invoke-virtual {v0, p2, v1}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lo3/n;->a:Ljava/lang/Object;

    check-cast p0, Landroid/view/ActionMode$Callback;

    invoke-interface {p0, p1, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public j(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lo3/n;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo3/n;->b:Ljava/lang/Object;

    check-cast v1, LQ9/a;

    iget-object p0, p0, Lo3/n;->c:Ljava/lang/Object;

    check-cast p0, Lhc/f;

    invoke-static {v1, p0, p1}, LQ9/a;->l(LQ9/a;Lhc/f;Ljava/lang/Object;)Lmc/g;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public k(Lr/b;Landroid/view/MenuItem;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lo3/n;->t(Lr/b;)Lr/h;

    move-result-object p1

    new-instance v0, Ls/p;

    iget-object v1, p0, Lo3/n;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    check-cast p2, LZ0/a;

    invoke-direct {v0, v1, p2}, Ls/p;-><init>(Landroid/content/Context;LZ0/a;)V

    iget-object p0, p0, Lo3/n;->a:Ljava/lang/Object;

    check-cast p0, Landroid/view/ActionMode$Callback;

    invoke-interface {p0, p1, v0}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public l(LQ/m;LQ/m;LQ/m;)LQ/m;
    .locals 3

    const-string v0, "initialValue"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "targetValue"

    invoke-static {p2, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "initialVelocity"

    invoke-static {p3, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lo3/n;->d:Ljava/lang/Object;

    check-cast p1, LQ/m;

    if-nez p1, :cond_0

    invoke-virtual {p3}, LQ/m;->c()LQ/m;

    move-result-object p1

    iput-object p1, p0, Lo3/n;->d:Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lo3/n;->d:Ljava/lang/Object;

    check-cast p1, LQ/m;

    const/4 p2, 0x0

    const-string p3, "endVelocityVector"

    if-eqz p1, :cond_4

    invoke-virtual {p1}, LQ/m;->b()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    iget-object v1, p0, Lo3/n;->d:Ljava/lang/Object;

    check-cast v1, LQ/m;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lo3/n;->a:Ljava/lang/Object;

    check-cast v2, LQ/n;

    invoke-interface {v2, v0}, LQ/n;->get(I)LQ/r;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, LQ/m;->e(FI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p3}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2

    :cond_2
    iget-object p0, p0, Lo3/n;->d:Ljava/lang/Object;

    check-cast p0, LQ/m;

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    invoke-static {p3}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2

    :cond_4
    invoke-static {p3}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2
.end method

.method public declared-synchronized m(LS3/u;LS3/v;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, LS3/a;

    iget-object v1, p0, Lo3/n;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, p2, v1}, LS3/a;-><init>(LS3/u;LS3/v;Ljava/lang/ref/ReferenceQueue;)V

    iget-object p2, p0, Lo3/n;->b:Ljava/lang/Object;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LS3/a;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    iput-object p2, p1, LS3/a;->c:LS3/C;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public n(LQ/m;LQ/m;LQ/m;)J
    .locals 39

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "initialValue"

    invoke-static {v0, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "targetValue"

    invoke-static {v1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "initialVelocity"

    invoke-static {v2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, LQ/m;->b()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, LG5/d3;->l(II)Lzb/d;

    move-result-object v3

    invoke-virtual {v3}, Lzb/b;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v7, 0x0

    :goto_0
    move-object v9, v3

    check-cast v9, Lzb/c;

    iget-boolean v9, v9, Lzb/c;->c:Z

    if-eqz v9, :cond_15

    move-object v9, v3

    check-cast v9, Lzb/c;

    invoke-virtual {v9}, Lzb/c;->b()I

    move-result v9

    move-object/from16 v10, p0

    iget-object v11, v10, Lo3/n;->a:Ljava/lang/Object;

    check-cast v11, LQ/n;

    invoke-interface {v11, v9}, LQ/n;->get(I)LQ/r;

    move-result-object v11

    invoke-virtual {v0, v9}, LQ/m;->a(I)F

    move-result v12

    invoke-virtual {v1, v9}, LQ/m;->a(I)F

    move-result v13

    invoke-virtual {v2, v9}, LQ/m;->a(I)F

    move-result v9

    iget-object v14, v11, LQ/r;->b:LQ/z;

    iget-wide v4, v14, LQ/z;->b:D

    mul-double/2addr v4, v4

    double-to-float v4, v4

    iget v5, v14, LQ/z;->g:F

    sub-float/2addr v12, v13

    iget v6, v11, LQ/r;->a:F

    div-float/2addr v12, v6

    div-float/2addr v9, v6

    float-to-double v13, v4

    float-to-double v4, v5

    float-to-double v0, v9

    float-to-double v11, v12

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v9, v3

    float-to-double v2, v6

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v18, v4, v16

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-object v6, v9

    mul-double v9, v20, v18

    move-wide/from16 v18, v7

    move-object v8, v6

    neg-double v6, v9

    mul-double/2addr v9, v9

    const-wide/high16 v20, 0x4010000000000000L    # 4.0

    mul-double v20, v20, v13

    sub-double v9, v9, v20

    const-wide/16 v13, 0x0

    cmpg-double v20, v9, v13

    if-gez v20, :cond_0

    new-instance v15, LQ/o;

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    move-wide/from16 v24, v2

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-direct {v15, v13, v14, v2, v3}, LQ/o;-><init>(DD)V

    goto :goto_1

    :cond_0
    move-wide/from16 v24, v2

    new-instance v15, LQ/o;

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-direct {v15, v2, v3, v13, v14}, LQ/o;-><init>(DD)V

    :goto_1
    iget-wide v2, v15, LQ/o;->a:D

    add-double/2addr v2, v6

    div-double v2, v2, v16

    iput-wide v2, v15, LQ/o;->a:D

    iget-wide v2, v15, LQ/o;->b:D

    div-double v2, v2, v16

    iput-wide v2, v15, LQ/o;->b:D

    if-gez v20, :cond_1

    new-instance v2, LQ/o;

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    invoke-direct {v2, v13, v14, v9, v10}, LQ/o;-><init>(DD)V

    goto :goto_2

    :cond_1
    new-instance v2, LQ/o;

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    invoke-direct {v2, v9, v10, v13, v14}, LQ/o;-><init>(DD)V

    :goto_2
    iget-wide v9, v2, LQ/o;->a:D

    const/4 v3, -0x1

    int-to-double v13, v3

    mul-double/2addr v9, v13

    move-wide/from16 v26, v4

    iget-wide v3, v2, LQ/o;->b:D

    mul-double/2addr v3, v13

    add-double/2addr v9, v6

    div-double v9, v9, v16

    iput-wide v9, v2, LQ/o;->a:D

    div-double v3, v3, v16

    iput-wide v3, v2, LQ/o;->b:D

    const-wide/16 v3, 0x0

    cmpg-double v5, v11, v3

    if-nez v5, :cond_2

    cmpg-double v6, v0, v3

    if-nez v6, :cond_2

    move-object v11, v8

    const-wide/16 v0, 0x0

    goto/16 :goto_11

    :cond_2
    if-gez v5, :cond_3

    neg-double v0, v0

    :cond_3
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v26, v5

    if-lez v7, :cond_b

    iget-wide v5, v15, LQ/o;->a:D

    iget-wide v14, v2, LQ/o;->a:D

    mul-double v16, v5, v3

    sub-double v16, v16, v0

    sub-double v0, v5, v14

    div-double v12, v16, v0

    sub-double v2, v3, v12

    div-double v16, v24, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    div-double v9, v16, v5

    div-double v16, v24, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    move-object v11, v8

    div-double v7, v16, v14

    invoke-static {v9, v10}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-static {v7, v8}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v16

    if-nez v16, :cond_5

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v16

    if-nez v16, :cond_5

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    goto :goto_3

    :cond_4
    move-wide v9, v7

    :cond_5
    :goto_3
    mul-double v7, v2, v5

    move-wide/from16 v16, v5

    neg-double v4, v12

    mul-double/2addr v4, v14

    div-double v4, v7, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    sub-double v26, v14, v16

    div-double v4, v4, v26

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v20

    if-nez v20, :cond_6

    const-wide/16 v22, 0x0

    cmpg-double v20, v4, v22

    if-gtz v20, :cond_7

    :cond_6
    move-wide/from16 v4, v24

    goto :goto_5

    :cond_7
    cmpl-double v20, v4, v22

    if-lez v20, :cond_9

    mul-double v26, v16, v4

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->exp(D)D

    move-result-wide v26

    mul-double v26, v26, v2

    mul-double/2addr v4, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    mul-double/2addr v4, v12

    add-double v4, v4, v26

    neg-double v4, v4

    cmpg-double v4, v4, v24

    if-gez v4, :cond_9

    const-wide/16 v4, 0x0

    cmpl-double v0, v12, v4

    if-lez v0, :cond_8

    cmpg-double v0, v2, v4

    if-gez v0, :cond_8

    move-wide/from16 v4, v24

    const-wide/16 v22, 0x0

    goto :goto_4

    :cond_8
    move-wide/from16 v22, v9

    move-wide/from16 v4, v24

    :goto_4
    neg-double v0, v4

    move-wide/from16 v37, v0

    move-wide/from16 v9, v22

    goto :goto_6

    :cond_9
    move-wide/from16 v4, v24

    mul-double v9, v12, v14

    mul-double/2addr v9, v14

    neg-double v9, v9

    mul-double v7, v7, v16

    div-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    div-double v9, v7, v0

    move-wide/from16 v37, v4

    goto :goto_6

    :goto_5
    neg-double v0, v4

    move-wide/from16 v37, v0

    :goto_6
    new-instance v0, LQ/y;

    move-object/from16 v28, v0

    move-wide/from16 v29, v2

    move-wide/from16 v31, v16

    move-wide/from16 v33, v12

    move-wide/from16 v35, v14

    invoke-direct/range {v28 .. v38}, LQ/y;-><init>(DDDDD)V

    new-instance v1, LQ/w;

    const/16 v29, 0x1

    move-object/from16 v28, v1

    move-wide/from16 v30, v2

    move-wide/from16 v32, v16

    move-wide/from16 v34, v12

    move-wide/from16 v36, v14

    invoke-direct/range {v28 .. v37}, LQ/w;-><init>(IDDDD)V

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, LQ/y;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_a

    goto/16 :goto_10

    :cond_a
    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    const/4 v4, 0x0

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_7
    cmpl-double v5, v12, v2

    if-lez v5, :cond_14

    const/16 v2, 0x64

    if-ge v4, v2, :cond_14

    add-int/lit8 v4, v4, 0x1

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, LQ/y;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1, v5}, LQ/w;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    div-double/2addr v2, v5

    sub-double v2, v9, v2

    sub-double/2addr v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    move-wide v9, v2

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    goto :goto_7

    :cond_b
    move-object v11, v8

    move-wide/from16 v8, v24

    cmpg-double v2, v26, v5

    if-gez v2, :cond_c

    iget-wide v5, v15, LQ/o;->a:D

    mul-double v12, v5, v3

    sub-double/2addr v0, v12

    iget-wide v12, v15, LQ/o;->b:D

    div-double/2addr v0, v12

    mul-double/2addr v3, v3

    mul-double/2addr v0, v0

    add-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double v2, v8, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double v9, v0, v5

    goto/16 :goto_10

    :cond_c
    iget-wide v5, v15, LQ/o;->a:D

    mul-double v12, v5, v3

    sub-double/2addr v0, v12

    div-double v14, v8, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    div-double/2addr v14, v5

    div-double v24, v8, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->log(D)D

    move-result-wide v24

    move-wide/from16 v26, v24

    const/4 v2, 0x0

    :goto_8
    const/4 v10, 0x6

    if-ge v2, v10, :cond_d

    div-double v26, v26, v5

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->log(D)D

    move-result-wide v26

    sub-double v26, v24, v26

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_d
    move-wide/from16 v28, v8

    div-double v7, v26, v5

    invoke-static {v14, v15}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v9

    if-nez v9, :cond_e

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_e

    invoke-static {v7, v8}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v9

    if-nez v9, :cond_f

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_f

    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    goto :goto_9

    :cond_e
    move-wide v14, v7

    :cond_f
    :goto_9
    add-double/2addr v12, v0

    neg-double v7, v12

    mul-double v9, v5, v0

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_10

    const-wide/16 v9, 0x0

    cmpg-double v12, v7, v9

    if-gtz v12, :cond_11

    :cond_10
    move-wide/from16 v7, v28

    goto :goto_d

    :cond_11
    cmpl-double v12, v7, v9

    if-lez v12, :cond_13

    mul-double v9, v5, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    mul-double/2addr v12, v3

    mul-double/2addr v7, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->exp(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    add-double/2addr v9, v12

    neg-double v7, v9

    cmpg-double v7, v7, v28

    if-gez v7, :cond_13

    const-wide/16 v7, 0x0

    cmpg-double v9, v0, v7

    if-gez v9, :cond_12

    cmpl-double v9, v3, v7

    if-lez v9, :cond_12

    move-wide v13, v7

    :goto_a
    move-wide/from16 v7, v28

    goto :goto_b

    :cond_12
    move-wide v13, v14

    goto :goto_a

    :goto_b
    neg-double v7, v7

    move-wide/from16 v36, v7

    move-wide v14, v13

    goto :goto_e

    :cond_13
    move-wide/from16 v7, v28

    div-double v9, v16, v5

    neg-double v9, v9

    div-double v12, v3, v0

    sub-double v14, v9, v12

    :goto_c
    move-wide/from16 v36, v7

    goto :goto_e

    :goto_d
    neg-double v7, v7

    goto :goto_c

    :goto_e
    new-instance v7, LQ/w;

    const/16 v29, 0x0

    move-object/from16 v28, v7

    move-wide/from16 v30, v3

    move-wide/from16 v32, v0

    move-wide/from16 v34, v5

    invoke-direct/range {v28 .. v37}, LQ/w;-><init>(IDDDD)V

    new-instance v8, LQ/x;

    move-object/from16 v28, v8

    move-wide/from16 v29, v0

    move-wide/from16 v31, v5

    move-wide/from16 v33, v3

    invoke-direct/range {v28 .. v34}, LQ/x;-><init>(DDD)V

    move-wide v9, v14

    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    const/4 v3, 0x0

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_f
    cmpl-double v4, v12, v0

    if-lez v4, :cond_14

    const/16 v2, 0x64

    if-ge v3, v2, :cond_14

    add-int/lit8 v3, v3, 0x1

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v7, v4}, LQ/w;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v8, v6}, LQ/x;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    div-double/2addr v4, v12

    sub-double v4, v9, v4

    sub-double/2addr v9, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    move-wide v9, v4

    goto :goto_f

    :cond_14
    :goto_10
    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr v9, v0

    double-to-long v0, v9

    :goto_11
    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    move-wide/from16 v5, v18

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v3, v11

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_15
    move-wide v5, v7

    return-wide v5
.end method

.method public o(JLQ/m;LQ/m;LQ/m;)LQ/m;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const-string v4, "initialValue"

    invoke-static {v1, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "targetValue"

    invoke-static {v2, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "initialVelocity"

    invoke-static {v3, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lo3/n;->c:Ljava/lang/Object;

    check-cast v4, LQ/m;

    if-nez v4, :cond_0

    invoke-virtual/range {p5 .. p5}, LQ/m;->c()LQ/m;

    move-result-object v4

    iput-object v4, v0, Lo3/n;->c:Ljava/lang/Object;

    :cond_0
    iget-object v4, v0, Lo3/n;->c:Ljava/lang/Object;

    check-cast v4, LQ/m;

    const/4 v5, 0x0

    const-string v6, "velocityVector"

    if-eqz v4, :cond_4

    invoke-virtual {v4}, LQ/m;->b()I

    move-result v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_2

    iget-object v8, v0, Lo3/n;->c:Ljava/lang/Object;

    check-cast v8, LQ/m;

    if-eqz v8, :cond_1

    iget-object v9, v0, Lo3/n;->a:Ljava/lang/Object;

    check-cast v9, LQ/n;

    invoke-interface {v9, v7}, LQ/n;->get(I)LQ/r;

    move-result-object v9

    invoke-virtual {v1, v7}, LQ/m;->a(I)F

    move-result v10

    invoke-virtual {v2, v7}, LQ/m;->a(I)F

    move-result v11

    invoke-virtual {v3, v7}, LQ/m;->a(I)F

    move-result v12

    const-wide/32 v13, 0xf4240

    div-long v13, p1, v13

    iget-object v9, v9, LQ/r;->b:LQ/z;

    iput v11, v9, LQ/z;->a:F

    invoke-virtual {v9, v13, v14, v10, v12}, LQ/z;->a(JFF)J

    move-result-wide v9

    const-wide v11, 0xffffffffL

    and-long/2addr v9, v11

    long-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    invoke-virtual {v8, v9, v7}, LQ/m;->e(FI)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v6}, Ltb/k;->l(Ljava/lang/String;)V

    throw v5

    :cond_2
    iget-object v0, v0, Lo3/n;->c:Ljava/lang/Object;

    check-cast v0, LQ/m;

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    invoke-static {v6}, Ltb/k;->l(Ljava/lang/String;)V

    throw v5

    :cond_4
    invoke-static {v6}, Ltb/k;->l(Ljava/lang/String;)V

    throw v5
.end method

.method public p(LH6/s;I)Z
    .locals 2

    iget-object v0, p1, LH6/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LH6/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lo3/n;->b:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object p0, LH6/m;->z:Landroid/os/Handler;

    const/4 p1, 0x1

    iget-object v0, v0, LH6/j;->a:LH6/m;

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return p1

    :cond_0
    return v1
.end method

.method public q(LS3/a;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo3/n;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p1, LS3/a;->a:LS3/u;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, LS3/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v2, p1, LS3/a;->c:LS3/C;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, LS3/v;

    iget-object v5, p1, LS3/a;->a:LS3/u;

    iget-object v1, p0, Lo3/n;->d:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, LS3/p;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, LS3/v;-><init>(LS3/C;ZZLS3/u;LS3/p;)V

    iget-object p0, p0, Lo3/n;->d:Ljava/lang/Object;

    check-cast p0, LS3/p;

    iget-object p1, p1, LS3/a;->a:LS3/u;

    invoke-virtual {p0, p1, v0}, LS3/p;->e(LS3/u;LS3/v;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public r(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lo3/n;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, LJ2/U;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Lo3/n;->c:Ljava/lang/Object;

    check-cast p0, Lo3/h;

    invoke-virtual {p0}, LJ2/i0;->a()LT2/h;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    invoke-interface {v1, v2}, LT2/f;->l(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v1, v2, p1}, LT2/f;->U(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, LJ2/U;->beginTransaction()V

    :try_start_0
    invoke-interface {v1}, LT2/h;->u()I

    invoke-virtual {v0}, LJ2/U;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, LJ2/U;->endTransaction()V

    invoke-virtual {p0, v1}, LJ2/i0;->r(LT2/h;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, LJ2/U;->endTransaction()V

    invoke-virtual {p0, v1}, LJ2/i0;->r(LT2/h;)V

    throw p1
.end method

.method public s()V
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-object v4, v0, Lo3/n;->d:Ljava/lang/Object;

    check-cast v4, Lg7/h;

    if-eqz v4, :cond_0

    return-void

    :cond_0
    iget-object v4, v0, Lo3/n;->a:Ljava/lang/Object;

    check-cast v4, LP0/j;

    iget v5, v4, LP0/j;->c:I

    if-gez v5, :cond_4c

    iget-object v5, v4, LP0/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v6, v5, [Lg7/i;

    move v7, v1

    :goto_0
    if-ge v7, v5, :cond_1

    iget-object v8, v4, LP0/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg7/g;

    iget-object v8, v8, Lg7/g;->b:Lg7/i;

    aput-object v8, v6, v7

    add-int/2addr v7, v3

    goto :goto_0

    :cond_1
    iget v5, v4, LP0/j;->c:I

    if-gez v5, :cond_2

    move v5, v1

    :cond_2
    :goto_1
    iget-object v7, v4, LP0/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget v8, v4, LP0/j;->c:I

    move v9, v1

    :goto_2
    if-ge v9, v7, :cond_8

    iget-object v10, v4, LP0/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg7/g;

    aget-object v11, v6, v9

    invoke-virtual {v4, v10, v11}, LP0/j;->c(Lg7/g;Lg7/i;)Lg7/i;

    move-result-object v12

    if-nez v12, :cond_6

    invoke-virtual {v4, v10}, LP0/j;->b(Lg7/g;)Lg7/i;

    move-result-object v11

    iget-object v11, v11, Lg7/i;->d:LG5/v3;

    invoke-virtual {v11, v10}, LG5/v3;->f(Lg7/g;)Ljava/util/BitSet;

    move-result-object v11

    iget-object v13, v10, Lg7/g;->b:Lg7/i;

    iget-boolean v13, v13, Lg7/i;->e:Z

    iget-object v10, v10, Lg7/g;->d:Lk7/l;

    iget-object v14, v10, Ln7/e;->b:[Ljava/lang/Object;

    array-length v14, v14

    if-eqz v13, :cond_3

    invoke-virtual {v11, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-nez v15, :cond_3

    invoke-virtual {v10, v1}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lk7/k;

    invoke-virtual {v15}, Lk7/k;->e()I

    move-result v15

    goto :goto_3

    :cond_3
    move v15, v1

    :goto_3
    move v2, v1

    :goto_4
    if-ge v13, v14, :cond_5

    invoke-virtual {v11, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v10, v13}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lk7/k;

    invoke-virtual/range {v16 .. v16}, Lk7/k;->e()I

    move-result v16

    add-int v2, v16, v2

    :cond_4
    add-int/2addr v13, v3

    goto :goto_4

    :cond_5
    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-le v2, v8, :cond_7

    move v8, v2

    goto :goto_5

    :cond_6
    if-ne v11, v12, :cond_7

    goto :goto_6

    :cond_7
    :goto_5
    aput-object v12, v6, v9

    :goto_6
    add-int/2addr v9, v3

    goto :goto_2

    :cond_8
    if-lt v5, v8, :cond_49

    iput v5, v4, LP0/j;->c:I

    if-nez v5, :cond_a

    iget-object v2, v4, LP0/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v5, v1

    :goto_7
    if-ge v5, v2, :cond_19

    iget-object v7, v4, LP0/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg7/g;

    iget-object v8, v7, Lg7/g;->b:Lg7/i;

    aget-object v9, v6, v5

    if-eq v8, v9, :cond_9

    iget-object v8, v4, LP0/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Lg7/g;->g(Lg7/i;)Lg7/g;

    move-result-object v7

    invoke-virtual {v8, v5, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_9
    add-int/2addr v5, v3

    goto :goto_7

    :cond_a
    iget-object v2, v4, LP0/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v5, Ljava/util/ArrayList;

    mul-int/lit8 v7, v2, 0x2

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v1

    :goto_8
    if-ge v7, v2, :cond_18

    iget-object v8, v4, LP0/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg7/g;

    iget-object v9, v8, Lg7/g;->b:Lg7/i;

    aget-object v10, v6, v7

    if-eqz v10, :cond_b

    move/from16 v18, v2

    move-object/from16 v19, v6

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto/16 :goto_f

    :cond_b
    invoke-virtual {v4, v8}, LP0/j;->b(Lg7/g;)Lg7/i;

    move-result-object v10

    iget-object v11, v10, Lg7/i;->d:LG5/v3;

    invoke-virtual {v11, v8}, LG5/v3;->f(Lg7/g;)Ljava/util/BitSet;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    iget-object v13, v8, Lg7/g;->b:Lg7/i;

    iget-boolean v14, v13, Lg7/i;->e:Z

    if-eqz v14, :cond_c

    invoke-virtual {v11, v1}, Ljava/util/BitSet;->set(I)V

    :cond_c
    iget-object v14, v8, Lg7/g;->d:Lk7/l;

    iget-object v15, v14, Ln7/e;->b:[Ljava/lang/Object;

    array-length v1, v15

    invoke-virtual {v11}, Ljava/util/BitSet;->cardinality()I

    move-result v17

    sub-int v1, v1, v17

    if-nez v1, :cond_e

    sget-object v1, Lk7/l;->c:Lk7/l;

    move-object v3, v1

    move/from16 v18, v2

    move-object/from16 v19, v6

    :cond_d
    const/4 v1, 0x0

    goto :goto_b

    :cond_e
    new-instance v3, Lk7/l;

    invoke-direct {v3, v1}, Ln7/e;-><init>(I)V

    move/from16 v18, v2

    move-object/from16 v19, v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    array-length v6, v15

    if-ge v1, v6, :cond_10

    invoke-virtual {v11, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_f

    invoke-virtual {v14, v1}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Ln7/e;->f(ILjava/lang/Object;)V

    const/4 v6, 0x1

    add-int/2addr v2, v6

    goto :goto_a

    :cond_f
    const/4 v6, 0x1

    :goto_a
    add-int/2addr v1, v6

    goto :goto_9

    :cond_10
    iget-boolean v1, v14, LEc/g;->a:Z

    if-nez v1, :cond_d

    const/4 v1, 0x0

    iput-boolean v1, v3, LEc/g;->a:Z

    :goto_b
    iget-boolean v2, v13, Lg7/i;->e:Z

    if-eqz v2, :cond_11

    invoke-virtual {v11, v1, v12}, Ljava/util/BitSet;->set(IZ)V

    :cond_11
    iget-object v1, v3, Ln7/e;->b:[Ljava/lang/Object;

    array-length v1, v1

    iget-object v6, v8, Lg7/g;->c:Lk7/p;

    if-nez v1, :cond_12

    const/4 v1, 0x0

    goto :goto_c

    :cond_12
    new-instance v1, Lg7/l;

    invoke-direct {v1, v6, v3}, Lg7/l;-><init>(Lk7/p;Lk7/l;)V

    :goto_c
    if-eqz v2, :cond_14

    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    if-nez v12, :cond_14

    invoke-virtual {v14, v3}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lk7/k;

    iget v13, v12, Lk7/k;->a:I

    if-nez v13, :cond_13

    move-object v13, v12

    goto :goto_d

    :cond_13
    iget-object v13, v12, Lk7/k;->b:Lm7/d;

    invoke-static {v3, v13}, Lk7/k;->f(ILm7/d;)Lk7/k;

    move-result-object v13

    :goto_d
    invoke-static {v6, v12, v13}, Lg7/g;->f(Lk7/p;Lk7/k;Lk7/k;)Lg7/u;

    move-result-object v3

    goto :goto_e

    :cond_14
    const/4 v3, 0x0

    :goto_e
    invoke-virtual {v14, v2, v11}, Lk7/l;->m(ZLjava/util/BitSet;)Lk7/l;

    move-result-object v2

    invoke-virtual {v8, v2}, Lg7/g;->i(Lk7/l;)Lg7/g;

    move-result-object v8

    :goto_f
    if-eqz v1, :cond_15

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    if-eq v10, v9, :cond_16

    invoke-virtual {v8, v10}, Lg7/g;->g(Lg7/i;)Lg7/g;

    move-result-object v8

    :cond_16
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_17

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    const/4 v1, 0x1

    add-int/2addr v7, v1

    move v3, v1

    move/from16 v2, v18

    move-object/from16 v6, v19

    const/4 v1, 0x0

    goto/16 :goto_8

    :cond_18
    iput-object v5, v4, LP0/j;->b:Ljava/util/ArrayList;

    :cond_19
    iget-object v1, v4, LP0/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    if-ge v2, v1, :cond_1b

    iget-object v5, v4, LP0/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg7/g;

    if-ltz v3, :cond_1a

    iput v3, v5, Lg7/g;->a:I

    invoke-virtual {v5}, Lg7/g;->b()I

    move-result v5

    add-int/2addr v3, v5

    const/4 v5, 0x1

    add-int/2addr v2, v5

    goto :goto_10

    :cond_1a
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "address < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    iget-object v1, v4, LP0/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_11
    if-ge v2, v1, :cond_20

    iget-object v5, v4, LP0/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg7/g;

    instance-of v6, v5, Lg7/v;

    if-nez v6, :cond_1c

    goto :goto_12

    :cond_1c
    iget-object v6, v5, Lg7/g;->b:Lg7/i;

    move-object v7, v5

    check-cast v7, Lg7/v;

    iget-object v8, v6, Lg7/i;->d:LG5/v3;

    invoke-virtual {v8, v7}, LG5/v3;->b(Lg7/v;)Z

    move-result v8

    if-eqz v8, :cond_1d

    :goto_12
    move v6, v2

    const/4 v2, 0x1

    goto :goto_14

    :cond_1d
    const/16 v3, 0x28

    iget v8, v6, Lg7/i;->b:I

    if-ne v8, v3, :cond_1f

    invoke-virtual {v4, v5, v6}, LP0/j;->c(Lg7/g;Lg7/i;)Lg7/i;

    move-result-object v3

    if-eqz v3, :cond_1e

    iget-object v6, v4, LP0/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Lg7/g;->g(Lg7/i;)Lg7/g;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v6, v2

    const/4 v2, 0x1

    goto :goto_13

    :cond_1e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "method too long"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    :try_start_0
    iget-object v3, v4, LP0/j;->b:Ljava/util/ArrayList;

    const/4 v5, 0x1

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg7/e;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v5, Lg7/v;

    sget-object v8, Lg7/j;->I:Lg7/i;

    sget-object v9, Lk7/l;->c:Lk7/l;

    iget-object v10, v7, Lg7/g;->c:Lk7/p;

    iget-object v11, v7, Lg7/v;->f:Lg7/e;

    invoke-direct {v5, v8, v10, v9, v11}, Lg7/v;-><init>(Lg7/i;Lk7/p;Lk7/l;Lg7/e;)V

    iget-object v8, v4, LP0/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v4, LP0/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Lg7/v;->n(Lg7/e;)Lg7/v;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v2, 0x1

    add-int/2addr v1, v2

    :goto_13
    move v3, v2

    :goto_14
    add-int/lit8 v5, v6, 0x1

    move v2, v5

    goto :goto_11

    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unpaired TargetInsn"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unpaired TargetInsn (dangling)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    if-nez v3, :cond_19

    iget-object v1, v4, LP0/j;->b:Ljava/util/ArrayList;

    iget v2, v4, LP0/j;->c:I

    iget v3, v4, LP0/j;->a:I

    add-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v4, Lg7/h;

    invoke-direct {v4, v3, v2}, Lg7/h;-><init>(II)V

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v3, :cond_21

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg7/g;

    invoke-virtual {v4, v2, v5}, Ln7/e;->f(ILjava/lang/Object;)V

    const/4 v5, 0x1

    add-int/2addr v2, v5

    goto :goto_15

    :cond_21
    const/4 v2, 0x0

    iput-boolean v2, v4, LEc/g;->a:Z

    iput-object v4, v0, Lo3/n;->d:Ljava/lang/Object;

    sget v1, Lg7/r;->c:I

    sget v1, Lg7/o;->c:I

    iget-object v1, v4, Ln7/e;->b:[Ljava/lang/Object;

    array-length v1, v1

    new-instance v2, LZ4/i;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v2, LZ4/i;->b:Ljava/lang/Object;

    const/4 v3, 0x0

    iput v3, v2, LZ4/i;->a:I

    const/4 v3, 0x0

    iput-object v3, v2, LZ4/i;->c:Ljava/lang/Object;

    iput-object v3, v2, LZ4/i;->d:Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v1, :cond_33

    invoke-virtual {v4, v3}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg7/g;

    instance-of v6, v5, Lg7/p;

    if-nez v6, :cond_32

    instance-of v6, v5, Lg7/q;

    if-eqz v6, :cond_31

    move-object v6, v5

    check-cast v6, Lg7/q;

    invoke-virtual {v5}, Lg7/g;->c()I

    move-result v5

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    iget v7, v6, Lk7/k;->a:I

    invoke-static {v6}, LZ4/i;->d(Lk7/k;)Lk7/k;

    move-result-object v8

    invoke-virtual {v2, v5, v7}, LZ4/i;->a(II)V

    iget-object v6, v2, LZ4/i;->c:Ljava/lang/Object;

    check-cast v6, Lk7/m;

    invoke-virtual {v6, v7}, Lk7/m;->e(I)Lk7/k;

    move-result-object v6

    if-nez v6, :cond_22

    const/4 v9, 0x0

    goto :goto_17

    :cond_22
    iget-object v9, v8, Lk7/k;->b:Lm7/d;

    invoke-interface {v9}, Lm7/d;->getType()Lm7/c;

    move-result-object v9

    iget-object v10, v6, Lk7/k;->b:Lm7/d;

    invoke-interface {v10}, Lm7/d;->getType()Lm7/c;

    move-result-object v10

    invoke-virtual {v9, v10}, Lm7/c;->equals(Ljava/lang/Object;)Z

    move-result v9

    :goto_17
    if-nez v9, :cond_24

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_23
    const/4 v9, 0x0

    goto :goto_18

    :cond_24
    iget v9, v8, Lk7/k;->a:I

    iget v10, v6, Lk7/k;->a:I

    if-ne v9, v10, :cond_23

    const/4 v9, 0x1

    :goto_18
    if-eqz v9, :cond_25

    const/4 v5, 0x1

    const/4 v7, 0x0

    goto/16 :goto_1f

    :cond_25
    iget-object v0, v2, LZ4/i;->c:Ljava/lang/Object;

    check-cast v0, Lk7/m;

    iget-object v0, v0, Lk7/m;->b:[Lk7/k;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_19
    iget-object v4, v8, Lk7/k;->b:Lm7/d;

    if-ge v3, v1, :cond_28

    aget-object v9, v0, v3

    if-nez v9, :cond_27

    :cond_26
    const/4 v4, 0x1

    goto :goto_1a

    :cond_27
    invoke-interface {v4}, Lm7/d;->getType()Lm7/c;

    move-result-object v10

    iget-object v11, v9, Lk7/k;->b:Lm7/d;

    invoke-interface {v11}, Lm7/d;->getType()Lm7/c;

    move-result-object v11

    invoke-virtual {v10, v11}, Lm7/c;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_26

    goto :goto_1b

    :goto_1a
    add-int/2addr v3, v4

    goto :goto_19

    :cond_28
    const/4 v9, 0x0

    :goto_1b
    if-eqz v9, :cond_29

    sget-object v0, Lg7/m;->END_MOVED:Lg7/m;

    invoke-virtual {v2, v5, v0, v9}, LZ4/i;->b(ILg7/m;Lk7/k;)V

    :cond_29
    iget-object v0, v2, LZ4/i;->d:Ljava/lang/Object;

    check-cast v0, [I

    aget v0, v0, v7

    if-nez v6, :cond_30

    if-ltz v0, :cond_2b

    iget-object v1, v2, LZ4/i;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg7/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v5, :cond_2a

    goto :goto_1c

    :cond_2a
    const/4 v0, 0x0

    throw v0

    :cond_2b
    :goto_1c
    const/4 v0, 0x7

    const/4 v1, 0x4

    if-lez v7, :cond_2d

    iget-object v3, v2, LZ4/i;->c:Ljava/lang/Object;

    check-cast v3, Lk7/m;

    const/4 v6, 0x1

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v3, v9}, Lk7/m;->e(I)Lk7/k;

    move-result-object v3

    if-eqz v3, :cond_2d

    iget-object v6, v3, Lk7/k;->b:Lm7/d;

    invoke-interface {v6}, Lm7/d;->getType()Lm7/c;

    move-result-object v6

    iget v6, v6, Lm7/c;->b:I

    if-eq v6, v1, :cond_2c

    if-eq v6, v0, :cond_2c

    const/4 v6, 0x0

    goto :goto_1d

    :cond_2c
    const/4 v6, 0x1

    :goto_1d
    if-eqz v6, :cond_2d

    sget-object v6, Lg7/m;->END_CLOBBERED_BY_NEXT:Lg7/m;

    invoke-virtual {v2, v5, v6, v3}, LZ4/i;->b(ILg7/m;Lk7/k;)V

    :cond_2d
    invoke-interface {v4}, Lm7/d;->getType()Lm7/c;

    move-result-object v3

    iget v3, v3, Lm7/c;->b:I

    if-eq v3, v1, :cond_2e

    if-eq v3, v0, :cond_2e

    const/4 v1, 0x0

    goto :goto_1e

    :cond_2e
    const/4 v1, 0x1

    :goto_1e
    if-eqz v1, :cond_2f

    iget-object v0, v2, LZ4/i;->c:Ljava/lang/Object;

    check-cast v0, Lk7/m;

    const/4 v1, 0x1

    add-int/2addr v7, v1

    invoke-virtual {v0, v7}, Lk7/m;->e(I)Lk7/k;

    move-result-object v0

    if-eqz v0, :cond_2f

    sget-object v1, Lg7/m;->END_CLOBBERED_BY_PREV:Lg7/m;

    invoke-virtual {v2, v5, v1, v0}, LZ4/i;->b(ILg7/m;Lk7/k;)V

    :cond_2f
    sget-object v0, Lg7/m;->START:Lg7/m;

    new-instance v1, Lg7/n;

    invoke-direct {v1, v5, v0, v8}, Lg7/n;-><init>(ILg7/m;Lk7/k;)V

    const/4 v7, 0x0

    throw v7

    :cond_30
    const/4 v7, 0x0

    sget-object v0, Lg7/m;->END_REPLACED:Lg7/m;

    new-instance v1, Lg7/n;

    invoke-direct {v1, v5, v0, v6}, Lg7/n;-><init>(ILg7/m;Lk7/k;)V

    throw v7

    :cond_31
    const/4 v7, 0x0

    const/4 v5, 0x1

    :goto_1f
    add-int/2addr v3, v5

    goto/16 :goto_16

    :cond_32
    const/4 v7, 0x0

    move-object v0, v5

    check-cast v0, Lg7/p;

    invoke-virtual {v5}, Lg7/g;->c()I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v7

    :cond_33
    const v1, 0x7fffffff

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, LZ4/i;->a(II)V

    iget-object v1, v2, LZ4/i;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v2, v2, LZ4/i;->a:I

    sub-int v2, v3, v2

    if-nez v2, :cond_34

    sget v1, Lg7/o;->c:I

    goto :goto_23

    :cond_34
    new-array v4, v2, [Lg7/n;

    if-ne v3, v2, :cond_35

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_21

    :cond_35
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :cond_36
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg7/n;

    if-eqz v5, :cond_36

    const/4 v6, 0x1

    add-int/lit8 v7, v3, 0x1

    aput-object v5, v4, v3

    move v3, v7

    goto :goto_20

    :cond_37
    :goto_21
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v1, Lg7/o;

    invoke-direct {v1, v2}, Ln7/e;-><init>(I)V

    const/4 v3, 0x0

    :goto_22
    if-ge v3, v2, :cond_38

    aget-object v5, v4, v3

    invoke-virtual {v1, v3, v5}, Ln7/e;->f(ILjava/lang/Object;)V

    const/4 v5, 0x1

    add-int/2addr v3, v5

    goto :goto_22

    :cond_38
    const/4 v3, 0x0

    iput-boolean v3, v1, LEc/g;->a:Z

    :goto_23
    iget-object v1, v0, Lo3/n;->b:Ljava/lang/Object;

    check-cast v1, LZ3/x;

    iget-object v2, v1, LZ3/x;->c:Ljava/lang/Object;

    check-cast v2, [I

    array-length v3, v2

    iget-object v4, v1, LZ3/x;->b:Ljava/lang/Object;

    check-cast v4, LZ3/x;

    iget-object v4, v4, LZ3/x;->b:Ljava/lang/Object;

    check-cast v4, Lk7/b;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v6, Lg7/b;->c:Lg7/b;

    move-object v9, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_24
    iget-object v10, v1, LZ3/x;->d:Ljava/lang/Object;

    check-cast v10, LZ3/x;

    if-ge v6, v3, :cond_45

    aget v11, v2, v6

    invoke-virtual {v4, v11}, Lk7/b;->k(I)Lk7/a;

    move-result-object v11

    iget-object v12, v11, Lk7/a;->b:Lk7/g;

    invoke-virtual {v12}, Lk7/g;->h()Lk7/f;

    move-result-object v13

    iget-object v13, v13, Lk7/f;->a:Lk7/n;

    iget-object v13, v13, Lk7/n;->d:Lm7/b;

    iget-object v13, v13, Ln7/e;->b:[Ljava/lang/Object;

    array-length v13, v13

    if-eqz v13, :cond_44

    iget-object v13, v11, Lk7/a;->c:Ln7/g;

    iget v14, v13, Ln7/g;->c:I

    invoke-virtual {v12}, Lk7/g;->h()Lk7/f;

    move-result-object v12

    invoke-virtual {v12}, Lk7/f;->d()Lm7/e;

    move-result-object v12

    move-object v15, v12

    check-cast v15, Ln7/e;

    iget-object v15, v15, Ln7/e;->b:[Ljava/lang/Object;

    array-length v15, v15

    if-nez v15, :cond_39

    sget-object v12, Lg7/b;->c:Lg7/b;

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v21, v4

    goto/16 :goto_29

    :cond_39
    move-object/from16 v18, v1

    const/4 v1, -0x1

    move-object/from16 v19, v2

    iget v2, v11, Lk7/a;->d:I

    if-ne v2, v1, :cond_3a

    if-ne v14, v15, :cond_3b

    :cond_3a
    move/from16 v20, v3

    if-eq v2, v1, :cond_3c

    const/4 v1, 0x1

    add-int/lit8 v3, v15, 0x1

    if-ne v14, v3, :cond_3b

    invoke-virtual {v13, v15}, Ln7/g;->f(I)I

    move-result v1

    if-ne v2, v1, :cond_3b

    goto :goto_25

    :cond_3b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen: weird successors list"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    :goto_25
    const/4 v1, 0x0

    :goto_26
    if-ge v1, v15, :cond_3e

    invoke-interface {v12, v1}, Lm7/e;->getType(I)Lm7/c;

    move-result-object v2

    sget-object v3, Lm7/c;->s:Lm7/c;

    invoke-virtual {v2, v3}, Lm7/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    const/4 v2, 0x1

    add-int/lit8 v15, v1, 0x1

    goto :goto_27

    :cond_3d
    const/4 v2, 0x1

    add-int/2addr v1, v2

    goto :goto_26

    :cond_3e
    :goto_27
    new-instance v1, Lg7/b;

    invoke-direct {v1, v15}, Ln7/e;-><init>(I)V

    const/4 v2, 0x0

    :goto_28
    if-ge v2, v15, :cond_3f

    new-instance v3, Ll7/u;

    invoke-interface {v12, v2}, Lm7/e;->getType(I)Lm7/c;

    move-result-object v14

    invoke-direct {v3, v14}, Ll7/u;-><init>(Lm7/c;)V

    invoke-virtual {v13, v2}, Ln7/g;->f(I)I

    move-result v14

    move-object/from16 v21, v4

    iget-object v4, v10, LZ3/x;->b:Ljava/lang/Object;

    check-cast v4, [Lg7/e;

    aget-object v4, v4, v14

    invoke-virtual {v4}, Lg7/g;->c()I

    move-result v4

    new-instance v14, Lg7/a;

    invoke-direct {v14, v3, v4}, Lg7/a;-><init>(Ll7/u;I)V

    invoke-virtual {v1, v2, v14}, Ln7/e;->f(ILjava/lang/Object;)V

    const/4 v3, 0x1

    add-int/2addr v2, v3

    move-object/from16 v4, v21

    goto :goto_28

    :cond_3f
    move-object/from16 v21, v4

    const/4 v2, 0x0

    iput-boolean v2, v1, LEc/g;->a:Z

    move-object v12, v1

    :goto_29
    iget-object v1, v9, Ln7/e;->b:[Ljava/lang/Object;

    array-length v1, v1

    if-nez v1, :cond_40

    goto :goto_2b

    :cond_40
    invoke-virtual {v9, v12}, Ln7/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    if-eqz v7, :cond_41

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v10, LZ3/x;->c:Ljava/lang/Object;

    check-cast v1, [Lg7/e;

    iget v2, v7, Lk7/a;->a:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lg7/g;->c()I

    move-result v1

    iget-object v2, v10, LZ3/x;->d:Ljava/lang/Object;

    check-cast v2, [Lg7/e;

    iget v3, v11, Lk7/a;->a:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lg7/g;->c()I

    move-result v2

    sub-int/2addr v2, v1

    const v1, 0xffff

    if-gt v2, v1, :cond_42

    move-object v8, v11

    :goto_2a
    const/4 v1, 0x1

    goto :goto_2c

    :cond_41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "start == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    iget-object v1, v9, Ln7/e;->b:[Ljava/lang/Object;

    array-length v1, v1

    if-eqz v1, :cond_43

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v7, Lk7/a;->a:I

    iget-object v2, v10, LZ3/x;->c:Ljava/lang/Object;

    check-cast v2, [Lg7/e;

    aget-object v1, v2, v1

    iget v2, v8, Lk7/a;->a:I

    iget-object v3, v10, LZ3/x;->d:Ljava/lang/Object;

    check-cast v3, [Lg7/e;

    aget-object v2, v3, v2

    new-instance v3, Lg7/c;

    invoke-virtual {v1}, Lg7/g;->c()I

    move-result v1

    invoke-virtual {v2}, Lg7/g;->c()I

    move-result v2

    invoke-direct {v3, v1, v2, v9}, Lg7/c;-><init>(IILg7/b;)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_43
    :goto_2b
    move-object v7, v11

    move-object v8, v7

    move-object v9, v12

    goto :goto_2a

    :cond_44
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v21, v4

    goto :goto_2a

    :goto_2c
    add-int/2addr v6, v1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    goto/16 :goto_24

    :cond_45
    iget-object v1, v9, Ln7/e;->b:[Ljava/lang/Object;

    array-length v1, v1

    if-eqz v1, :cond_46

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v7, Lk7/a;->a:I

    iget-object v2, v10, LZ3/x;->c:Ljava/lang/Object;

    check-cast v2, [Lg7/e;

    aget-object v1, v2, v1

    iget v2, v8, Lk7/a;->a:I

    iget-object v3, v10, LZ3/x;->d:Ljava/lang/Object;

    check-cast v3, [Lg7/e;

    aget-object v2, v3, v2

    new-instance v3, Lg7/c;

    invoke-virtual {v1}, Lg7/g;->c()I

    move-result v1

    invoke-virtual {v2}, Lg7/g;->c()I

    move-result v2

    invoke-direct {v3, v1, v2, v9}, Lg7/c;-><init>(IILg7/b;)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_46
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_47

    sget-object v1, Lg7/d;->c:Lg7/d;

    goto :goto_2e

    :cond_47
    new-instance v2, Lg7/d;

    invoke-direct {v2, v1}, Ln7/e;-><init>(I)V

    const/4 v3, 0x0

    :goto_2d
    if-ge v3, v1, :cond_48

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg7/c;

    invoke-virtual {v2, v3, v4}, Ln7/e;->f(ILjava/lang/Object;)V

    const/4 v4, 0x1

    add-int/2addr v3, v4

    goto :goto_2d

    :cond_48
    const/4 v3, 0x0

    iput-boolean v3, v2, LEc/g;->a:Z

    move-object v1, v2

    :goto_2e
    iput-object v1, v0, Lo3/n;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v0, Lo3/n;->a:Ljava/lang/Object;

    iput-object v1, v0, Lo3/n;->b:Ljava/lang/Object;

    return-void

    :cond_49
    move v3, v1

    move-object/from16 v19, v6

    const/4 v1, 0x0

    sub-int v2, v8, v5

    iget-object v5, v4, LP0/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v3

    :goto_2f
    if-ge v6, v5, :cond_4b

    iget-object v7, v4, LP0/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg7/g;

    instance-of v9, v7, Lg7/e;

    if-nez v9, :cond_4a

    iget-object v9, v4, LP0/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Lg7/g;->h(I)Lg7/g;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    const/4 v7, 0x1

    add-int/2addr v6, v7

    goto :goto_2f

    :cond_4b
    move v1, v3

    move v5, v8

    move-object/from16 v6, v19

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_4c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already processed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public t(Lr/b;)Lr/h;
    .locals 5

    iget-object v0, p0, Lo3/n;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr/h;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lr/h;->b:Lr/b;

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lr/h;

    iget-object p0, p0, Lo3/n;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-direct {v1, p0, p1}, Lr/h;-><init>(Landroid/content/Context;Lr/b;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public v(LH6/j;)Z
    .locals 0

    iget-object p0, p0, Lo3/n;->c:Ljava/lang/Object;

    check-cast p0, LH6/s;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object p0, p0, LH6/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized w(LN3/p;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, LN3/p;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo3/n;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo3/n;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-string v2, "waiting-for-response"

    invoke-virtual {p1, v2}, LN3/p;->addMarker(Ljava/lang/String;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lo3/n;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, LN3/A;->a:Z

    if-eqz p1, :cond_1

    const-string p1, "Request for cacheKey=%s is in flight, putting on hold."

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, LN3/A;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lo3/n;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, LN3/p;->setNetworkRequestCompleteListener(LN3/n;)V

    sget-boolean p1, LN3/A;->a:Z

    if-eqz p1, :cond_3

    const-string p1, "new request, sending to network %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, LN3/A;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public x(Lv2/z1;Lsb/n;)V
    .locals 1

    iget-object v0, p0, Lo3/n;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lo3/n;->c:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lo3/n;->a:Ljava/lang/Object;

    check-cast p1, Lv2/H;

    iget-object p0, p0, Lo3/n;->b:Ljava/lang/Object;

    check-cast p0, Lv2/H;

    invoke-interface {p2, p1, p0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public declared-synchronized y(LN3/p;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, LN3/p;->getCacheKey()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lo3/n;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, LN3/A;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "%d waiting requests for cacheKey=%s; resend to network"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, LN3/A;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN3/p;

    iget-object v2, p0, Lo3/n;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p0}, LN3/p;->setNetworkRequestCompleteListener(LN3/n;)V

    iget-object p1, p0, Lo3/n;->c:Ljava/lang/Object;

    check-cast p1, LN3/c;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo3/n;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/PriorityBlockingQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    :try_start_1
    invoke-interface {p1, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "Couldn\'t add request to queue. %s"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, LN3/A;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    iget-object p1, p0, Lo3/n;->c:Ljava/lang/Object;

    check-cast p1, LN3/c;

    invoke-virtual {p1}, LN3/c;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public z(LH6/j;)V
    .locals 2

    iget-object v0, p0, Lo3/n;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lo3/n;->v(LH6/j;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo3/n;->c:Ljava/lang/Object;

    check-cast p1, LH6/s;

    iget-boolean v1, p1, LH6/s;->c:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p1, LH6/s;->c:Z

    iget-object p0, p0, Lo3/n;->b:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
