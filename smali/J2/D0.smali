.class public final LJ2/D0;
.super LJ2/n;
.source "SourceFile"


# instance fields
.field public final b:LJ2/s;

.field public final c:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(LJ2/s;LJ2/f0;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p2, LJ2/n;->a:[Ljava/lang/String;

    invoke-direct {p0, v0}, LJ2/n;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, LJ2/D0;->b:LJ2/s;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, LJ2/D0;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)V
    .locals 1

    const-string v0, "tables"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LJ2/D0;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ2/n;

    if-nez v0, :cond_0

    iget-object p1, p0, LJ2/D0;->b:LJ2/s;

    invoke-virtual {p1, p0}, LJ2/s;->b(LJ2/n;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, LJ2/n;->a(Ljava/util/Set;)V

    :goto_0
    return-void
.end method
