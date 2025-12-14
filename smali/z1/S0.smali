.class public final Lz1/S0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lz1/K0;

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>(Lz1/K0;ZZ)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/S0;->a:Lz1/K0;

    iput-boolean p2, p0, Lz1/S0;->b:Z

    iput-boolean p3, p0, Lz1/S0;->c:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lz1/S0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lz1/S0;

    iget-object v1, p1, Lz1/S0;->a:Lz1/K0;

    iget-object v3, p0, Lz1/S0;->a:Lz1/K0;

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lz1/S0;->b:Z

    iget-boolean v3, p1, Lz1/S0;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lz1/S0;->c:Z

    iget-boolean p1, p1, Lz1/S0;->c:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lz1/S0;->a:Lz1/K0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lz1/S0;->b:Z

    invoke-static {v0, v1, v2}, LB/e;->e(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lz1/S0;->c:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RowColumnChildSelector(type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lz1/S0;->a:Lz1/K0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expandWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lz1/S0;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", expandHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lz1/S0;->c:Z

    const-string v1, ")"

    invoke-static {v1, v0, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->k(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
