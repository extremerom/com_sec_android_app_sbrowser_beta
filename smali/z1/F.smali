.class public final Lz1/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lib/g;


# static fields
.field public static final synthetic a:Lz1/F;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz1/F;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lz1/F;->a:Lz1/F;

    return-void
.end method

.method public static a(I)V
    .locals 2

    sget-object v0, Landroidx/glance/appwidget/UnmanagedSessionReceiver;->a:Lz1/F;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/glance/appwidget/UnmanagedSessionReceiver;->b:Ljava/util/LinkedHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public b(Landroid/content/Context;ILkb/c;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p3, Lz1/B0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lz1/B0;

    iget v1, v0, Lz1/B0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lz1/B0;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lz1/B0;

    invoke-direct {v0, p0, p3}, Lz1/B0;-><init>(Lz1/F;Lkb/c;)V

    :goto_0
    iget-object p0, v0, Lz1/B0;->c:Ljava/lang/Object;

    sget-object p3, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, v0, Lz1/B0;->e:I

    const-string v2, " "

    const-string v3, "msg"

    const-string v4, "GWT:WidgetLayout"

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v5, :cond_1

    iget p2, v0, Lz1/B0;->b:I

    iget-object p1, v0, Lz1/B0;->a:Landroid/content/Context;

    :try_start_0
    invoke-static {p0}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Lm1/a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p0}, LG5/A2;->f(Ljava/lang/Object;)V

    :try_start_1
    sget-object p0, Ld2/f;->a:Ld2/f;

    sget-object v1, Lz1/J0;->a:Lz1/J0;

    invoke-static {p2}, LG5/a3;->b(I)Ljava/lang/String;

    move-result-object v6

    iput-object p1, v0, Lz1/B0;->a:Landroid/content/Context;

    iput p2, v0, Lz1/B0;->b:I

    iput v5, v0, Lz1/B0;->e:I

    invoke-virtual {p0, p1, v1, v6, v0}, Ld2/f;->c(Landroid/content/Context;Ld2/g;Ljava/lang/String;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p3, :cond_3

    return-object p3

    :cond_3
    :goto_1
    check-cast p0, LF1/f;
    :try_end_1
    .catch Lm1/a; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    move-object v1, p1

    move v4, p2

    goto :goto_5

    :goto_3
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "I/O error reading set of layout structures for App Widget id "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Le7/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, LF1/f;->p()LF1/f;

    move-result-object p0

    goto :goto_2

    :goto_4
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Set of layout structures for App Widget id "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is corrupted"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Le7/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, LF1/f;->p()LF1/f;

    move-result-object p0

    goto :goto_2

    :goto_5
    invoke-virtual {p0}, LF1/f;->q()Landroidx/glance/appwidget/protobuf/C;

    move-result-object p1

    const-string p2, "getLayoutList(...)"

    invoke-static {p1, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0xa

    invoke-static {p1, p2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-static {p2}, Lfb/C;->g(I)I

    move-result p2

    const/16 p3, 0x10

    if-ge p2, p3, :cond_4

    move p2, p3

    :cond_4
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LF1/h;

    invoke-virtual {p2}, LF1/h;->o()LF1/j;

    move-result-object v0

    invoke-virtual {p2}, LF1/h;->p()I

    move-result p2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_5
    invoke-static {p3}, Lfb/B;->r(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v2

    new-instance p1, Lz1/E0;

    invoke-virtual {p0}, LF1/f;->r()I

    move-result v3

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lfb/n;->k0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lz1/E0;-><init>(Landroid/content/Context;Ljava/util/LinkedHashMap;IILjava/util/Set;)V

    return-object p1
.end method
