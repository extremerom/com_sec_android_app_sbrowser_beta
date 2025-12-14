.class public final Ldb/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldb/f;
.implements Ljava/io/Serializable;


# instance fields
.field public a:Lsb/a;

.field public b:Ljava/lang/Object;


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ldb/s;->b:Ljava/lang/Object;

    sget-object v1, Ldb/q;->a:Ldb/q;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ldb/s;->a:Lsb/a;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {v0}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ldb/s;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Ldb/s;->a:Lsb/a;

    :cond_0
    iget-object p0, p0, Ldb/s;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ldb/s;->b:Ljava/lang/Object;

    sget-object v1, Ldb/q;->a:Ldb/q;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ldb/s;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "Lazy value not initialized yet."

    :goto_0
    return-object p0
.end method
