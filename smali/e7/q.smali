.class public final Le7/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le7/r;

.field public final b:Le7/r;

.field public final c:Ljava/lang/String;

.field public final d:Le7/s;

.field public final e:Ll7/q;


# direct methods
.method public constructor <init>(Le7/r;Le7/r;Ljava/lang/String;Le7/s;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iput-object p1, p0, Le7/q;->a:Le7/r;

    iput-object p2, p0, Le7/q;->b:Le7/r;

    iput-object p3, p0, Le7/q;->c:Ljava/lang/String;

    iput-object p4, p0, Le7/q;->d:Le7/s;

    new-instance p2, Ll7/r;

    new-instance p4, Ll7/t;

    invoke-direct {p4, p3}, Ll7/t;-><init>(Ljava/lang/String;)V

    new-instance p3, Ll7/t;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Le7/q;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ll7/t;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p4, p3}, Ll7/r;-><init>(Ll7/t;Ll7/t;)V

    new-instance p3, Ll7/q;

    iget-object p1, p1, Le7/r;->c:Ll7/u;

    invoke-direct {p3, p1, p2}, Ll7/q;-><init>(Ll7/u;Ll7/r;)V

    iput-object p3, p0, Le7/q;->e:Ll7/q;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a(Z)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Le7/q;->a:Le7/r;

    iget-object p1, p1, Le7/r;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object p1, p0, Le7/q;->d:Le7/s;

    iget-object p1, p1, Le7/s;->a:[Le7/r;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    iget-object v3, v3, Le7/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Le7/q;->b:Le7/r;

    iget-object p0, p0, Le7/r;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Le7/q;

    if-eqz v0, :cond_0

    check-cast p1, Le7/q;

    iget-object v0, p1, Le7/q;->a:Le7/r;

    iget-object v1, p0, Le7/q;->a:Le7/r;

    invoke-virtual {v0, v1}, Le7/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Le7/q;->c:Ljava/lang/String;

    iget-object v1, p0, Le7/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Le7/q;->d:Le7/s;

    iget-object v1, p0, Le7/q;->d:Le7/s;

    invoke-virtual {v0, v1}, Le7/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Le7/q;->b:Le7/r;

    iget-object p0, p0, Le7/q;->b:Le7/r;

    invoke-virtual {p1, p0}, Le7/r;->equals(Ljava/lang/Object;)Z

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
    .locals 3

    iget-object v0, p0, Le7/q;->a:Le7/r;

    iget-object v0, v0, Le7/r;->a:Ljava/lang/String;

    const/16 v1, 0x20f

    const/16 v2, 0x1f

    invoke-static {v1, v2, v0}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Le7/q;->c:Ljava/lang/String;

    invoke-static {v0, v2, v1}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Le7/q;->d:Le7/s;

    iget-object v1, v1, Le7/s;->a:[Le7/r;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    iget-object p0, p0, Le7/q;->b:Le7/r;

    iget-object p0, p0, Le7/r;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Le7/q;->a:Le7/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le7/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Le7/q;->d:Le7/s;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
