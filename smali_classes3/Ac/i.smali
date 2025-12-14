.class public final LAc/i;
.super Lyc/A;
.source "SourceFile"


# instance fields
.field public final b:Lyc/L;

.field public final c:LAc/g;

.field public final d:LAc/k;

.field public final e:Ljava/util/List;

.field public final f:Z

.field public final g:[Ljava/lang/String;

.field public final h:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Lyc/L;LAc/g;LAc/k;Ljava/util/List;Z[Ljava/lang/String;)V
    .locals 1

    const-string v0, "kind"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formatParams"

    invoke-static {p6, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LAc/i;->b:Lyc/L;

    iput-object p2, p0, LAc/i;->c:LAc/g;

    iput-object p3, p0, LAc/i;->d:LAc/k;

    iput-object p4, p0, LAc/i;->e:Ljava/util/List;

    iput-boolean p5, p0, LAc/i;->f:Z

    iput-object p6, p0, LAc/i;->g:[Ljava/lang/String;

    invoke-virtual {p3}, LAc/k;->a()Ljava/lang/String;

    move-result-object p1

    array-length p2, p6

    invoke-static {p6, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    array-length p3, p2

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LAc/i;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 0

    iget-object p0, p0, LAc/i;->e:Ljava/util/List;

    return-object p0
.end method

.method public final E0()Lyc/H;
    .locals 0

    sget-object p0, Lyc/H;->b:LA7/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lyc/H;->c:Lyc/H;

    return-object p0
.end method

.method public final F0()Lyc/L;
    .locals 0

    iget-object p0, p0, LAc/i;->b:Lyc/L;

    return-object p0
.end method

.method public final G()Lrc/o;
    .locals 0

    iget-object p0, p0, LAc/i;->c:LAc/g;

    return-object p0
.end method

.method public final G0()Z
    .locals 0

    iget-boolean p0, p0, LAc/i;->f:Z

    return p0
.end method

.method public final H0(Lzc/f;)Lyc/w;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final K0(Lzc/f;)Lyc/d0;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final L0(Lyc/H;)Lyc/d0;
    .locals 1

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final M0(Z)Lyc/A;
    .locals 8

    new-instance v7, LAc/i;

    iget-object v0, p0, LAc/i;->g:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    iget-object v1, p0, LAc/i;->b:Lyc/L;

    iget-object v2, p0, LAc/i;->c:LAc/g;

    iget-object v3, p0, LAc/i;->d:LAc/k;

    iget-object v4, p0, LAc/i;->e:Ljava/util/List;

    move-object v0, v7

    move v5, p1

    invoke-direct/range {v0 .. v6}, LAc/i;-><init>(Lyc/L;LAc/g;LAc/k;Ljava/util/List;Z[Ljava/lang/String;)V

    return-object v7
.end method

.method public final N0(Lyc/H;)Lyc/A;
    .locals 1

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
