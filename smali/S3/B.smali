.class public final LS3/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS3/C;
.implements Lm4/b;


# static fields
.field public static final e:LZ3/x;


# instance fields
.field public final a:Lm4/e;

.field public b:LS3/C;

.field public c:Z

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LE5/v;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, LE5/v;-><init>(I)V

    const/16 v1, 0x14

    invoke-static {v1, v0}, Lm4/d;->a(ILm4/a;)LZ3/x;

    move-result-object v0

    sput-object v0, LS3/B;->e:LZ3/x;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm4/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LS3/B;->a:Lm4/e;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, LS3/B;->b:LS3/C;

    invoke-interface {p0}, LS3/C;->a()I

    move-result p0

    return p0
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LS3/B;->a:Lm4/e;

    invoke-virtual {v0}, Lm4/e;->a()V

    iget-boolean v0, p0, LS3/B;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, LS3/B;->c:Z

    iget-boolean v0, p0, LS3/B;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LS3/B;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LS3/B;->a:Lm4/e;

    invoke-virtual {v0}, Lm4/e;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LS3/B;->d:Z

    iget-boolean v0, p0, LS3/B;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LS3/B;->b:LS3/C;

    invoke-interface {v0}, LS3/C;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, LS3/B;->b:LS3/C;

    sget-object v0, LS3/B;->e:LZ3/x;

    invoke-virtual {v0, p0}, LZ3/x;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final d()Lm4/e;
    .locals 0

    iget-object p0, p0, LS3/B;->a:Lm4/e;

    return-object p0
.end method

.method public final e()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, LS3/B;->b:LS3/C;

    invoke-interface {p0}, LS3/C;->e()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LS3/B;->b:LS3/C;

    invoke-interface {p0}, LS3/C;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
