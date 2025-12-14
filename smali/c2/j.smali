.class public final Lc2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/W;


# instance fields
.field public final a:LNc/B;

.field public final b:I

.field public final c:I

.field public final d:J

.field public final e:Lsb/a;

.field public final f:La0/g;

.field public final g:Ljava/lang/Object;

.field public h:I

.field public i:J

.field public j:LNc/k;


# direct methods
.method public constructor <init>(LNc/B;)V
    .locals 3

    sget-object v0, Lc2/g;->a:Lc2/g;

    const-string v1, "scope"

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc2/j;->a:LNc/B;

    const/4 p1, 0x5

    iput p1, p0, Lc2/j;->b:I

    const/16 v1, 0x14

    iput v1, p0, Lc2/j;->c:I

    const-wide/16 v1, 0x1388

    iput-wide v1, p0, Lc2/j;->d:J

    iput-object v0, p0, Lc2/j;->e:Lsb/a;

    new-instance v0, La0/g;

    new-instance v1, LA4/a;

    const/16 v2, 0x12

    invoke-direct {v1, v2, p0}, LA4/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, La0/g;-><init>(Lsb/a;)V

    iput-object v0, p0, Lc2/j;->f:La0/g;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc2/j;->g:Ljava/lang/Object;

    iput p1, p0, Lc2/j;->h:I

    return-void
.end method

.method public static final d(Lc2/j;J)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "GWT:InteractiveFrameClock"

    sget-object v1, Le7/a;->a:Ljava/lang/String;

    const-string v2, " Sending next frame"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lc2/j;->f:La0/g;

    invoke-virtual {v0, p1, p2}, La0/g;->d(J)V

    iget-object v0, p0, Lc2/j;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-wide p1, p0, Lc2/j;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final fold(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p2, p1, p0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lc2/j;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lc2/j;->j:LNc/k;

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, LNc/k;->i(Ljava/lang/Throwable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final get(Lib/g;)Lib/f;
    .locals 0

    invoke-static {p0, p1}, LG5/P3;->e(Lib/f;Lib/g;)Lib/f;

    move-result-object p0

    return-object p0
.end method

.method public final minusKey(Lib/g;)Lib/h;
    .locals 0

    invoke-static {p0, p1}, LG5/P3;->g(Lib/f;Lib/g;)Lib/h;

    move-result-object p0

    return-object p0
.end method

.method public final plus(Lib/h;)Lib/h;
    .locals 0

    invoke-static {p0, p1}, LG5/P3;->h(Lib/f;Lib/h;)Lib/h;

    move-result-object p0

    return-object p0
.end method

.method public final t(Lsb/k;Lkb/c;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Le7/a;->a:Ljava/lang/String;

    const-string v1, " received frame to run"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GWT:InteractiveFrameClock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lc2/j;->f:La0/g;

    invoke-virtual {p0, p1, p2}, La0/g;->t(Lsb/k;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
