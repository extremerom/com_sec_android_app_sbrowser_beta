.class public final LG4/j;
.super LG4/r;
.source "SourceFile"


# instance fields
.field public final a:LG4/q;

.field public final b:LG4/h;


# direct methods
.method public constructor <init>(LG4/q;LG4/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG4/j;->a:LG4/q;

    iput-object p2, p0, LG4/j;->b:LG4/h;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LG4/r;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, LG4/r;

    iget-object v1, p0, LG4/j;->a:LG4/q;

    if-nez v1, :cond_1

    move-object v1, p1

    check-cast v1, LG4/j;

    iget-object v1, v1, LG4/j;->a:LG4/q;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    move-object v3, p1

    check-cast v3, LG4/j;

    iget-object v3, v3, LG4/j;->a:LG4/q;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-object p0, p0, LG4/j;->b:LG4/h;

    check-cast p1, LG4/j;

    iget-object p1, p1, LG4/j;->b:LG4/h;

    invoke-virtual {p0, p1}, LG4/h;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    return v0

    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, LG4/j;->a:LG4/q;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object p0, p0, LG4/j;->b:LG4/h;

    invoke-virtual {p0}, LG4/h;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClientInfo{clientType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LG4/j;->a:LG4/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", androidClientInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LG4/j;->b:LG4/h;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
