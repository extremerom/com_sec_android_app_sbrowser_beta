.class public final Lyc/a;
.super Lyc/o;
.source "SourceFile"


# instance fields
.field public final b:Lyc/A;

.field public final c:Lyc/A;


# direct methods
.method public constructor <init>(Lyc/A;Lyc/A;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abbreviation"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyc/a;->b:Lyc/A;

    iput-object p2, p0, Lyc/a;->c:Lyc/A;

    return-void
.end method


# virtual methods
.method public final bridge synthetic H0(Lzc/f;)Lyc/w;
    .locals 0

    invoke-virtual {p0, p1}, Lyc/a;->S0(Lzc/f;)Lyc/a;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic J0(Z)Lyc/d0;
    .locals 0

    invoke-virtual {p0, p1}, Lyc/a;->R0(Z)Lyc/a;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic K0(Lzc/f;)Lyc/d0;
    .locals 0

    invoke-virtual {p0, p1}, Lyc/a;->S0(Lzc/f;)Lyc/a;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic M0(Z)Lyc/A;
    .locals 0

    invoke-virtual {p0, p1}, Lyc/a;->R0(Z)Lyc/a;

    move-result-object p0

    return-object p0
.end method

.method public final N0(Lyc/H;)Lyc/A;
    .locals 2

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lyc/a;

    iget-object v1, p0, Lyc/a;->b:Lyc/A;

    invoke-virtual {v1, p1}, Lyc/A;->N0(Lyc/H;)Lyc/A;

    move-result-object p1

    iget-object p0, p0, Lyc/a;->c:Lyc/A;

    invoke-direct {v0, p1, p0}, Lyc/a;-><init>(Lyc/A;Lyc/A;)V

    return-object v0
.end method

.method public final O0()Lyc/A;
    .locals 0

    iget-object p0, p0, Lyc/a;->b:Lyc/A;

    return-object p0
.end method

.method public final bridge synthetic P0(Lzc/f;)Lyc/A;
    .locals 0

    invoke-virtual {p0, p1}, Lyc/a;->S0(Lzc/f;)Lyc/a;

    move-result-object p0

    return-object p0
.end method

.method public final Q0(Lyc/A;)Lyc/o;
    .locals 1

    new-instance v0, Lyc/a;

    iget-object p0, p0, Lyc/a;->c:Lyc/A;

    invoke-direct {v0, p1, p0}, Lyc/a;-><init>(Lyc/A;Lyc/A;)V

    return-object v0
.end method

.method public final R0(Z)Lyc/a;
    .locals 2

    new-instance v0, Lyc/a;

    iget-object v1, p0, Lyc/a;->b:Lyc/A;

    invoke-virtual {v1, p1}, Lyc/A;->M0(Z)Lyc/A;

    move-result-object v1

    iget-object p0, p0, Lyc/a;->c:Lyc/A;

    invoke-virtual {p0, p1}, Lyc/A;->M0(Z)Lyc/A;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lyc/a;-><init>(Lyc/A;Lyc/A;)V

    return-object v0
.end method

.method public final S0(Lzc/f;)Lyc/a;
    .locals 2

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lyc/a;

    iget-object v0, p0, Lyc/a;->b:Lyc/A;

    const-string v1, "type"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lyc/a;->c:Lyc/A;

    invoke-static {p0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, p0}, Lyc/a;-><init>(Lyc/A;Lyc/A;)V

    return-object p1
.end method
