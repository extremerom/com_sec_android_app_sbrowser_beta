.class public abstract Lyc/p;
.super Lyc/o;
.source "SourceFile"


# instance fields
.field public final b:Lyc/A;


# direct methods
.method public constructor <init>(Lyc/A;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyc/p;->b:Lyc/A;

    return-void
.end method


# virtual methods
.method public final M0(Z)Lyc/A;
    .locals 1

    invoke-virtual {p0}, Lyc/o;->G0()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lyc/p;->b:Lyc/A;

    invoke-virtual {v0, p1}, Lyc/A;->M0(Z)Lyc/A;

    move-result-object p1

    invoke-virtual {p0}, Lyc/o;->E0()Lyc/H;

    move-result-object p0

    invoke-virtual {p1, p0}, Lyc/A;->N0(Lyc/H;)Lyc/A;

    move-result-object p0

    return-object p0
.end method

.method public final N0(Lyc/H;)Lyc/A;
    .locals 1

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lyc/o;->E0()Lyc/H;

    move-result-object v0

    if-eq p1, v0, :cond_0

    new-instance v0, Lyc/C;

    invoke-direct {v0, p0, p1}, Lyc/C;-><init>(Lyc/A;Lyc/H;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public final O0()Lyc/A;
    .locals 0

    iget-object p0, p0, Lyc/p;->b:Lyc/A;

    return-object p0
.end method
