.class public final Lyc/B;
.super Lyc/A;
.source "SourceFile"


# instance fields
.field public final b:Lyc/L;

.field public final c:Ljava/util/List;

.field public final d:Z

.field public final e:Lrc/o;

.field public final f:Lsb/k;


# direct methods
.method public constructor <init>(Lyc/L;Ljava/util/List;ZLrc/o;Lsb/k;)V
    .locals 1

    const-string v0, "constructor"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberScope"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyc/B;->b:Lyc/L;

    iput-object p2, p0, Lyc/B;->c:Ljava/util/List;

    iput-boolean p3, p0, Lyc/B;->d:Z

    iput-object p4, p0, Lyc/B;->e:Lrc/o;

    iput-object p5, p0, Lyc/B;->f:Lsb/k;

    instance-of p0, p4, LAc/g;

    if-eqz p0, :cond_1

    instance-of p0, p4, LAc/m;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "SimpleTypeImpl should not be created for error type: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p3, 0xa

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lyc/B;->c:Ljava/util/List;

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

    iget-object p0, p0, Lyc/B;->b:Lyc/L;

    return-object p0
.end method

.method public final G()Lrc/o;
    .locals 0

    iget-object p0, p0, Lyc/B;->e:Lrc/o;

    return-object p0
.end method

.method public final G0()Z
    .locals 0

    iget-boolean p0, p0, Lyc/B;->d:Z

    return p0
.end method

.method public final H0(Lzc/f;)Lyc/w;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lyc/B;->f:Lsb/k;

    invoke-interface {v0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyc/A;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public final K0(Lzc/f;)Lyc/d0;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lyc/B;->f:Lsb/k;

    invoke-interface {v0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyc/A;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public final M0(Z)Lyc/A;
    .locals 1

    iget-boolean v0, p0, Lyc/B;->d:Z

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    new-instance p1, Lyc/z;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lyc/z;-><init>(Lyc/A;I)V

    :goto_0
    move-object p0, p1

    goto :goto_1

    :cond_1
    new-instance p1, Lyc/z;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lyc/z;-><init>(Lyc/A;I)V

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public final N0(Lyc/H;)Lyc/A;
    .locals 1

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LEc/d;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lyc/C;

    invoke-direct {v0, p0, p1}, Lyc/C;-><init>(Lyc/A;Lyc/H;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
