.class public final Landroidx/compose/foundation/lazy/layout/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW/i;


# instance fields
.field public final a:Li0/a;

.field public final b:LG5/g4;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Li0/a;LG5/g4;Lzb/d;)V
    .locals 4

    const-string v0, "intervals"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nearestItemsRange"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/b;->a:Li0/a;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/b;->b:LG5/g4;

    iget p1, p3, Lzb/b;->a:I

    if-ltz p1, :cond_3

    iget v0, p2, LG5/g4;->b:I

    add-int/lit8 v0, v0, -0x1

    iget p3, p3, Lzb/b;->b:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-ge p3, p1, :cond_0

    sget-object p1, Lfb/w;->a:Lfb/w;

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, LW/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ltb/m;-><init>(I)V

    invoke-virtual {p2, p1}, LG5/g4;->a(I)V

    invoke-virtual {p2, p3}, LG5/g4;->a(I)V

    if-lt p3, p1, :cond_2

    iget-object p2, p2, LG5/g4;->c:Ljava/lang/Object;

    check-cast p2, Lc0/d;

    invoke-static {p2, p1}, LG5/Y2;->c(Lc0/d;I)I

    move-result p1

    iget-object v2, p2, Lc0/d;->a:[Ljava/lang/Object;

    aget-object v2, v2, p1

    check-cast v2, LW/d;

    iget v2, v2, LW/d;->a:I

    :goto_0
    if-gt v2, p3, :cond_1

    iget-object v3, p2, Lc0/d;->a:[Ljava/lang/Object;

    aget-object v3, v3, p1

    check-cast v3, LW/d;

    invoke-virtual {v1, v3}, LW/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v3, LW/d;->b:I

    add-int/2addr v2, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_1
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/b;->c:Ljava/lang/Object;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "toIndex ("

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") should be not smaller than fromIndex ("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(ILa0/m;I)V
    .locals 4

    check-cast p2, La0/q;

    const v0, -0x6febd618

    invoke-virtual {p2, v0}, La0/q;->S(I)La0/q;

    and-int/lit8 v0, p3, 0xe

    if-nez v0, :cond_1

    invoke-virtual {p2, p1}, La0/q;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    and-int/lit8 v1, p3, 0x70

    if-nez v1, :cond_3

    invoke-virtual {p2, p0}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit8 v1, v0, 0x5b

    const/16 v2, 0x12

    if-ne v1, v2, :cond_5

    invoke-virtual {p2}, La0/q;->x()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, La0/q;->K()V

    goto :goto_4

    :cond_5
    :goto_3
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/b;->b:LG5/g4;

    invoke-virtual {v1, p1}, LG5/g4;->d(I)LW/d;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    shl-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x70

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v3, p0, Landroidx/compose/foundation/lazy/layout/b;->a:Li0/a;

    invoke-virtual {v3, v1, v2, p2, v0}, Li0/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    invoke-virtual {p2}, La0/q;->r()La0/i0;

    move-result-object p2

    if-nez p2, :cond_6

    goto :goto_5

    :cond_6
    new-instance v0, LV/r;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, p3, v1}, LV/r;-><init>(LW/i;III)V

    iput-object v0, p2, La0/i0;->d:Lsb/n;

    :goto_5
    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/b;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/b;->b:LG5/g4;

    invoke-virtual {p0, p1}, LG5/g4;->d(I)LW/d;

    move-result-object p0

    iget p0, p0, LW/d;->a:I

    new-instance p0, Landroidx/compose/foundation/lazy/layout/DefaultLazyKey;

    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/layout/DefaultLazyKey;-><init>(I)V

    return-object p0
.end method

.method public final getContentType(I)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/b;->b:LG5/g4;

    invoke-virtual {p0, p1}, LG5/g4;->d(I)LW/d;

    move-result-object p0

    iget v0, p0, LW/d;->a:I

    sub-int/2addr p1, v0

    iget-object p0, p0, LW/d;->c:Lt9/c;

    iget-object p0, p0, Lt9/c;->b:Ljava/lang/Object;

    check-cast p0, LX1/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, LX1/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/b;->b:LG5/g4;

    iget p0, p0, LG5/g4;->b:I

    return p0
.end method
