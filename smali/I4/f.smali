.class public final LI4/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lo3/l;

.field public final b:LI4/e;

.field public final c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;LI4/e;)V
    .locals 2

    new-instance v0, Lo3/l;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lo3/l;->b:Ljava/lang/Object;

    iput-object p1, v0, Lo3/l;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LI4/f;->c:Ljava/util/HashMap;

    iput-object v0, p0, LI4/f;->a:Lo3/l;

    iput-object p2, p0, LI4/f;->b:LI4/e;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)LI4/g;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LI4/f;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LI4/f;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LI4/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, LI4/f;->a:Lo3/l;

    invoke-virtual {v0, p1}, Lo3/l;->x0(Ljava/lang/String;)Lcom/google/android/datatransport/cct/CctBackendFactory;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :try_start_2
    iget-object v1, p0, LI4/f;->b:LI4/e;

    new-instance v2, LI4/b;

    iget-object v3, v1, LI4/e;->a:Landroid/content/Context;

    iget-object v4, v1, LI4/e;->b:LQ4/a;

    iget-object v1, v1, LI4/e;->c:LQ4/a;

    invoke-direct {v2, v3, v4, v1, p1}, LI4/b;-><init>(Landroid/content/Context;LQ4/a;LQ4/a;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/android/datatransport/cct/CctBackendFactory;->create(LI4/d;)LI4/g;

    move-result-object v0

    iget-object v1, p0, LI4/f;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
