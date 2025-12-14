.class public final Lyc/n;
.super Lyc/o;
.source "SourceFile"

# interfaces
.implements Lyc/l;
.implements LBc/e;


# instance fields
.field public final b:Lyc/A;

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lyc/A;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyc/n;->b:Lyc/A;

    iput-boolean p2, p0, Lyc/n;->c:Z

    return-void
.end method


# virtual methods
.method public final G0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final M0(Z)Lyc/A;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lyc/n;->b:Lyc/A;

    invoke-virtual {p0, p1}, Lyc/A;->M0(Z)Lyc/A;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final N0(Lyc/H;)Lyc/A;
    .locals 2

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lyc/n;

    iget-object v1, p0, Lyc/n;->b:Lyc/A;

    invoke-virtual {v1, p1}, Lyc/A;->N0(Lyc/H;)Lyc/A;

    move-result-object p1

    iget-boolean p0, p0, Lyc/n;->c:Z

    invoke-direct {v0, p1, p0}, Lyc/n;-><init>(Lyc/A;Z)V

    return-object v0
.end method

.method public final O0()Lyc/A;
    .locals 0

    iget-object p0, p0, Lyc/n;->b:Lyc/A;

    return-object p0
.end method

.method public final Q0(Lyc/A;)Lyc/o;
    .locals 1

    new-instance v0, Lyc/n;

    iget-boolean p0, p0, Lyc/n;->c:Z

    invoke-direct {v0, p1, p0}, Lyc/n;-><init>(Lyc/A;Z)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lyc/n;->b:Lyc/A;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " & Any"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final w0()Z
    .locals 0

    iget-object p0, p0, Lyc/n;->b:Lyc/A;

    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object p0

    invoke-interface {p0}, Lyc/L;->c()LJb/i;

    move-result-object p0

    instance-of p0, p0, LJb/W;

    return p0
.end method

.method public final y(Lyc/w;)Lyc/d0;
    .locals 1

    const-string v0, "replacement"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lyc/w;->I0()Lyc/d0;

    move-result-object p1

    iget-boolean p0, p0, Lyc/n;->c:Z

    invoke-static {p1, p0}, Lyc/c;->n(Lyc/d0;Z)Lyc/d0;

    move-result-object p0

    return-object p0
.end method
