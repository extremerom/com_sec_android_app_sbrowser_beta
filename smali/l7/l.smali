.class public abstract Ll7/l;
.super Ll7/n;
.source "SourceFile"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ll7/l;->a:I

    return-void
.end method


# virtual methods
.method public final e(Ll7/a;)I
    .locals 0

    check-cast p1, Ll7/l;

    iget p1, p1, Ll7/l;->a:I

    iget p0, p0, Ll7/l;->a:I

    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-le p0, p1, :cond_1

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

    check-cast p1, Ll7/l;

    iget p1, p1, Ll7/l;->a:I

    iget p0, p0, Ll7/l;->a:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final g()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final h()I
    .locals 0

    iget p0, p0, Ll7/l;->a:I

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Ll7/l;->a:I

    return p0
.end method

.method public final k()J
    .locals 2

    iget p0, p0, Ll7/l;->a:I

    int-to-long v0, p0

    return-wide v0
.end method
