.class public final Lz1/m;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lz1/p;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:La0/a0;


# direct methods
.method public constructor <init>(Lz1/p;Landroid/content/Context;La0/a0;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lz1/m;->c:Lz1/p;

    iput-object p2, p0, Lz1/m;->d:Landroid/content/Context;

    iput-object p3, p0, Lz1/m;->e:La0/a0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 3

    new-instance v0, Lz1/m;

    iget-object v1, p0, Lz1/m;->d:Landroid/content/Context;

    iget-object v2, p0, Lz1/m;->e:La0/a0;

    iget-object p0, p0, Lz1/m;->c:Lz1/p;

    invoke-direct {v0, p0, v1, v2, p2}, Lz1/m;-><init>(Lz1/p;Landroid/content/Context;La0/a0;Lib/c;)V

    iput-object p1, v0, Lz1/m;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, La0/f0;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lz1/m;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lz1/m;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lz1/m;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lz1/m;->a:I

    const/4 v2, 0x1

    iget-object v3, p0, Lz1/m;->d:Landroid/content/Context;

    iget-object v4, p0, Lz1/m;->c:Lz1/p;

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lz1/m;->b:Ljava/lang/Object;

    check-cast v0, La0/f0;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lz1/m;->b:Ljava/lang/Object;

    check-cast p1, La0/f0;

    iget-object v1, v4, Lz1/p;->j:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, v4, Lz1/p;->d:Lz1/V;

    invoke-virtual {v1}, Lz1/V;->getStateDefinition()Ld2/g;

    move-result-object v1

    if-eqz v1, :cond_3

    iput-object p1, p0, Lz1/m;->b:Ljava/lang/Object;

    iput v2, p0, Lz1/m;->a:I

    iget-object v6, v4, Lz1/p;->f:Ld2/a;

    check-cast v6, Ld2/f;

    iget-object v7, v4, Lc2/m;->a:Ljava/lang/String;

    invoke-virtual {v6, v3, v1, v7, p0}, Ld2/f;->c(Landroid/content/Context;Ld2/g;Ljava/lang/String;Lkb/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    :cond_3
    move-object v0, p1

    move-object p1, v5

    :goto_0
    iget-object p0, p0, Lz1/m;->e:La0/a0;

    invoke-static {}, Lk0/n;->k()Lk0/h;

    move-result-object v1

    instance-of v6, v1, Lk0/c;

    if-eqz v6, :cond_4

    check-cast v1, Lk0/c;

    goto :goto_1

    :cond_4
    move-object v1, v5

    :goto_1
    if-eqz v1, :cond_a

    invoke-virtual {v1, v5, v5}, Lk0/c;->B(Lsb/k;Lsb/k;)Lk0/c;

    move-result-object v1

    if-eqz v1, :cond_a

    :try_start_0
    invoke-virtual {v1}, Lk0/h;->j()Lk0/h;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v6, v4, Lz1/p;->e:Lz1/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v7, v4, Lz1/p;->k:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    :try_start_2
    invoke-static {v6}, Lz1/u;->c(Lz1/e;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "<this>"

    invoke-static {v3, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "appwidget"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "null cannot be cast to non-null type android.appwidget.AppWidgetManager"

    invoke-static {v8, v9}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const-string v9, "getDisplayMetrics(...)"

    invoke-static {v3, v9}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v9, v6, Lz1/e;->a:I

    invoke-virtual {v8, v9}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v9

    if-nez v9, :cond_5

    sget-wide v2, LH0/g;->b:J

    goto :goto_3

    :cond_5
    iget v10, v9, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v11, v9, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    and-int/2addr v2, v11

    const v11, 0x7fffffff

    if-eqz v2, :cond_6

    iget v2, v9, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    goto :goto_2

    :cond_6
    move v2, v11

    :goto_2
    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v10, v9, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget v12, v9, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_7

    iget v11, v9, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    :cond_7
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    int-to-float v2, v2

    div-float/2addr v2, v3

    int-to-float v9, v9

    div-float/2addr v9, v3

    invoke-static {v2, v9}, LG5/T2;->b(FF)J

    move-result-wide v2

    :goto_3
    new-instance v9, LH0/g;

    invoke-direct {v9, v2, v3}, LH0/g;-><init>(J)V

    invoke-interface {p0, v9}, La0/a0;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    if-nez p0, :cond_8

    iget p0, v6, Lz1/e;->a:I

    invoke-virtual {v8, p0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v7, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_8
    :goto_4
    if-eqz p1, :cond_9

    iget-object p0, v4, Lz1/p;->j:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :cond_9
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, La0/f0;->setValue(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v5}, Lk0/h;->p(Lk0/h;)V

    invoke-virtual {v1}, Lk0/c;->v()Lk0/q;

    move-result-object p0

    invoke-virtual {p0}, Lk0/q;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v1}, Lk0/c;->c()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_6

    :goto_5
    :try_start_4
    invoke-static {v5}, Lk0/h;->p(Lk0/h;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_6
    invoke-virtual {v1}, Lk0/c;->c()V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot create a mutable snapshot of an read-only snapshot"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
