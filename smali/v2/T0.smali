.class public final Lv2/T0;
.super Lv2/F;
.source "SourceFile"


# instance fields
.field public final b:Lv2/J0;

.field public final c:Lv2/j1;


# direct methods
.method public constructor <init>(Lv2/J0;Lv2/j1;)V
    .locals 1

    const-string v0, "previousList"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2/T0;->b:Lv2/J0;

    iput-object p2, p0, Lv2/T0;->c:Lv2/j1;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lv2/T0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv2/T0;->b:Lv2/J0;

    iget v1, v0, Lv2/J0;->c:I

    check-cast p1, Lv2/T0;

    iget-object v2, p1, Lv2/T0;->b:Lv2/J0;

    iget v3, v2, Lv2/J0;->c:I

    if-ne v1, v3, :cond_0

    iget v1, v0, Lv2/J0;->d:I

    iget v2, v2, Lv2/J0;->d:I

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lv2/J0;->e()I

    move-result v1

    iget-object v2, p1, Lv2/T0;->b:Lv2/J0;

    invoke-virtual {v2}, Lv2/J0;->e()I

    move-result v3

    if-ne v1, v3, :cond_0

    iget v0, v0, Lv2/J0;->b:I

    iget v1, v2, Lv2/J0;->b:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lv2/T0;->c:Lv2/j1;

    check-cast p0, Lv2/J0;

    iget v0, p0, Lv2/J0;->c:I

    iget-object p1, p1, Lv2/T0;->c:Lv2/j1;

    move-object v1, p1

    check-cast v1, Lv2/J0;

    iget v2, v1, Lv2/J0;->c:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lv2/J0;->d:I

    iget v1, v1, Lv2/J0;->d:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lv2/J0;->e()I

    move-result v0

    move-object v1, p1

    check-cast v1, Lv2/J0;

    invoke-virtual {v1}, Lv2/J0;->e()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget p0, p0, Lv2/J0;->b:I

    check-cast p1, Lv2/J0;

    iget p1, p1, Lv2/J0;->b:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lv2/T0;->b:Lv2/J0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object p0, p0, Lv2/T0;->c:Lv2/j1;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PagingDataEvent.Refresh loaded newList\n                    |   newList (\n                    |       placeholdersBefore: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lv2/T0;->b:Lv2/J0;

    iget v2, v1, Lv2/J0;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n                    |       placeholdersAfter: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lv2/J0;->d:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n                    |       size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lv2/J0;->e()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n                    |       dataCount: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lv2/J0;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n                    |   )\n                    |   previousList (\n                    |       placeholdersBefore: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lv2/T0;->c:Lv2/j1;

    check-cast p0, Lv2/J0;

    iget v1, p0, Lv2/J0;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lv2/J0;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv2/J0;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lv2/J0;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n                    |   )\n                    |"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LKc/l;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
