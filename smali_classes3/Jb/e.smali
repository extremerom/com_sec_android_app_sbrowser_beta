.class public final LJb/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJb/W;


# instance fields
.field public final a:LJb/W;

.field public final b:LJb/j;

.field public final c:I


# direct methods
.method public constructor <init>(LJb/W;LJb/j;I)V
    .locals 1

    const-string v0, "declarationDescriptor"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJb/e;->a:LJb/W;

    iput-object p2, p0, LJb/e;->b:LJb/j;

    iput p3, p0, LJb/e;->c:I

    return-void
.end method


# virtual methods
.method public final A()Lyc/e0;
    .locals 1

    iget-object p0, p0, LJb/e;->a:LJb/W;

    invoke-interface {p0}, LJb/W;->A()Lyc/e0;

    move-result-object p0

    const-string v0, "getVariance(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final L()Lxc/o;
    .locals 1

    iget-object p0, p0, LJb/e;->a:LJb/W;

    invoke-interface {p0}, LJb/W;->L()Lxc/o;

    move-result-object p0

    const-string v0, "getStorageManager(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final P()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final a()LJb/W;
    .locals 0

    iget-object p0, p0, LJb/e;->a:LJb/W;

    invoke-interface {p0}, LJb/W;->a()LJb/W;

    move-result-object p0

    return-object p0
.end method

.method public final a()LJb/i;
    .locals 0

    iget-object p0, p0, LJb/e;->a:LJb/W;

    invoke-interface {p0}, LJb/W;->a()LJb/W;

    move-result-object p0

    return-object p0
.end method

.method public final a()LJb/l;
    .locals 0

    iget-object p0, p0, LJb/e;->a:LJb/W;

    invoke-interface {p0}, LJb/W;->a()LJb/W;

    move-result-object p0

    return-object p0
.end method

.method public final a0(LJb/n;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LJb/e;->a:LJb/W;

    invoke-interface {p0, p1, p2}, LJb/l;->a0(LJb/n;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final e()LJb/S;
    .locals 1

    iget-object p0, p0, LJb/e;->a:LJb/W;

    invoke-interface {p0}, LJb/m;->e()LJb/S;

    move-result-object p0

    const-string v0, "getSource(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getIndex()I
    .locals 1

    iget-object v0, p0, LJb/e;->a:LJb/W;

    invoke-interface {v0}, LJb/W;->getIndex()I

    move-result v0

    iget p0, p0, LJb/e;->c:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final getName()Lhc/f;
    .locals 1

    iget-object p0, p0, LJb/e;->a:LJb/W;

    invoke-interface {p0}, LJb/l;->getName()Lhc/f;

    move-result-object p0

    const-string v0, "getName(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getUpperBounds()Ljava/util/List;
    .locals 1

    iget-object p0, p0, LJb/e;->a:LJb/W;

    invoke-interface {p0}, LJb/W;->getUpperBounds()Ljava/util/List;

    move-result-object p0

    const-string v0, "getUpperBounds(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final k()LJb/l;
    .locals 0

    iget-object p0, p0, LJb/e;->b:LJb/j;

    return-object p0
.end method

.method public final n()Lyc/A;
    .locals 1

    iget-object p0, p0, LJb/e;->a:LJb/W;

    invoke-interface {p0}, LJb/i;->n()Lyc/A;

    move-result-object p0

    const-string v0, "getDefaultType(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, LJb/e;->a:LJb/W;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "[inner-copy]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()LKb/h;
    .locals 0

    iget-object p0, p0, LJb/e;->a:LJb/W;

    invoke-interface {p0}, LKb/a;->u()LKb/h;

    move-result-object p0

    return-object p0
.end method

.method public final w()Lyc/L;
    .locals 1

    iget-object p0, p0, LJb/e;->a:LJb/W;

    invoke-interface {p0}, LJb/i;->w()Lyc/L;

    move-result-object p0

    const-string v0, "getTypeConstructor(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final x()Z
    .locals 0

    iget-object p0, p0, LJb/e;->a:LJb/W;

    invoke-interface {p0}, LJb/W;->x()Z

    move-result p0

    return p0
.end method
