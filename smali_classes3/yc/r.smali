.class public abstract Lyc/r;
.super Lyc/d0;
.source "SourceFile"

# interfaces
.implements LBc/d;


# instance fields
.field public final b:Lyc/A;

.field public final c:Lyc/A;


# direct methods
.method public constructor <init>(Lyc/A;Lyc/A;)V
    .locals 1

    const-string v0, "lowerBound"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upperBound"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyc/r;->b:Lyc/A;

    iput-object p2, p0, Lyc/r;->c:Lyc/A;

    return-void
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lyc/r;->M0()Lyc/A;

    move-result-object p0

    invoke-virtual {p0}, Lyc/w;->D0()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final E0()Lyc/H;
    .locals 0

    invoke-virtual {p0}, Lyc/r;->M0()Lyc/A;

    move-result-object p0

    invoke-virtual {p0}, Lyc/w;->E0()Lyc/H;

    move-result-object p0

    return-object p0
.end method

.method public final F0()Lyc/L;
    .locals 0

    invoke-virtual {p0}, Lyc/r;->M0()Lyc/A;

    move-result-object p0

    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object p0

    return-object p0
.end method

.method public G()Lrc/o;
    .locals 0

    invoke-virtual {p0}, Lyc/r;->M0()Lyc/A;

    move-result-object p0

    invoke-virtual {p0}, Lyc/w;->G()Lrc/o;

    move-result-object p0

    return-object p0
.end method

.method public final G0()Z
    .locals 0

    invoke-virtual {p0}, Lyc/r;->M0()Lyc/A;

    move-result-object p0

    invoke-virtual {p0}, Lyc/w;->G0()Z

    move-result p0

    return p0
.end method

.method public abstract M0()Lyc/A;
.end method

.method public abstract N0(Ljc/j;Ljc/j;)Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljc/j;->e:Ljc/j;

    invoke-virtual {v0, p0}, Ljc/j;->W(Lyc/w;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
