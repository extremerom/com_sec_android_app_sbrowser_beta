.class public final LNc/p0;
.super LNc/n0;
.source "SourceFile"


# instance fields
.field public final e:LNc/t0;

.field public final f:LNc/q0;

.field public final g:LNc/o;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LNc/t0;LNc/q0;LNc/o;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, LUc/l;-><init>()V

    iput-object p1, p0, LNc/p0;->e:LNc/t0;

    iput-object p2, p0, LNc/p0;->f:LNc/q0;

    iput-object p3, p0, LNc/p0;->g:LNc/o;

    iput-object p4, p0, LNc/p0;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Throwable;)V
    .locals 6

    iget-object p1, p0, LNc/p0;->g:LNc/o;

    iget-object v0, p0, LNc/p0;->e:LNc/t0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LNc/t0;->Y(LUc/l;)LNc/o;

    move-result-object p1

    iget-object v1, p0, LNc/p0;->f:LNc/q0;

    iget-object p0, p0, LNc/p0;->h:Ljava/lang/Object;

    if-eqz p1, :cond_2

    :cond_0
    iget-object v2, p1, LNc/o;->e:LNc/t0;

    new-instance v3, LNc/p0;

    invoke-direct {v3, v0, v1, p1, p0}, LNc/p0;-><init>(LNc/t0;LNc/q0;LNc/o;Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v4, v3, v5}, LNc/E;->t(LNc/j0;ZLNc/n0;I)LNc/P;

    move-result-object v2

    sget-object v3, LNc/z0;->a:LNc/z0;

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, LNc/t0;->Y(LUc/l;)LNc/o;

    move-result-object p1

    if-nez p1, :cond_0

    :cond_2
    invoke-virtual {v0, v1, p0}, LNc/t0;->J(LNc/q0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, LNc/t0;->x(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
