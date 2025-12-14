.class public final LE0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LE0/g;

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LE0/g;IILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE0/j;->a:LE0/g;

    iput p2, p0, LE0/j;->b:I

    iput p3, p0, LE0/j;->c:I

    iput-object p4, p0, LE0/j;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LE0/j;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LE0/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, LE0/j;->a:LE0/g;

    iget-object v3, p1, LE0/j;->a:LE0/g;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, LE0/j;->b:I

    iget v3, p1, LE0/j;->b:I

    invoke-static {v1, v3}, LG5/i2;->d(II)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, LE0/j;->c:I

    iget v3, p1, LE0/j;->c:I

    invoke-static {v1, v3}, LG5/j2;->a(II)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, LE0/j;->d:Ljava/lang/Object;

    iget-object p1, p1, LE0/j;->d:Ljava/lang/Object;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, LE0/j;->a:LE0/g;

    iget v0, v0, LE0/g;->a:I

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, LE0/j;->b:I

    invoke-static {v2, v0, v1}, LB/e;->c(III)I

    move-result v0

    iget v2, p0, LE0/j;->c:I

    invoke-static {v2, v0, v1}, LB/e;->c(III)I

    move-result v0

    iget-object p0, p0, LE0/j;->d:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TypefaceRequest(fontFamily=null, fontWeight="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LE0/j;->a:LE0/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LE0/j;->b:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, LG5/i2;->d(II)Z

    move-result v3

    const-string v4, "Invalid"

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const-string v1, "Normal"

    goto :goto_0

    :cond_0
    invoke-static {v1, v5}, LG5/i2;->d(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Italic"

    goto :goto_0

    :cond_1
    move-object v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontSynthesis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LE0/j;->c:I

    invoke-static {v1, v2}, LG5/j2;->a(II)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v4, "None"

    goto :goto_1

    :cond_2
    invoke-static {v1, v5}, LG5/j2;->a(II)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v4, "All"

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    invoke-static {v1, v2}, LG5/j2;->a(II)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v4, "Weight"

    goto :goto_1

    :cond_4
    const/4 v2, 0x3

    invoke-static {v1, v2}, LG5/j2;->a(II)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v4, "Style"

    :cond_5
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resourceLoaderCacheKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LE0/j;->d:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
