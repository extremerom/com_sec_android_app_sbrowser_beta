.class public final LF3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF3/e;


# instance fields
.field public final a:LF3/b;

.field public final b:LF3/b;


# direct methods
.method public constructor <init>(LF3/b;LF3/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF3/c;->a:LF3/b;

    iput-object p2, p0, LF3/c;->b:LF3/b;

    return-void
.end method


# virtual methods
.method public final f0()LC3/e;
    .locals 2

    new-instance v0, LC3/o;

    iget-object v1, p0, LF3/c;->a:LF3/b;

    invoke-virtual {v1}, LF3/b;->f0()LC3/e;

    move-result-object v1

    iget-object p0, p0, LF3/c;->b:LF3/b;

    invoke-virtual {p0}, LF3/b;->f0()LC3/e;

    move-result-object p0

    check-cast v1, LC3/i;

    check-cast p0, LC3/i;

    invoke-direct {v0, v1, p0}, LC3/o;-><init>(LC3/i;LC3/i;)V

    return-object v0
.end method

.method public final w0()Ljava/util/List;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot call getKeyframes on AnimatableSplitDimensionPathValue."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final z0()Z
    .locals 1

    iget-object v0, p0, LF3/c;->a:LF3/b;

    invoke-virtual {v0}, LF3/f;->z0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, LF3/c;->b:LF3/b;

    invoke-virtual {p0}, LF3/f;->z0()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
