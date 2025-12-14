.class public final Llc/a;
.super Lyc/A;
.source "SourceFile"

# interfaces
.implements LBc/c;


# instance fields
.field public final b:Lyc/Q;

.field public final c:Llc/b;

.field public final d:Z

.field public final e:Lyc/H;


# direct methods
.method public constructor <init>(Lyc/Q;Llc/b;ZLyc/H;)V
    .locals 1

    const-string v0, "typeProjection"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llc/a;->b:Lyc/Q;

    iput-object p2, p0, Llc/a;->c:Llc/b;

    iput-boolean p3, p0, Llc/a;->d:Z

    iput-object p4, p0, Llc/a;->e:Lyc/H;

    return-void
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 0

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0
.end method

.method public final E0()Lyc/H;
    .locals 0

    iget-object p0, p0, Llc/a;->e:Lyc/H;

    return-object p0
.end method

.method public final F0()Lyc/L;
    .locals 0

    iget-object p0, p0, Llc/a;->c:Llc/b;

    return-object p0
.end method

.method public final G()Lrc/o;
    .locals 2

    sget-object p0, LAc/h;->CAPTURED_TYPE_SCOPE:LAc/h;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, LAc/l;->a(LAc/h;Z[Ljava/lang/String;)LAc/g;

    move-result-object p0

    return-object p0
.end method

.method public final G0()Z
    .locals 0

    iget-boolean p0, p0, Llc/a;->d:Z

    return p0
.end method

.method public final H0(Lzc/f;)Lyc/w;
    .locals 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Llc/a;

    iget-object v1, p0, Llc/a;->b:Lyc/Q;

    invoke-virtual {v1, p1}, Lyc/Q;->d(Lzc/f;)Lyc/Q;

    move-result-object p1

    iget-object v1, p0, Llc/a;->e:Lyc/H;

    iget-object v2, p0, Llc/a;->c:Llc/b;

    iget-boolean p0, p0, Llc/a;->d:Z

    invoke-direct {v0, p1, v2, p0, v1}, Llc/a;-><init>(Lyc/Q;Llc/b;ZLyc/H;)V

    return-object v0
.end method

.method public final J0(Z)Lyc/d0;
    .locals 3

    iget-boolean v0, p0, Llc/a;->d:Z

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Llc/a;

    iget-object v1, p0, Llc/a;->c:Llc/b;

    iget-object v2, p0, Llc/a;->e:Lyc/H;

    iget-object p0, p0, Llc/a;->b:Lyc/Q;

    invoke-direct {v0, p0, v1, p1, v2}, Llc/a;-><init>(Lyc/Q;Llc/b;ZLyc/H;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final K0(Lzc/f;)Lyc/d0;
    .locals 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Llc/a;

    iget-object v1, p0, Llc/a;->b:Lyc/Q;

    invoke-virtual {v1, p1}, Lyc/Q;->d(Lzc/f;)Lyc/Q;

    move-result-object p1

    iget-object v1, p0, Llc/a;->e:Lyc/H;

    iget-object v2, p0, Llc/a;->c:Llc/b;

    iget-boolean p0, p0, Llc/a;->d:Z

    invoke-direct {v0, p1, v2, p0, v1}, Llc/a;-><init>(Lyc/Q;Llc/b;ZLyc/H;)V

    return-object v0
.end method

.method public final M0(Z)Lyc/A;
    .locals 3

    iget-boolean v0, p0, Llc/a;->d:Z

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Llc/a;

    iget-object v1, p0, Llc/a;->c:Llc/b;

    iget-object v2, p0, Llc/a;->e:Lyc/H;

    iget-object p0, p0, Llc/a;->b:Lyc/Q;

    invoke-direct {v0, p0, v1, p1, v2}, Llc/a;-><init>(Lyc/Q;Llc/b;ZLyc/H;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final N0(Lyc/H;)Lyc/A;
    .locals 3

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Llc/a;

    iget-object v1, p0, Llc/a;->b:Lyc/Q;

    iget-object v2, p0, Llc/a;->c:Llc/b;

    iget-boolean p0, p0, Llc/a;->d:Z

    invoke-direct {v0, v1, v2, p0, p1}, Llc/a;-><init>(Lyc/Q;Llc/b;ZLyc/H;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Captured("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Llc/a;->b:Lyc/Q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Llc/a;->d:Z

    if-eqz p0, :cond_0

    const-string p0, "?"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
