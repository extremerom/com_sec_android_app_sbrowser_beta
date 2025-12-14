.class public final LS3/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, LS3/i;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, LS3/i;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean p0, p0, LS3/i;->a:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
