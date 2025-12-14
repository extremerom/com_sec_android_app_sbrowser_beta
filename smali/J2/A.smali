.class public final LJ2/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:LJ2/s;

.field public final c:Landroid/content/Context;

.field public final d:LNc/B;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public f:I

.field public g:LJ2/l;

.field public final h:LQc/m0;

.field public final i:LJ2/y;

.field public final j:LJ2/x;

.field public final k:LJ2/z;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;LJ2/s;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LJ2/A;->a:Ljava/lang/String;

    iput-object p3, p0, LJ2/A;->b:LJ2/s;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LJ2/A;->c:Landroid/content/Context;

    iget-object p1, p3, LJ2/s;->a:LJ2/U;

    invoke-virtual {p1}, LJ2/U;->getCoroutineScope()LNc/B;

    move-result-object p1

    iput-object p1, p0, LJ2/A;->d:LNc/B;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, LJ2/A;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object p1, LPc/a;->SUSPEND:LPc/a;

    const/4 p2, 0x0

    invoke-static {p2, p2, p1}, LQc/n0;->a(IILPc/a;)LQc/m0;

    move-result-object p1

    iput-object p1, p0, LJ2/A;->h:LQc/m0;

    new-instance p1, LJ2/y;

    iget-object p2, p3, LJ2/s;->b:[Ljava/lang/String;

    invoke-direct {p1, p0, p2}, LJ2/y;-><init>(LJ2/A;[Ljava/lang/String;)V

    iput-object p1, p0, LJ2/A;->i:LJ2/y;

    new-instance p1, LJ2/x;

    invoke-direct {p1, p0}, LJ2/x;-><init>(LJ2/A;)V

    iput-object p1, p0, LJ2/A;->j:LJ2/x;

    new-instance p1, LJ2/z;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, LJ2/z;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, LJ2/A;->k:LJ2/z;

    return-void
.end method
