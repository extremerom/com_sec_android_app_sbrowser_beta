.class public final Lz1/p;
.super Lc2/m;
.source "SourceFile"


# instance fields
.field public final d:Lz1/V;

.field public final e:Lz1/e;

.field public final f:Ld2/a;

.field public final g:Landroid/content/ComponentName;

.field public final h:Lz1/b1;

.field public final i:Z

.field public final j:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final k:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public l:Ljava/lang/Object;

.field public final m:LNc/m0;

.field public final n:LQc/A0;


# direct methods
.method public constructor <init>(Lz1/V;Lz1/e;Landroid/os/Bundle;I)V
    .locals 3

    and-int/lit8 p4, p4, 0x4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p3, v0

    :cond_0
    sget-object p4, Ld2/f;->a:Ld2/f;

    invoke-virtual {p1}, Lz1/V;->getSizeMode()Lz1/b1;

    move-result-object v1

    const-string v2, "widget"

    invoke-static {p1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "id"

    invoke-static {p2, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "sizeMode"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lz1/u;->e(Lz1/e;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lc2/m;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lz1/p;->d:Lz1/V;

    iput-object p2, p0, Lz1/p;->e:Lz1/e;

    iput-object p4, p0, Lz1/p;->f:Ld2/a;

    iput-object v0, p0, Lz1/p;->g:Landroid/content/ComponentName;

    iput-object v1, p0, Lz1/p;->h:Lz1/b1;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lz1/p;->i:Z

    const/high16 p1, -0x80000000

    iget p2, p2, Lz1/e;->a:I

    if-gt p1, p2, :cond_2

    const/4 p1, -0x1

    if-lt p2, p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "If the AppWidgetSession is not created for a bound widget, you must provide a lambda action receiver"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    sget-object p1, La0/V;->c:La0/V;

    invoke-static {v0, p1}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p2

    iput-object p2, p0, Lz1/p;->j:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p3, p1}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Lz1/p;->k:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object p1, Lfb/w;->a:Lfb/w;

    iput-object p1, p0, Lz1/p;->l:Ljava/lang/Object;

    invoke-static {}, LNc/E;->d()LNc/m0;

    move-result-object p1

    iput-object p1, p0, Lz1/p;->m:LNc/m0;

    invoke-static {v0}, LQc/n0;->c(Ljava/lang/Object;)LQc/A0;

    move-result-object p1

    iput-object p1, p0, Lz1/p;->n:LQc/A0;

    return-void
.end method


# virtual methods
.method public final b()Lz1/Q0;
    .locals 1

    new-instance p0, Lz1/Q0;

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lz1/Q0;-><init>(I)V

    return-object p0
.end method

.method public final c()V
    .locals 1

    iget-object p0, p0, Lz1/p;->m:LNc/m0;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LNc/t0;->a(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public final d(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {p2}, Lz1/u;->d(Ljava/lang/Throwable;)V

    iget-boolean v0, p0, Lz1/p;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz1/p;->e:Lz1/e;

    iget v1, v0, Lz1/e;->a:I

    iget-object p0, p0, Lz1/p;->d:Lz1/V;

    invoke-virtual {p0, p1, v0, v1, p2}, Lz1/V;->onCompositionError(Landroid/content/Context;Lx1/o;ILjava/lang/Throwable;)V

    return-void

    :cond_0
    throw p2
.end method

.method public final e(Landroid/content/Context;Lx1/n;Lib/c;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "UpdateAppWidget / "

    const-string v5, "No app widget info for "

    instance-of v6, v3, Lz1/j;

    if-eqz v6, :cond_0

    move-object v6, v3

    check-cast v6, Lz1/j;

    iget v7, v6, Lz1/j;->f:I

    const/high16 v8, -0x80000000

    and-int v9, v7, v8

    if-eqz v9, :cond_0

    sub-int/2addr v7, v8

    iput v7, v6, Lz1/j;->f:I

    goto :goto_0

    :cond_0
    new-instance v6, Lz1/j;

    check-cast v3, Lkb/c;

    invoke-direct {v6, v0, v3}, Lz1/j;-><init>(Lz1/p;Lkb/c;)V

    :goto_0
    iget-object v3, v6, Lz1/j;->d:Ljava/lang/Object;

    sget-object v7, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v8, v6, Lz1/j;->f:I

    const/4 v9, 0x1

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const-string v14, " "

    const-string v15, "msg"

    const-string v10, "GWT:AppWidgetSession"

    if-eqz v8, :cond_4

    if-eq v8, v9, :cond_3

    if-eq v8, v13, :cond_2

    if-eq v8, v12, :cond_2

    if-eq v8, v11, :cond_2

    const/4 v1, 0x5

    if-eq v8, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v6, Lz1/j;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v3}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_2
    invoke-static {v3}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_3
    iget-object v0, v6, Lz1/j;->c:Lx1/n;

    iget-object v1, v6, Lz1/j;->b:Landroid/content/Context;

    iget-object v2, v6, Lz1/j;->a:Ljava/lang/Object;

    check-cast v2, Lz1/p;

    invoke-static {v3}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v3}, LG5/A2;->f(Ljava/lang/Object;)V

    invoke-static/range {p2 .. p2}, LG5/T2;->h(Lx1/l;)Z

    move-result v3

    iget-object v8, v0, Lz1/p;->e:Lz1/e;

    if-eqz v3, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "processEmittableTree-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Le7/a;->a:Ljava/lang/String;

    invoke-static {v1, v14, v0, v10}, Lw2/j;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_5
    sget-object v3, LC1/B;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v11, "processEmittableTree / "

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " / "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v15}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v11, Le7/a;->a:Ljava/lang/String;

    invoke-static {v11, v14, v3, v10}, Lw2/j;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    check-cast v3, Lz1/Q0;

    sget-object v3, Lz1/E0;->g:Lz1/F;

    iget v8, v8, Lz1/e;->a:I

    iput-object v0, v6, Lz1/j;->a:Ljava/lang/Object;

    iput-object v1, v6, Lz1/j;->b:Landroid/content/Context;

    iput-object v2, v6, Lz1/j;->c:Lx1/n;

    iput v9, v6, Lz1/j;->f:I

    invoke-virtual {v3, v1, v8, v6}, Lz1/F;->b(Landroid/content/Context;ILkb/c;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v7, :cond_6

    return-object v7

    :cond_6
    move-object/from16 v27, v2

    move-object v2, v0

    move-object/from16 v0, v27

    :goto_1
    check-cast v3, Lz1/E0;

    sget-object v8, Lz1/u;->a:Ljava/util/HashMap;

    const-string v8, "<this>"

    invoke-static {v1, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "appwidget"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v11, "null cannot be cast to non-null type android.appwidget.AppWidgetManager"

    invoke-static {v8, v11}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/appwidget/AppWidgetManager;

    :try_start_0
    iget-object v12, v2, Lz1/p;->g:Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v13, v2, Lz1/p;->e:Lz1/e;

    if-nez v12, :cond_8

    :try_start_1
    iget v12, v13, Lz1/e;->a:I

    invoke-virtual {v8, v12}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v12

    if-eqz v12, :cond_7

    iget-object v5, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v23, v5

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v4, v7

    goto/16 :goto_8

    :catch_0
    move-object v4, v7

    :goto_2
    const/4 v1, 0x0

    goto/16 :goto_a

    :cond_7
    iget v0, v13, Lz1/e;->a:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_8
    move-object/from16 v23, v12

    :goto_3
    move-object v5, v0

    check-cast v5, Lz1/Q0;

    invoke-static {v5}, LG5/V2;->d(Lz1/Q0;)V

    invoke-static {v0}, LG5/V2;->j(Lx1/n;)Ljava/util/LinkedHashMap;

    move-result-object v5

    iput-object v5, v2, Lz1/p;->l:Ljava/lang/Object;

    iget v5, v13, Lz1/e;->a:I
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget v12, v13, Lz1/e;->a:I

    :try_start_2
    move-object v13, v0

    check-cast v13, Lz1/Q0;

    invoke-virtual {v3, v0}, Lz1/E0;->a(Lx1/l;)I

    move-result v0

    sget-wide v21, LH0/g;->c:J

    new-instance v11, Lz1/f1;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v16
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v26, v7

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v7

    if-ne v7, v9, :cond_9

    :goto_4
    move/from16 v19, v9

    goto :goto_5

    :cond_9
    const/4 v9, 0x0

    goto :goto_4

    :goto_5
    const v25, 0xbde0

    const/16 v24, 0x0

    move-object/from16 v16, v11

    move-object/from16 v17, v1

    move/from16 v18, v5

    move-object/from16 v20, v3

    invoke-direct/range {v16 .. v25}, Lz1/f1;-><init>(Landroid/content/Context;IZLz1/E0;JLandroid/content/ComponentName;ZI)V

    iget-object v5, v13, Lx1/n;->c:Ljava/util/ArrayList;

    invoke-static {v11, v5, v0}, LG5/X2;->h(Lz1/f1;Ljava/util/List;I)Landroid/widget/RemoteViews;

    move-result-object v0

    iget-boolean v5, v2, Lz1/p;->i:Z

    if-eqz v5, :cond_a

    sget v5, LG5/X2;->a:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " / lastViewId : "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v15}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Le7/a;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8, v12, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v4, v26

    goto :goto_8

    :catch_1
    move-object/from16 v4, v26

    goto/16 :goto_2

    :cond_a
    :goto_6
    iget-object v4, v2, Lz1/p;->n:LQc/A0;

    invoke-virtual {v4, v0}, LQc/A0;->j(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v1, 0x0

    iput-object v1, v6, Lz1/j;->a:Ljava/lang/Object;

    iput-object v1, v6, Lz1/j;->b:Landroid/content/Context;

    iput-object v1, v6, Lz1/j;->c:Lx1/n;

    const/4 v0, 0x2

    iput v0, v6, Lz1/j;->f:I

    invoke-virtual {v3, v6}, Lz1/E0;->b(Lkb/c;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v4, v26

    if-ne v0, v4, :cond_b

    return-object v4

    :cond_b
    :goto_7
    invoke-static {}, Lz1/d1;->a()V

    goto :goto_b

    :goto_8
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lz1/u;->d(Ljava/lang/Throwable;)V

    iget-boolean v5, v2, Lz1/p;->i:Z

    if-eqz v5, :cond_c

    iget-object v5, v2, Lz1/p;->e:Lz1/e;

    iget v7, v5, Lz1/e;->a:I

    iget-object v2, v2, Lz1/p;->d:Lz1/V;

    invoke-virtual {v2, v1, v5, v7, v0}, Lz1/V;->onCompositionError(Landroid/content/Context;Lx1/o;ILjava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v1, 0x0

    iput-object v1, v6, Lz1/j;->a:Ljava/lang/Object;

    iput-object v1, v6, Lz1/j;->b:Landroid/content/Context;

    iput-object v1, v6, Lz1/j;->c:Lx1/n;

    const/4 v1, 0x4

    iput v1, v6, Lz1/j;->f:I

    invoke-virtual {v3, v6}, Lz1/E0;->b(Lkb/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_b

    return-object v4

    :cond_c
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    iput-object v0, v6, Lz1/j;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v6, Lz1/j;->b:Landroid/content/Context;

    iput-object v1, v6, Lz1/j;->c:Lx1/n;

    const/4 v1, 0x5

    iput v1, v6, Lz1/j;->f:I

    invoke-virtual {v3, v6}, Lz1/E0;->b(Lkb/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_d

    return-object v4

    :cond_d
    :goto_9
    invoke-static {}, Lz1/d1;->a()V

    throw v0

    :goto_a
    iput-object v1, v6, Lz1/j;->a:Ljava/lang/Object;

    iput-object v1, v6, Lz1/j;->b:Landroid/content/Context;

    iput-object v1, v6, Lz1/j;->c:Lx1/n;

    const/4 v0, 0x3

    iput v0, v6, Lz1/j;->f:I

    invoke-virtual {v3, v6}, Lz1/E0;->b(Lkb/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_b

    return-object v4

    :goto_b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final f(Landroid/content/Context;Ljava/lang/Object;Lib/c;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p3, Lz1/k;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lz1/k;

    iget v1, v0, Lz1/k;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lz1/k;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lz1/k;

    check-cast p3, Lkb/c;

    invoke-direct {v0, p0, p3}, Lz1/k;-><init>(Lz1/p;Lkb/c;)V

    :goto_0
    iget-object p3, v0, Lz1/k;->b:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lz1/k;->d:I

    sget-object v3, Ldb/r;->a:Ldb/r;

    const/4 v4, 0x0

    const-string v5, "Cannot create a mutable snapshot of an read-only snapshot"

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v6, :cond_1

    iget-object p0, v0, Lz1/k;->a:Lz1/p;

    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    instance-of p3, p2, Lz1/h;

    const-string v2, ")"

    const-string v7, " "

    const-string v8, "msg"

    const-string v9, "GWT:AppWidgetSession"

    iget-object v10, p0, Lc2/m;->a:Ljava/lang/String;

    if-eqz p3, :cond_7

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Received UpdateGlanceState event for session("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Le7/a;->a:Ljava/lang/String;

    invoke-static {p3, v7, p2, v9}, Lw2/j;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lz1/p;->d:Lz1/V;

    invoke-virtual {p2}, Lz1/V;->getStateDefinition()Ld2/g;

    move-result-object p2

    if-eqz p2, :cond_3

    iput-object p0, v0, Lz1/k;->a:Lz1/p;

    iput v6, v0, Lz1/k;->d:I

    iget-object p3, p0, Lz1/p;->f:Ld2/a;

    check-cast p3, Ld2/f;

    invoke-virtual {p3, p1, p2, v10, v0}, Ld2/f;->c(Landroid/content/Context;Ld2/g;Ljava/lang/String;Lkb/c;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_3
    move-object p3, v4

    :cond_4
    :goto_1
    invoke-static {}, Lk0/n;->k()Lk0/h;

    move-result-object p1

    instance-of p2, p1, Lk0/c;

    if-eqz p2, :cond_5

    check-cast p1, Lk0/c;

    goto :goto_2

    :cond_5
    move-object p1, v4

    :goto_2
    if-eqz p1, :cond_6

    invoke-virtual {p1, v4, v4}, Lk0/c;->B(Lsb/k;Lsb/k;)Lk0/c;

    move-result-object p1

    if-eqz p1, :cond_6

    :try_start_0
    invoke-virtual {p1}, Lk0/h;->j()Lk0/h;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lz1/p;->j:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0, p3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p2}, Lk0/h;->p(Lk0/h;)V

    invoke-virtual {p1}, Lk0/c;->v()Lk0/q;

    move-result-object p0

    invoke-virtual {p0}, Lk0/q;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p1}, Lk0/c;->c()V

    goto/16 :goto_a

    :catchall_0
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-static {p2}, Lk0/h;->p(Lk0/h;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    invoke-virtual {p1}, Lk0/c;->c()V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    instance-of p1, p2, Lz1/g;

    if-eqz p1, :cond_a

    move-object p1, p2

    check-cast p1, Lz1/g;

    iget-object p1, p1, Lz1/g;->a:Landroid/os/Bundle;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Received UpdateAppWidgetOptions("

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") eventfor session("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Le7/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lk0/n;->k()Lk0/h;

    move-result-object p1

    instance-of p3, p1, Lk0/c;

    if-eqz p3, :cond_8

    check-cast p1, Lk0/c;

    goto :goto_4

    :cond_8
    move-object p1, v4

    :goto_4
    if-eqz p1, :cond_9

    invoke-virtual {p1, v4, v4}, Lk0/c;->B(Lsb/k;Lsb/k;)Lk0/c;

    move-result-object p1

    if-eqz p1, :cond_9

    :try_start_4
    invoke-virtual {p1}, Lk0/h;->j()Lk0/h;

    move-result-object p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    check-cast p2, Lz1/g;

    iget-object p2, p2, Lz1/g;->a:Landroid/os/Bundle;

    iget-object p0, p0, Lz1/p;->k:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-static {p3}, Lk0/h;->p(Lk0/h;)V

    invoke-virtual {p1}, Lk0/c;->v()Lk0/q;

    move-result-object p0

    invoke-virtual {p0}, Lk0/q;->c()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-virtual {p1}, Lk0/c;->c()V

    goto/16 :goto_a

    :catchall_2
    move-exception p0

    goto :goto_5

    :catchall_3
    move-exception p0

    :try_start_7
    invoke-static {p3}, Lk0/h;->p(Lk0/h;)V

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_5
    invoke-virtual {p1}, Lk0/c;->c()V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    instance-of p1, p2, Lz1/f;

    if-eqz p1, :cond_f

    move-object p1, p2

    check-cast p1, Lz1/f;

    iget-object p3, p1, Lz1/f;->a:Ljava/lang/String;

    const-string v0, "Received RunLambda("

    const-string v1, ") action for session("

    invoke-static {v0, p3, v1, v10, v2}, Lw2/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Le7/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v9, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lk0/n;->k()Lk0/h;

    move-result-object p3

    instance-of v0, p3, Lk0/c;

    if-eqz v0, :cond_b

    check-cast p3, Lk0/c;

    goto :goto_6

    :cond_b
    move-object p3, v4

    :goto_6
    if-eqz p3, :cond_e

    invoke-virtual {p3, v4, v4}, Lk0/c;->B(Lsb/k;Lsb/k;)Lk0/c;

    move-result-object p3

    if-eqz p3, :cond_e

    :try_start_8
    invoke-virtual {p3}, Lk0/h;->j()Lk0/h;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    iget-object p0, p0, Lz1/p;->l:Ljava/lang/Object;

    check-cast p2, Lz1/f;

    iget-object p2, p2, Lz1/f;->a:Ljava/lang/String;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_d

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_c

    move-object v4, v3

    goto :goto_7

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly1/e;

    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception p0

    goto :goto_8

    :cond_d
    :goto_7
    :try_start_a
    invoke-static {v0}, Lk0/h;->p(Lk0/h;)V

    invoke-virtual {p3}, Lk0/c;->v()Lk0/q;

    move-result-object p0

    invoke-virtual {p0}, Lk0/q;->c()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    invoke-virtual {p3}, Lk0/c;->c()V

    if-nez v4, :cond_10

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Triggering Action("

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lz1/f;->a:Ljava/lang/String;

    const-string p2, ") for session("

    const-string p3, ") failed"

    invoke-static {p0, p1, p2, v10, p3}, Lt/b;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Le7/a;->a:Ljava/lang/String;

    invoke-static {p1, v7, p0, v9}, Lw2/j;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :catchall_5
    move-exception p0

    goto :goto_9

    :goto_8
    :try_start_b
    invoke-static {v0}, Lk0/h;->p(Lk0/h;)V

    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :goto_9
    invoke-virtual {p3}, Lk0/c;->c()V

    throw p0

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    instance-of p0, p2, Lz1/i;

    if-eqz p0, :cond_11

    check-cast p2, Lz1/i;

    iget-object p0, p2, Lz1/i;->a:LNc/m0;

    invoke-virtual {p0}, LNc/t0;->b()Z

    move-result p1

    if-eqz p1, :cond_10

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LNc/t0;->V(Ljava/lang/Object;)Z

    :cond_10
    :goto_a
    return-object v3

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Sent unrecognized event type "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to AppWidgetSession"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g(Landroid/content/Context;)Li0/a;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lz1/n;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lz1/n;-><init>(Lz1/p;Landroid/content/Context;I)V

    new-instance p0, Li0/a;

    const p1, -0x6a59fc91

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Li0/a;-><init>(IZLdb/b;)V

    return-object p0
.end method

.method public final j(Lkb/c;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lz1/o;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lz1/o;

    iget v1, v0, Lz1/o;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lz1/o;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lz1/o;

    invoke-direct {v0, p0, p1}, Lz1/o;-><init>(Lz1/p;Lkb/c;)V

    :goto_0
    iget-object p1, v0, Lz1/o;->b:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lz1/o;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lz1/o;->a:Lz1/i;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    new-instance p1, Lz1/i;

    iget-object v2, p0, Lz1/p;->m:LNc/m0;

    new-instance v4, LNc/m0;

    invoke-direct {v4, v2}, LNc/m0;-><init>(LNc/j0;)V

    invoke-direct {p1, v4}, Lz1/i;-><init>(LNc/m0;)V

    iput-object p1, v0, Lz1/o;->a:Lz1/i;

    iput v3, v0, Lz1/o;->d:I

    invoke-virtual {p0, p1, v0}, Lc2/m;->i(Ljava/lang/Object;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p0, p1

    :goto_1
    iget-object p0, p0, Lz1/i;->a:LNc/m0;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppWidgetSession{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz1/p;->e:Lz1/e;

    iget v1, v1, Lz1/e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " widget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lz1/p;->d:Lz1/V;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
