.class public final Lz1/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lz1/K0;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Lz1/K0;II)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/z;->a:Lz1/K0;

    iput p2, p0, Lz1/z;->b:I

    iput p3, p0, Lz1/z;->c:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lz1/z;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lz1/z;

    iget-object v1, p1, Lz1/z;->a:Lz1/K0;

    iget-object v3, p0, Lz1/z;->a:Lz1/K0;

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lz1/z;->b:I

    iget v3, p1, Lz1/z;->b:I

    invoke-static {v1, v3}, LK1/a;->b(II)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lz1/z;->c:I

    iget p1, p1, Lz1/z;->c:I

    invoke-static {p0, p1}, LK1/b;->b(II)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lz1/z;->a:Lz1/K0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lz1/z;->b:I

    invoke-static {v2, v0, v1}, LB/e;->c(III)I

    move-result v0

    iget p0, p0, Lz1/z;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lz1/z;->b:I

    invoke-static {v0}, LK1/a;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lz1/z;->c:I

    invoke-static {v1}, LK1/b;->c(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BoxChildSelector(type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lz1/z;->a:Lz1/K0;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", horizontalAlignment="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", verticalAlignment="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-static {v2, v1, p0}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
