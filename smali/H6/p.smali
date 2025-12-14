.class public final LH6/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LH6/p;->a:I

    iput-object p2, p0, LH6/p;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    const/4 v0, 0x2

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v6, v1, LH6/p;->a:I

    packed-switch v6, :pswitch_data_0

    iget-object v0, v1, LH6/p;->b:Ljava/lang/Object;

    check-cast v0, Lw6/q;

    iget-object v0, v0, Lw6/q;->I:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void

    :pswitch_0
    const-string v0, "SeslCVInsetsCallback"

    const-string v2, "WindowInsetsAnimation could have been cancelled"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, LH6/p;->b:Ljava/lang/Object;

    check-cast v1, Lr/e;

    iget-boolean v2, v1, Lr/e;->f:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v2, v1, Lr/e;->e:Z

    if-eqz v2, :cond_2

    const-string v2, "Start to restore insets state"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, v1, Lr/e;->e:Z

    iget-object v0, v1, Lr/e;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, v1, Lr/e;->b:Landroid/view/WindowInsets;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    :cond_2
    :goto_0
    return-void

    :pswitch_1
    iget-object v0, v1, LH6/p;->b:Ljava/lang/Object;

    check-cast v0, Lm/C;

    iget-object v1, v0, Lm/C;->b:Lm/s;

    invoke-virtual {v0}, Lm/C;->A()Landroid/view/Menu;

    move-result-object v0

    instance-of v2, v0, Ls/i;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Ls/i;

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ls/i;->w()V

    :cond_4
    :try_start_0
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    invoke-virtual {v1, v5, v0}, Lm/s;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1, v5, v3, v0}, Lm/s;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_5
    :goto_2
    invoke-interface {v0}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ls/i;->v()V

    :cond_7
    return-void

    :goto_3
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ls/i;->v()V

    :cond_8
    throw v0

    :pswitch_2
    iget-object v0, v1, LH6/p;->b:Ljava/lang/Object;

    check-cast v0, LJ6/j;

    iget-object v1, v0, LJ6/j;->c:Ljava/lang/Object;

    check-cast v1, Lm/j;

    iget-object v1, v1, Lm/j;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iget-object v2, v0, LJ6/j;->c:Ljava/lang/Object;

    check-cast v2, Lm/j;

    iget v3, v2, Lm/j;->G:I

    if-eq v1, v3, :cond_15

    iget-object v1, v2, Lm/j;->c:Landroid/view/Window;

    const v3, 0x7f0b0883

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v6, 0x7f0b076a

    invoke-virtual {v1, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v6, 0x7f0b0d71

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0b0a72

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0b0dab

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0b01eb

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0b038c

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const v11, 0x7f0b02f0

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v11, 0x8

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v11, :cond_9

    move v10, v4

    goto :goto_4

    :cond_9
    move v10, v5

    :goto_4
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_a

    move v8, v4

    goto :goto_5

    :cond_a
    move v8, v5

    :goto_5
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v11, :cond_b

    move v3, v4

    goto :goto_6

    :cond_b
    move v3, v5

    :goto_6
    iget-object v12, v2, Lm/j;->y:Landroid/view/View;

    if-eqz v12, :cond_c

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eq v12, v11, :cond_c

    goto :goto_7

    :cond_c
    move v4, v5

    :goto_7
    iget-object v2, v2, Lm/j;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v1, :cond_10

    if-eqz v10, :cond_d

    if-nez v8, :cond_d

    if-eqz v3, :cond_e

    :cond_d
    if-eqz v4, :cond_f

    :cond_e
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_8

    :cond_f
    const v4, 0x7f0710c8

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v5, v4, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    :cond_10
    :goto_8
    if-eqz v6, :cond_12

    const v1, 0x7f0710c4

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-eqz v10, :cond_11

    if-eqz v8, :cond_11

    if-nez v3, :cond_11

    invoke-virtual {v6, v1, v5, v1, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_9

    :cond_11
    const v3, 0x7f0710c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v6, v1, v5, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_12
    :goto_9
    if-eqz v7, :cond_13

    const v1, 0x7f0710a9

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v3, 0x7f0710a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f0710a4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v7, v1, v5, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_13
    if-eqz v9, :cond_14

    const v1, 0x7f0710ad

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v3, 0x7f0710ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v9, v1, v5, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_14
    iget-object v1, v0, LJ6/j;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_15
    iget-object v0, v0, LJ6/j;->c:Ljava/lang/Object;

    check-cast v0, Lm/j;

    iget-object v1, v0, Lm/j;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, v0, Lm/j;->G:I

    return-void

    :cond_16
    :goto_a
    :pswitch_3
    iget-object v0, v1, LH6/p;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lkd/c;

    monitor-enter v4

    :try_start_1
    invoke-virtual {v4}, Lkd/c;->c()Lkd/a;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    monitor-exit v4

    if-nez v5, :cond_17

    return-void

    :cond_17
    iget-object v4, v5, Lkd/a;->c:Lkd/b;

    invoke-static {v4}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v0, v1, LH6/p;->b:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lkd/c;

    sget-object v0, Lkd/c;->j:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_18

    iget-object v0, v4, Lkd/b;->a:Lkd/c;

    iget-object v0, v0, Lkd/c;->a:LX4/i;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const-string v0, "starting"

    invoke-static {v5, v4, v0}, Landroidx/activity/t;->a(Lkd/a;Lkd/b;Ljava/lang/String;)V

    goto :goto_b

    :cond_18
    move-wide v8, v2

    :goto_b
    :try_start_2
    invoke-static {v6, v5}, Lkd/c;->a(Lkd/c;Lkd/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v7, :cond_16

    iget-object v0, v4, Lkd/b;->a:Lkd/c;

    iget-object v0, v0, Lkd/c;->a:LX4/i;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Landroidx/activity/t;->d(J)Ljava/lang/String;

    move-result-object v0

    const-string v6, "finished run in "

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Landroidx/activity/t;->a(Lkd/a;Lkd/b;Ljava/lang/String;)V

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_3
    iget-object v0, v6, Lkd/c;->a:LX4/i;

    iget-object v0, v0, LX4/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz v7, :cond_19

    iget-object v1, v4, Lkd/b;->a:Lkd/c;

    iget-object v1, v1, Lkd/c;->a:LX4/i;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long/2addr v1, v8

    invoke-static {v1, v2}, Landroidx/activity/t;->d(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "failed a run in "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v4, v1}, Landroidx/activity/t;->a(Lkd/a;Lkd/b;Ljava/lang/String;)V

    :cond_19
    throw v0

    :catchall_3
    move-exception v0

    move-object v1, v0

    monitor-exit v4

    throw v1

    :pswitch_4
    iget-object v0, v1, LH6/p;->b:Ljava/lang/Object;

    check-cast v0, Lk1/d;

    invoke-virtual {v0, v5}, Lk1/d;->n(I)V

    return-void

    :pswitch_5
    iget-object v1, v1, LH6/p;->b:Ljava/lang/Object;

    check-cast v1, LG6/f;

    iput-boolean v5, v1, LG6/f;->b:Z

    iget-object v2, v1, LG6/f;->e:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M:Lk1/d;

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Lk1/d;->f()Z

    move-result v3

    if-eqz v3, :cond_1a

    iget v0, v1, LG6/f;->c:I

    invoke-virtual {v1, v0}, LG6/f;->b(I)V

    goto :goto_c

    :cond_1a
    iget v3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L:I

    if-ne v3, v0, :cond_1b

    iget v0, v1, LG6/f;->c:I

    invoke-virtual {v2, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E(I)V

    :cond_1b
    :goto_c
    return-void

    :pswitch_6
    iget-object v0, v1, LH6/p;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/work/Worker;

    :try_start_4
    invoke-virtual {v1}, Landroidx/work/Worker;->f()Lf3/r;

    move-result-object v0

    iget-object v2, v1, Landroidx/work/Worker;->e:Lq3/j;

    invoke-virtual {v2, v0}, Lq3/j;->j(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_d

    :catchall_4
    move-exception v0

    iget-object v1, v1, Landroidx/work/Worker;->e:Lq3/j;

    invoke-virtual {v1, v0}, Lq3/j;->k(Ljava/lang/Throwable;)Z

    :goto_d
    return-void

    :pswitch_7
    iget-object v0, v1, LH6/p;->b:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/l;

    iget-object v1, v0, Lcom/bumptech/glide/l;->c:Lcom/bumptech/glide/manager/d;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/manager/d;->f(Lcom/bumptech/glide/manager/e;)V

    return-void

    :pswitch_8
    iget-object v0, v1, LH6/p;->b:Ljava/lang/Object;

    check-cast v0, Lc5/K;

    iget-object v0, v0, Lc5/K;->u:Lc5/B;

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {v0, v1}, Lc5/B;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :pswitch_9
    iget-object v0, v1, LH6/p;->b:Ljava/lang/Object;

    check-cast v0, Lo3/f;

    iget-object v0, v0, Lo3/f;->b:Ljava/lang/Object;

    check-cast v0, Lc5/y;

    iget-object v0, v0, Lc5/y;->b:Lb5/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " disconnecting because it was signed out."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lb5/e;->disconnect(Ljava/lang/String;)V

    return-void

    :pswitch_a
    iget-object v0, v1, LH6/p;->b:Ljava/lang/Object;

    check-cast v0, Lc5/y;

    invoke-virtual {v0}, Lc5/y;->e()V

    return-void

    :pswitch_b
    iget-object v0, v1, LH6/p;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v5}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    return-void

    :pswitch_c
    monitor-enter p0

    :try_start_5
    iget-object v0, v1, LH6/p;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/k;

    invoke-static {v0, v5}, Landroidx/databinding/k;->access$202(Landroidx/databinding/k;Z)Z

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    invoke-static {}, Landroidx/databinding/k;->access$300()V

    iget-object v0, v1, LH6/p;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/k;

    invoke-static {v0}, Landroidx/databinding/k;->access$400(Landroidx/databinding/k;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, v1, LH6/p;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/k;

    invoke-static {v0}, Landroidx/databinding/k;->access$400(Landroidx/databinding/k;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Landroidx/databinding/k;->access$500()Landroid/view/View$OnAttachStateChangeListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, v1, LH6/p;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/k;

    invoke-static {v0}, Landroidx/databinding/k;->access$400(Landroidx/databinding/k;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Landroidx/databinding/k;->access$500()Landroid/view/View$OnAttachStateChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_e

    :cond_1c
    iget-object v0, v1, LH6/p;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/k;

    invoke-virtual {v0}, Landroidx/databinding/k;->executePendingBindings()V

    :goto_e
    return-void

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    throw v0

    :pswitch_d
    iget-object v0, v1, LH6/p;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/core/widget/d;

    iget-boolean v4, v0, Landroidx/core/widget/d;->o:Z

    if-nez v4, :cond_1d

    goto/16 :goto_10

    :cond_1d
    iget-boolean v4, v0, Landroidx/core/widget/d;->m:Z

    iget-object v6, v0, Landroidx/core/widget/d;->a:Landroidx/core/widget/a;

    if-eqz v4, :cond_1e

    iput-boolean v5, v0, Landroidx/core/widget/d;->m:Z

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Landroidx/core/widget/a;->e:J

    iput-wide v2, v6, Landroidx/core/widget/a;->g:J

    iput-wide v7, v6, Landroidx/core/widget/a;->f:J

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v6, Landroidx/core/widget/a;->h:F

    :cond_1e
    iget-wide v2, v6, Landroidx/core/widget/a;->g:J

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-lez v2, :cond_1f

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v9, v6, Landroidx/core/widget/a;->g:J

    iget v4, v6, Landroidx/core/widget/a;->i:I

    int-to-long v11, v4

    add-long/2addr v9, v11

    cmp-long v2, v2, v9

    if-lez v2, :cond_1f

    goto :goto_f

    :cond_1f
    invoke-virtual {v0}, Landroidx/core/widget/d;->e()Z

    move-result v2

    if-nez v2, :cond_20

    :goto_f
    iput-boolean v5, v0, Landroidx/core/widget/d;->o:Z

    goto :goto_10

    :cond_20
    iget-boolean v2, v0, Landroidx/core/widget/d;->n:Z

    iget-object v3, v0, Landroidx/core/widget/d;->c:Landroid/widget/ListView;

    if-eqz v2, :cond_21

    iput-boolean v5, v0, Landroidx/core/widget/d;->n:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x0

    move-wide v9, v11

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_21
    iget-wide v4, v6, Landroidx/core/widget/a;->f:J

    cmp-long v2, v4, v7

    if-eqz v2, :cond_22

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Landroidx/core/widget/a;->a(J)F

    move-result v2

    const/high16 v7, -0x3f800000    # -4.0f

    mul-float/2addr v7, v2

    mul-float/2addr v7, v2

    const/high16 v8, 0x40800000    # 4.0f

    mul-float/2addr v2, v8

    add-float/2addr v2, v7

    iget-wide v7, v6, Landroidx/core/widget/a;->f:J

    sub-long v7, v4, v7

    iput-wide v4, v6, Landroidx/core/widget/a;->f:J

    long-to-float v4, v7

    mul-float/2addr v4, v2

    iget v2, v6, Landroidx/core/widget/a;->d:F

    mul-float/2addr v4, v2

    float-to-int v2, v4

    iget-object v0, v0, Landroidx/core/widget/d;->q:Lt/g0;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->scrollListBy(I)V

    sget-object v0, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_10
    return-void

    :cond_22
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot compute scroll delta before calling start()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_e
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TIMEOUT"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, LH6/p;->b:Ljava/lang/Object;

    check-cast v1, LR5/i;

    invoke-virtual {v1, v0}, LR5/i;->c(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "Rpc"

    const-string v1, "No response"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return-void

    :pswitch_f
    iget-object v0, v1, LH6/p;->b:Ljava/lang/Object;

    check-cast v0, Lo3/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_11
    :try_start_7
    iget-object v1, v0, Lo3/n;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, LS3/a;

    invoke-virtual {v0, v1}, Lo3/n;->q(LS3/a;)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_11

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_11

    :pswitch_10
    iget-object v0, v1, LH6/p;->b:Ljava/lang/Object;

    check-cast v0, LQ5/a;

    iget-object v2, v0, LQ5/a;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    invoke-virtual {v0}, LQ5/a;->b()Z

    move-result v1

    if-nez v1, :cond_24

    monitor-exit v2

    goto :goto_12

    :catchall_6
    move-exception v0

    goto :goto_13

    :cond_24
    const-string v1, "WakeLock"

    iget-object v3, v0, LQ5/a;->j:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " ** IS FORCE-RELEASED ON TIMEOUT **"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, LQ5/a;->d()V

    invoke-virtual {v0}, LQ5/a;->b()Z

    move-result v1

    if-nez v1, :cond_25

    monitor-exit v2

    goto :goto_12

    :cond_25
    iput v4, v0, LQ5/a;->c:I

    invoke-virtual {v0}, LQ5/a;->e()V

    monitor-exit v2

    :goto_12
    return-void

    :goto_13
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    throw v0

    :pswitch_11
    iget-object v0, v1, LH6/p;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0}, Lcom/google/android/material/textfield/TextInputLayout;->access$300(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/google/android/material/textfield/a;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/material/textfield/a;->g:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    invoke-virtual {v0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    return-void

    :pswitch_12
    iget-object v0, v1, LH6/p;->b:Ljava/lang/Object;

    check-cast v0, LJa/a;

    invoke-interface {v0}, LJa/a;->run()V

    invoke-interface {v0}, LJa/a;->onFinish()I

    return-void

    :pswitch_13
    new-instance v2, Lf1/D;

    iget-object v1, v1, LH6/p;->b:Ljava/lang/Object;

    check-cast v1, LH6/q;

    iget-object v3, v1, LH6/q;->b:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    iget-object v3, v3, Lcom/google/android/material/snackbar/SnackbarContentLayout;->f:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-direct {v2, v3}, Lf1/D;-><init>(Landroid/view/View;)V

    iget-object v1, v1, LH6/q;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    iget-object v3, v1, Lcom/google/android/material/snackbar/SnackbarContentLayout;->b:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v0

    iget-object v0, v1, Lcom/google/android/material/snackbar/SnackbarContentLayout;->b:Landroid/widget/Button;

    invoke-static {v3, v3, v3, v3}, Lf1/B;->a(IIII)Lf1/B;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lf1/D;->a(Landroid/view/View;Lf1/B;)Lf1/A;

    iget-object v0, v1, Lcom/google/android/material/snackbar/SnackbarContentLayout;->f:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
