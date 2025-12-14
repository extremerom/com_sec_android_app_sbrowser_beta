.class public final Lx1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/r;


# instance fields
.field public final a:Lx1/r;

.field public final b:Lx1/r;


# direct methods
.method public constructor <init>(Lx1/r;Lx1/r;)V
    .locals 1

    const-string v0, "outer"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inner"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/i;->a:Lx1/r;

    iput-object p2, p0, Lx1/i;->b:Lx1/r;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;
    .locals 1

    const-string v0, "operation"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lx1/i;->a:Lx1/r;

    invoke-interface {v0, p1, p2}, Lx1/r;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lx1/i;->b:Lx1/r;

    invoke-interface {p0, p1, p2}, Lx1/r;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lsb/k;)Z
    .locals 1

    iget-object v0, p0, Lx1/i;->a:Lx1/r;

    invoke-interface {v0, p1}, Lx1/r;->b(Lsb/k;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lx1/i;->b:Lx1/r;

    invoke-interface {p0, p1}, Lx1/r;->b(Lsb/k;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lx1/i;->a:Lx1/r;

    invoke-interface {v0}, Lx1/r;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lx1/i;->b:Lx1/r;

    invoke-interface {p0}, Lx1/r;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lx1/i;

    if-eqz v0, :cond_0

    check-cast p1, Lx1/i;

    iget-object v0, p1, Lx1/i;->a:Lx1/r;

    iget-object v1, p0, Lx1/i;->a:Lx1/r;

    invoke-static {v1, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lx1/i;->b:Lx1/r;

    iget-object p1, p1, Lx1/i;->b:Lx1/r;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lx1/i;->a:Lx1/r;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object p0, p0, Lx1/i;->b:Lx1/r;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lx1/h;->b:Lx1/h;

    const-string v1, ""

    invoke-virtual {p0, v1, v0}, Lx1/i;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
