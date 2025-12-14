.class public final Lz1/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# instance fields
.field public final a:Landroidx/glance/appwidget/GlanceRemoteViewsService;

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/glance/appwidget/GlanceRemoteViewsService;IILjava/lang/String;)V
    .locals 1

    const-string v0, "size"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/u0;->a:Landroidx/glance/appwidget/GlanceRemoteViewsService;

    iput p2, p0, Lz1/u0;->b:I

    iput p3, p0, Lz1/u0;->c:I

    iput-object p4, p0, Lz1/u0;->d:Ljava/lang/String;

    return-void
.end method

.method public static final a(Lz1/u0;Lz1/e;Lkb/c;)Ljava/lang/Object;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lz1/s0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lz1/s0;

    iget v1, v0, Lz1/s0;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lz1/s0;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lz1/s0;

    invoke-direct {v0, p0, p2}, Lz1/s0;-><init>(Lz1/u0;Lkb/c;)V

    :goto_0
    iget-object p2, v0, Lz1/s0;->b:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lz1/s0;->d:I

    sget-object v3, Ldb/r;->a:Ldb/r;

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    const/4 p0, 0x2

    if-eq v2, p0, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    check-cast p2, LNc/j0;

    goto :goto_3

    :cond_3
    iget-object p0, v0, Lz1/s0;->a:Lz1/u0;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p2, p0, Lz1/u0;->a:Landroidx/glance/appwidget/GlanceRemoteViewsService;

    invoke-static {p2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p2

    iget v2, p0, Lz1/u0;->b:I

    invoke-virtual {p2, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v2, "null cannot be cast to non-null type androidx.glance.appwidget.GlanceAppWidgetReceiver"

    invoke-static {p2, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lz1/q0;

    invoke-virtual {p2}, Lz1/q0;->getGlanceAppWidget()Lz1/V;

    move-result-object p2

    goto :goto_1

    :cond_5
    move-object p2, v6

    :goto_1
    if-eqz p2, :cond_7

    sget-object v2, Lc2/v;->a:Lc2/u;

    new-instance v7, Lz1/t0;

    invoke-direct {v7, p0, p1, p2, v6}, Lz1/t0;-><init>(Lz1/u0;Lz1/e;Lz1/V;Lib/c;)V

    iput-object p0, v0, Lz1/s0;->a:Lz1/u0;

    iput v5, v0, Lz1/s0;->d:I

    invoke-virtual {v2, v7, v0}, Lc2/u;->a(Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    goto :goto_5

    :cond_6
    :goto_2
    check-cast p2, LNc/j0;

    if-nez p2, :cond_8

    :cond_7
    sget-object p1, Landroidx/glance/appwidget/UnmanagedSessionReceiver;->a:Lz1/F;

    iget p0, p0, Lz1/u0;->b:I

    invoke-static {p0}, Lz1/F;->a(I)V

    move-object p2, v6

    :cond_8
    :goto_3
    if-eqz p2, :cond_9

    iput-object v6, v0, Lz1/s0;->a:Lz1/u0;

    iput v4, v0, Lz1/s0;->d:I

    invoke-interface {p2, v0}, LNc/j0;->h(Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    goto :goto_5

    :cond_9
    :goto_4
    move-object v1, v3

    :goto_5
    return-object v1
.end method


# virtual methods
.method public final b()Lz1/O0;
    .locals 4

    sget-object v0, Landroidx/glance/appwidget/GlanceRemoteViewsService;->a:Le7/m;

    iget v0, p0, Lz1/u0;->b:I

    iget v1, p0, Lz1/u0;->c:I

    iget-object p0, p0, Lz1/u0;->d:Ljava/lang/String;

    sget-object v2, Landroidx/glance/appwidget/GlanceRemoteViewsService;->a:Le7/m;

    monitor-enter v2

    :try_start_0
    const-string v3, "sizeInfo"

    invoke-static {p0, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v2, Le7/m;->a:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1, p0}, Le7/m;->d(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz1/O0;

    if-nez p0, :cond_0

    sget-object p0, Lz1/O0;->e:Lz1/O0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0
.end method

.method public final getCount()I
    .locals 0

    invoke-virtual {p0}, Lz1/u0;->b()Lz1/O0;

    move-result-object p0

    iget-object p0, p0, Lz1/O0;->a:[J

    array-length p0, p0

    return p0
.end method

.method public final getItemId(I)J
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lz1/u0;->b()Lz1/O0;

    move-result-object p0

    iget-object p0, p0, Lz1/O0;->a:[J

    aget-wide p0, p0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 p0, -0x1

    :goto_0
    return-wide p0
.end method

.method public final bridge synthetic getLoadingView()Landroid/widget/RemoteViews;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getViewAt(I)Landroid/widget/RemoteViews;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lz1/u0;->b()Lz1/O0;

    move-result-object v0

    iget-object v0, v0, Lz1/O0;->b:[Landroid/widget/RemoteViews;

    aget-object p0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Landroid/widget/RemoteViews;

    iget-object p0, p0, Lz1/u0;->a:Landroidx/glance/appwidget/GlanceRemoteViewsService;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const v0, 0x7f0e033a

    invoke-direct {p1, p0, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public final getViewTypeCount()I
    .locals 0

    invoke-virtual {p0}, Lz1/u0;->b()Lz1/O0;

    move-result-object p0

    iget p0, p0, Lz1/O0;->d:I

    return p0
.end method

.method public final hasStableIds()Z
    .locals 0

    invoke-virtual {p0}, Lz1/u0;->b()Lz1/O0;

    move-result-object p0

    iget-boolean p0, p0, Lz1/O0;->c:Z

    return p0
.end method

.method public final onCreate()V
    .locals 0

    return-void
.end method

.method public final onDataSetChanged()V
    .locals 2

    new-instance v0, Lz1/r0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lz1/r0;-><init>(Lz1/u0;Lib/c;)V

    invoke-static {v0}, LNc/E;->E(Lsb/n;)Ljava/lang/Object;

    return-void
.end method

.method public final onDestroy()V
    .locals 4

    sget-object v0, Landroidx/glance/appwidget/GlanceRemoteViewsService;->a:Le7/m;

    iget v0, p0, Lz1/u0;->b:I

    iget v1, p0, Lz1/u0;->c:I

    iget-object p0, p0, Lz1/u0;->d:Ljava/lang/String;

    sget-object v2, Landroidx/glance/appwidget/GlanceRemoteViewsService;->a:Le7/m;

    monitor-enter v2

    :try_start_0
    const-string v3, "sizeInfo"

    invoke-static {p0, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v2, Le7/m;->a:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1, p0}, Le7/m;->d(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0
.end method
