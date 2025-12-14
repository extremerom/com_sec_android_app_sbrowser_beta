.class public final LMb/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyc/L;


# instance fields
.field public final synthetic a:LMb/g;


# direct methods
.method public constructor <init>(LMb/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LMb/f;->a:LMb/g;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0

    iget-object p0, p0, LMb/f;->a:LMb/g;

    check-cast p0, Lwc/t;

    iget-object p0, p0, Lwc/t;->q:Ljava/util/List;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "typeConstructorParameters"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final c()LJb/i;
    .locals 0

    iget-object p0, p0, LMb/f;->a:LMb/g;

    return-object p0
.end method

.method public final d()Ljava/util/Collection;
    .locals 1

    iget-object p0, p0, LMb/f;->a:LMb/g;

    check-cast p0, Lwc/t;

    invoke-virtual {p0}, Lwc/t;->W0()Lyc/A;

    move-result-object p0

    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object p0

    invoke-interface {p0}, Lyc/L;->d()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "getSupertypes(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final j()LGb/i;
    .locals 0

    iget-object p0, p0, LMb/f;->a:LMb/g;

    invoke-static {p0}, Loc/d;->e(LJb/l;)LGb/i;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[typealias "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LMb/f;->a:LMb/g;

    invoke-virtual {p0}, LMb/n;->getName()Lhc/f;

    move-result-object p0

    invoke-virtual {p0}, Lhc/f;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
