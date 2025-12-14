.class public final Ll7/c;
.super Ll7/a;
.source "SourceFile"


# instance fields
.field public final a:Ll7/b;


# direct methods
.method public constructor <init>(Ll7/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, LEc/g;->a:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Ll7/c;->a:Ll7/b;

    return-void

    :cond_0
    new-instance p0, Ln7/c;

    const/4 p1, 0x0

    const-string v0, "mutable instance"

    invoke-direct {p0, v0, p1}, Ln7/d;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    const-string v0, "{"

    const-string v1, "}"

    iget-object p0, p0, Ll7/c;->a:Ll7/b;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Ln7/e;->g(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ll7/a;)I
    .locals 0

    check-cast p1, Ll7/c;

    iget-object p1, p1, Ll7/c;->a:Ll7/b;

    iget-object p0, p0, Ll7/c;->a:Ll7/b;

    invoke-virtual {p0, p1}, Ll7/b;->h(Ll7/b;)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ll7/c;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Ll7/c;

    iget-object p1, p1, Ll7/c;->a:Ll7/b;

    iget-object p0, p0, Ll7/c;->a:Ll7/b;

    invoke-virtual {p0, p1}, Ln7/e;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    const-string p0, "array"

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Ll7/c;->a:Ll7/b;

    iget-object p0, p0, Ln7/e;->b:[Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, "array{"

    const-string v1, "}"

    iget-object p0, p0, Ll7/c;->a:Ll7/b;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ln7/e;->g(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
