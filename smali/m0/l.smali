.class public abstract Lm0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB0/i;


# instance fields
.field public final a:Lm0/l;

.field public b:LUc/e;

.field public c:I

.field public d:I

.field public e:Lm0/l;

.field public f:Lm0/l;

.field public g:LB0/O;

.field public h:Z

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lm0/l;->a:Lm0/l;

    const/4 v0, -0x1

    iput v0, p0, Lm0/l;->d:I

    return-void
.end method


# virtual methods
.method public s()Z
    .locals 0

    instance-of p0, p0, Lp0/c;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final t()V
    .locals 3

    iget-boolean v0, p0, Lm0/l;->j:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lm0/l;->h:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lm0/l;->i:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm0/l;->j:Z

    iget-object v0, p0, Lm0/l;->b:LUc/e;

    if-eqz v0, :cond_0

    new-instance v1, La0/U;

    const-string v2, "The Modifier.Node was detached"

    invoke-direct {v1, v2}, La0/U;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, LNc/E;->h(LNc/B;Ljava/util/concurrent/CancellationException;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lm0/l;->b:LUc/e;

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must run runDetachLifecycle() before markAsDetached()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must run runAttachLifecycle() before markAsDetached()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot detach a node that is not attached"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public u()V
    .locals 0

    return-void
.end method

.method public v()V
    .locals 0

    return-void
.end method

.method public w()V
    .locals 0

    return-void
.end method

.method public final x()V
    .locals 1

    iget-boolean v0, p0, Lm0/l;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lm0/l;->g:LB0/O;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lm0/l;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm0/l;->i:Z

    invoke-virtual {p0}, Lm0/l;->v()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must run runDetachLifecycle() once after runAttachLifecycle() and before markAsDetached()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "detach invoked on a node without a coordinator"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "node detached multiple times"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
