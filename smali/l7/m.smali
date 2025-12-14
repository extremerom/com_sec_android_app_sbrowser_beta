.class public abstract Ll7/m;
.super Ll7/n;
.source "SourceFile"


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ll7/m;->a:J

    return-void
.end method


# virtual methods
.method public final e(Ll7/a;)I
    .locals 3

    check-cast p1, Ll7/m;

    iget-wide v0, p1, Ll7/m;->a:J

    iget-wide p0, p0, Ll7/m;->a:J

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    cmp-long p0, p0, v0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    check-cast p1, Ll7/m;

    iget-wide v0, p1, Ll7/m;->a:J

    iget-wide p0, p0, Ll7/m;->a:J

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final g()Z
    .locals 4

    iget-wide v0, p0, Ll7/m;->a:J

    long-to-int p0, v0

    int-to-long v2, p0

    cmp-long p0, v2, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final h()I
    .locals 2

    iget-wide v0, p0, Ll7/m;->a:J

    long-to-int p0, v0

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Ll7/m;->a:J

    long-to-int p0, v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final k()J
    .locals 2

    iget-wide v0, p0, Ll7/m;->a:J

    return-wide v0
.end method
