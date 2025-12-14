.class public final Llc/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llc/b;


# instance fields
.field public final a:Lyc/Q;

.field public b:Lzc/i;


# direct methods
.method public constructor <init>(Lyc/Q;)V
    .locals 1

    const-string v0, "projection"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llc/c;->a:Lyc/Q;

    invoke-virtual {p1}, Lyc/Q;->a()Lyc/e0;

    sget-object p0, Lyc/e0;->INVARIANT:Lyc/e0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0
.end method

.method public final b()Lyc/Q;
    .locals 0

    iget-object p0, p0, Llc/c;->a:Lyc/Q;

    return-object p0
.end method

.method public final bridge synthetic c()LJb/i;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()Ljava/util/Collection;
    .locals 3

    iget-object v0, p0, Llc/c;->a:Lyc/Q;

    invoke-virtual {v0}, Lyc/Q;->a()Lyc/e0;

    move-result-object v1

    sget-object v2, Lyc/e0;->OUT_VARIANCE:Lyc/e0;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lyc/Q;->b()Lyc/w;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Llc/c;->j()LGb/i;

    move-result-object p0

    invoke-virtual {p0}, LGb/i;->p()Lyc/A;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {p0}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final j()LGb/i;
    .locals 1

    iget-object p0, p0, Llc/c;->a:Lyc/Q;

    invoke-virtual {p0}, Lyc/Q;->b()Lyc/w;

    move-result-object p0

    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object p0

    invoke-interface {p0}, Lyc/L;->j()LGb/i;

    move-result-object p0

    const-string v0, "getBuiltIns(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CapturedTypeConstructor("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Llc/c;->a:Lyc/Q;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
