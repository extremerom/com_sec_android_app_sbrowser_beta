.class public final Lj0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/q0;


# instance fields
.field public a:Lo3/c;

.field public b:Lj0/k;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Object;

.field public e:[Ljava/lang/Object;

.field public f:Lj0/j;

.field public final g:LA4/a;


# direct methods
.method public constructor <init>(Lo3/c;Lj0/k;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj0/b;->a:Lo3/c;

    iput-object p2, p0, Lj0/b;->b:Lj0/k;

    iput-object p3, p0, Lj0/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lj0/b;->d:Ljava/lang/Object;

    iput-object p5, p0, Lj0/b;->e:[Ljava/lang/Object;

    new-instance p1, LA4/a;

    const/16 p2, 0x14

    invoke-direct {p1, p2, p0}, LA4/a;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lj0/b;->g:LA4/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-virtual {p0}, Lj0/b;->d()V

    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lj0/b;->f:Lj0/j;

    if-eqz p0, :cond_0

    check-cast p0, LZ3/x;

    invoke-virtual {p0}, LZ3/x;->K()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lj0/b;->f:Lj0/j;

    if-eqz p0, :cond_0

    check-cast p0, LZ3/x;

    invoke-virtual {p0}, LZ3/x;->K()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lj0/b;->b:Lj0/k;

    iget-object v1, p0, Lj0/b;->f:Lj0/j;

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    iget-object v1, p0, Lj0/b;->g:LA4/a;

    invoke-virtual {v1}, LA4/a;->invoke()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v0, v2}, Lj0/k;->d(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance p0, Ljava/lang/IllegalArgumentException;

    instance-of v0, v2, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    if-eqz v0, :cond_1

    check-cast v2, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v0, La0/V;->c:La0/V;

    iget-object v1, v2, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->b:La0/A0;

    if-eq v1, v0, :cond_0

    sget-object v0, La0/V;->f:La0/V;

    if-eq v1, v0, :cond_0

    sget-object v0, La0/V;->d:La0/V;

    if-eq v1, v0, :cond_0

    const-string v0, "If you use a custom SnapshotMutationPolicy for your MutableState you have to write a custom Saver"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MutableState containing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cannot be saved using the current SaveableStateRegistry. The default implementation only supports types which can be stored inside the Bundle. Please consider implementing a custom Saver for this class and pass it as a stateSaver parameter to rememberSaveable()."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v2}, LG5/R3;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v2, p0, Lj0/b;->c:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lj0/k;->a(Ljava/lang/String;Lsb/a;)Lj0/j;

    move-result-object v0

    iput-object v0, p0, Lj0/b;->f:Lj0/j;

    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "entry("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lj0/b;->f:Lj0/j;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ") is not null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
