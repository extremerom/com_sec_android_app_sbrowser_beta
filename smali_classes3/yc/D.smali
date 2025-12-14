.class public final Lyc/D;
.super Lyc/o;
.source "SourceFile"

# interfaces
.implements Lyc/c0;


# instance fields
.field public final b:Lyc/A;

.field public final c:Lyc/w;


# direct methods
.method public constructor <init>(Lyc/A;Lyc/w;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enhancement"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyc/D;->b:Lyc/A;

    iput-object p2, p0, Lyc/D;->c:Lyc/w;

    return-void
.end method


# virtual methods
.method public final bridge synthetic H0(Lzc/f;)Lyc/w;
    .locals 0

    invoke-virtual {p0, p1}, Lyc/D;->R0(Lzc/f;)Lyc/D;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic K0(Lzc/f;)Lyc/d0;
    .locals 0

    invoke-virtual {p0, p1}, Lyc/D;->R0(Lzc/f;)Lyc/D;

    move-result-object p0

    return-object p0
.end method

.method public final M0(Z)Lyc/A;
    .locals 1

    iget-object v0, p0, Lyc/D;->b:Lyc/A;

    invoke-virtual {v0, p1}, Lyc/A;->M0(Z)Lyc/A;

    move-result-object v0

    iget-object p0, p0, Lyc/D;->c:Lyc/w;

    invoke-virtual {p0}, Lyc/w;->I0()Lyc/d0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lyc/d0;->J0(Z)Lyc/d0;

    move-result-object p0

    invoke-static {v0, p0}, Lyc/c;->G(Lyc/d0;Lyc/w;)Lyc/d0;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {p0, p1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lyc/A;

    return-object p0
.end method

.method public final N0(Lyc/H;)Lyc/A;
    .locals 1

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lyc/D;->b:Lyc/A;

    invoke-virtual {v0, p1}, Lyc/A;->N0(Lyc/H;)Lyc/A;

    move-result-object p1

    iget-object p0, p0, Lyc/D;->c:Lyc/w;

    invoke-static {p1, p0}, Lyc/c;->G(Lyc/d0;Lyc/w;)Lyc/d0;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {p0, p1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lyc/A;

    return-object p0
.end method

.method public final O0()Lyc/A;
    .locals 0

    iget-object p0, p0, Lyc/D;->b:Lyc/A;

    return-object p0
.end method

.method public final bridge synthetic P0(Lzc/f;)Lyc/A;
    .locals 0

    invoke-virtual {p0, p1}, Lyc/D;->R0(Lzc/f;)Lyc/D;

    move-result-object p0

    return-object p0
.end method

.method public final Q0(Lyc/A;)Lyc/o;
    .locals 1

    new-instance v0, Lyc/D;

    iget-object p0, p0, Lyc/D;->c:Lyc/w;

    invoke-direct {v0, p1, p0}, Lyc/D;-><init>(Lyc/A;Lyc/w;)V

    return-object v0
.end method

.method public final R0(Lzc/f;)Lyc/D;
    .locals 2

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lyc/D;

    iget-object v0, p0, Lyc/D;->b:Lyc/A;

    const-string v1, "type"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lyc/D;->c:Lyc/w;

    invoke-static {p0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, p0}, Lyc/D;-><init>(Lyc/A;Lyc/w;)V

    return-object p1
.end method

.method public final f0()Lyc/w;
    .locals 0

    iget-object p0, p0, Lyc/D;->c:Lyc/w;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[@EnhancedForWarnings("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lyc/D;->c:Lyc/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lyc/D;->b:Lyc/A;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final z0()Lyc/d0;
    .locals 0

    iget-object p0, p0, Lyc/D;->b:Lyc/A;

    return-object p0
.end method
