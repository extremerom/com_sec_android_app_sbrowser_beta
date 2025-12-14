.class public final LYc/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LNc/j;
.implements LNc/N0;


# instance fields
.field public final a:LNc/k;

.field public final synthetic b:LYc/d;


# direct methods
.method public constructor <init>(LYc/d;LNc/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LYc/c;->b:LYc/d;

    iput-object p2, p0, LYc/c;->a:LNc/k;

    return-void
.end method


# virtual methods
.method public final a(LUc/x;I)V
    .locals 0

    iget-object p0, p0, LYc/c;->a:LNc/k;

    invoke-virtual {p0, p1, p2}, LNc/k;->a(LUc/x;I)V

    return-void
.end method

.method public final d(Ljava/lang/Object;Lsb/k;)V
    .locals 2

    sget-object p1, Ldb/r;->a:Ldb/r;

    sget-object p2, LYc/d;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v0, 0x0

    iget-object v1, p0, LYc/c;->b:LYc/d;

    invoke-virtual {p2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p2, LYc/b;

    const/4 v0, 0x0

    invoke-direct {p2, v1, p0, v0}, LYc/b;-><init>(LYc/d;LYc/c;I)V

    iget-object p0, p0, LYc/c;->a:LNc/k;

    invoke-virtual {p0, p1, p2}, LNc/k;->d(Ljava/lang/Object;Lsb/k;)V

    return-void
.end method

.method public final getContext()Lib/h;
    .locals 0

    iget-object p0, p0, LYc/c;->a:LNc/k;

    iget-object p0, p0, LNc/k;->e:Lib/h;

    return-object p0
.end method

.method public final i(Ljava/lang/Throwable;)Z
    .locals 0

    iget-object p0, p0, LYc/c;->a:LNc/k;

    invoke-virtual {p0, p1}, LNc/k;->i(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LYc/c;->a:LNc/k;

    invoke-virtual {p0, p1}, LNc/k;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final s(Ljava/lang/Object;Lsb/k;)LQ6/i;
    .locals 2

    check-cast p1, Ldb/r;

    new-instance p2, LYc/b;

    iget-object v0, p0, LYc/c;->b:LYc/d;

    const/4 v1, 0x1

    invoke-direct {p2, v0, p0, v1}, LYc/b;-><init>(LYc/d;LYc/c;I)V

    iget-object p0, p0, LYc/c;->a:LNc/k;

    invoke-virtual {p0, p1, p2}, LNc/k;->D(Ljava/lang/Object;Lsb/k;)LQ6/i;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, LYc/d;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public final u(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LYc/c;->a:LNc/k;

    invoke-virtual {p0, p1}, LNc/k;->u(Ljava/lang/Object;)V

    return-void
.end method
