.class public final Lm0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/m;


# instance fields
.field public final a:Lm0/m;

.field public final b:Lm0/m;


# direct methods
.method public constructor <init>(Lm0/m;Lm0/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/f;->a:Lm0/m;

    iput-object p2, p0, Lm0/f;->b:Lm0/m;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lm0/f;->a:Lm0/m;

    invoke-interface {v0, p1, p2}, Lm0/m;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lm0/f;->b:Lm0/m;

    invoke-interface {p0, p1, p2}, Lm0/m;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lsb/k;)Z
    .locals 1

    iget-object v0, p0, Lm0/f;->a:Lm0/m;

    invoke-interface {v0, p1}, Lm0/m;->e(Lsb/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lm0/f;->b:Lm0/m;

    invoke-interface {p0, p1}, Lm0/m;->e(Lsb/k;)Z

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

    instance-of v0, p1, Lm0/f;

    if-eqz v0, :cond_0

    check-cast p1, Lm0/f;

    iget-object v0, p1, Lm0/f;->a:Lm0/m;

    iget-object v1, p0, Lm0/f;->a:Lm0/m;

    invoke-static {v1, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lm0/f;->b:Lm0/m;

    iget-object p1, p1, Lm0/f;->b:Lm0/m;

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

    iget-object v0, p0, Lm0/f;->a:Lm0/m;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object p0, p0, Lm0/f;->b:Lm0/m;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lm0/e;->a:Lm0/e;

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, Lm0/f;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/16 v1, 0x5d

    invoke-static {v0, p0, v1}, LV0/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
