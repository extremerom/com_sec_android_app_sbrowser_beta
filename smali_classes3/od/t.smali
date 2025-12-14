.class public final Lod/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/z;


# instance fields
.field public final a:Lwd/t;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Lwd/t;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/t;->a:Lwd/t;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final read(Lwd/g;J)J
    .locals 8

    const-string v0, "sink"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iget v0, p0, Lod/t;->e:I

    const-wide/16 v1, -0x1

    iget-object v3, p0, Lod/t;->a:Lwd/t;

    if-nez v0, :cond_4

    iget v0, p0, Lod/t;->f:I

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lwd/t;->t(J)V

    const/4 v0, 0x0

    iput v0, p0, Lod/t;->f:I

    iget v0, p0, Lod/t;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    iget v0, p0, Lod/t;->d:I

    invoke-static {v3}, Lid/b;->s(Lwd/t;)I

    move-result v1

    iput v1, p0, Lod/t;->e:I

    iput v1, p0, Lod/t;->b:I

    invoke-virtual {v3}, Lwd/t;->c()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v3}, Lwd/t;->c()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lod/t;->c:I

    sget-object v2, Lod/u;->d:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lod/h;->a:Lwd/j;

    iget v4, p0, Lod/t;->d:I

    iget v5, p0, Lod/t;->b:I

    iget v6, p0, Lod/t;->c:I

    const/4 v7, 0x1

    invoke-static {v4, v5, v1, v6, v7}, Lod/h;->a(IIIIZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v3}, Lwd/t;->h()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, p0, Lod/t;->d:I

    const/16 v3, 0x9

    if-ne v1, v3, :cond_3

    if-ne v2, v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "TYPE_CONTINUATION streamId changed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, " != TYPE_CONTINUATION"

    invoke-static {v1, p1}, Landroidx/recyclerview/widget/P;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    int-to-long v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v3, p1, p2, p3}, Lwd/t;->read(Lwd/g;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_5

    return-wide v1

    :cond_5
    iget p3, p0, Lod/t;->e:I

    long-to-int v0, p1

    sub-int/2addr p3, v0

    iput p3, p0, Lod/t;->e:I

    return-wide p1
.end method

.method public final timeout()Lwd/B;
    .locals 0

    iget-object p0, p0, Lod/t;->a:Lwd/t;

    iget-object p0, p0, Lwd/t;->a:Lwd/z;

    invoke-interface {p0}, Lwd/z;->timeout()Lwd/B;

    move-result-object p0

    return-object p0
.end method
