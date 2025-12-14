.class public final LU/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LU/t;->a:F

    iput p2, p0, LU/t;->b:F

    iput p3, p0, LU/t;->c:F

    iput p4, p0, LU/t;->d:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, LU/t;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, LU/t;

    iget v0, p1, LU/t;->a:F

    iget v2, p0, LU/t;->a:F

    invoke-static {v2, v0}, LH0/e;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, LU/t;->b:F

    iget v2, p1, LU/t;->b:F

    invoke-static {v0, v2}, LH0/e;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, LU/t;->c:F

    iget v2, p1, LU/t;->c:F

    invoke-static {v0, v2}, LH0/e;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, LU/t;->d:F

    iget p1, p1, LU/t;->d:F

    invoke-static {p0, p1}, LH0/e;->a(FF)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, LU/t;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, LU/t;->b:F

    invoke-static {v2, v0, v1}, LB/e;->b(FII)I

    move-result v0

    iget v2, p0, LU/t;->c:F

    invoke-static {v2, v0, v1}, LB/e;->b(FII)I

    move-result v0

    iget p0, p0, LU/t;->d:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PaddingValues(start="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, LU/t;->a:F

    invoke-static {v1}, LH0/e;->c(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LU/t;->b:F

    invoke-static {v1}, LH0/e;->c(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LU/t;->c:F

    invoke-static {v1}, LH0/e;->c(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, LU/t;->d:F

    invoke-static {p0}, LH0/e;->c(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
