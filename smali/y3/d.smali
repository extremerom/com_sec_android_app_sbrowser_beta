.class public abstract Ly3/d;
.super Ly3/e;
.source "SourceFile"


# instance fields
.field public c:Z


# direct methods
.method public constructor <init>(Ly3/i;)V
    .locals 0

    invoke-direct {p0, p1}, Ly3/e;-><init>(Ly3/i;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ly3/d;->c:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ly3/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ly3/d;

    invoke-super {p0, p1}, Ly3/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Ly3/d;->c:Z

    iget-boolean p1, v0, Ly3/d;->c:Z

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ly3/e;->hashCode()I

    move-result v0

    iget-boolean p0, p0, Ly3/d;->c:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
