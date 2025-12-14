.class public final LR/i;
.super LP7/a;
.source "SourceFile"

# interfaces
.implements Lp0/b;


# instance fields
.field public final a:Ls0/b;

.field public final b:F

.field public final c:Ls0/g;


# direct methods
.method public constructor <init>(Ls0/b;Ls0/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LR/i;->a:Ls0/b;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, LR/i;->b:F

    iput-object p2, p0, LR/i;->c:Ls0/g;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, LR/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, LR/i;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, LR/i;->a:Ls0/b;

    iget-object v3, p1, LR/i;->a:Ls0/b;

    invoke-static {v2, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, LR/i;->b:F

    iget v2, p1, LR/i;->b:F

    cmpg-float v1, v1, v2

    if-nez v1, :cond_2

    iget-object p0, p0, LR/i;->c:Ls0/g;

    iget-object p1, p1, LR/i;->c:Ls0/g;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, LR/i;->a:Ls0/b;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Ls0/b;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit16 v0, v0, 0x3c1

    iget v1, p0, LR/i;->b:F

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, LB/e;->b(FII)I

    move-result v0

    iget-object p0, p0, LR/i;->c:Ls0/g;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Background(color="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LR/i;->a:Ls0/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", brush=null, alpha = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LR/i;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", shape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LR/i;->c:Ls0/g;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
