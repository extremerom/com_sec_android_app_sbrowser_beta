.class public abstract LMb/D;
.super LMb/o;
.source "SourceFile"

# interfaces
.implements LJb/H;


# instance fields
.field public final f:Lhc/c;

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(LJb/C;Lhc/c;)V
    .locals 3

    const-string v0, "module"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LKb/g;->a:LKb/f;

    iget-object v1, p2, Lhc/c;->a:Lhc/d;

    invoke-virtual {v1}, Lhc/d;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lhc/d;->e:Lhc/f;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lhc/d;->f()Lhc/f;

    move-result-object v1

    :goto_0
    sget-object v2, LJb/S;->L:LJb/T;

    invoke-direct {p0, p1, v0, v1, v2}, LMb/o;-><init>(LJb/l;LKb/h;Lhc/f;LJb/S;)V

    iput-object p2, p0, LMb/D;->f:Lhc/c;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " of "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LMb/D;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final U0()LJb/C;
    .locals 1

    invoke-super {p0}, LMb/o;->k()LJb/l;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ModuleDescriptor"

    invoke-static {p0, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, LJb/C;

    return-object p0
.end method

.method public final a0(LJb/n;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, LJb/n;->y(LMb/D;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public e()LJb/S;
    .locals 0

    sget-object p0, LJb/S;->L:LJb/T;

    return-object p0
.end method

.method public final bridge synthetic k()LJb/l;
    .locals 0

    invoke-virtual {p0}, LMb/D;->U0()LJb/C;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LMb/D;->g:Ljava/lang/String;

    return-object p0
.end method
