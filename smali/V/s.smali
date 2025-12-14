.class public final LV/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV/o;
.implements LW/i;


# instance fields
.field public final a:LV/g;

.field public final synthetic b:Landroidx/compose/foundation/lazy/layout/b;


# direct methods
.method public constructor <init>(LG5/g4;Lzb/d;LV/g;LV/J;)V
    .locals 2

    const-string v0, "intervals"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nearestItemsRange"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, LV/s;->a:LV/g;

    new-instance v0, LV/q;

    invoke-direct {v0, p4, p3}, LV/q;-><init>(LV/J;LV/g;)V

    new-instance p3, Li0/a;

    const p4, 0x7b689f43

    const/4 v1, 0x1

    invoke-direct {p3, p4, v1, v0}, Li0/a;-><init>(IZLdb/b;)V

    new-instance p4, Landroidx/compose/foundation/lazy/layout/b;

    invoke-direct {p4, p3, p1, p2}, Landroidx/compose/foundation/lazy/layout/b;-><init>(Li0/a;LG5/g4;Lzb/d;)V

    iput-object p4, p0, LV/s;->b:Landroidx/compose/foundation/lazy/layout/b;

    return-void
.end method


# virtual methods
.method public final a(ILa0/m;I)V
    .locals 3

    check-cast p2, La0/q;

    const v0, -0x620dc0ea

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
    iget-object v1, p0, LV/s;->b:Landroidx/compose/foundation/lazy/layout/b;

    and-int/lit8 v0, v0, 0xe

    invoke-virtual {v1, p1, p2, v0}, Landroidx/compose/foundation/lazy/layout/b;->a(ILa0/m;I)V

    :goto_4
    invoke-virtual {p2}, La0/q;->r()La0/i0;

    move-result-object p2

    if-nez p2, :cond_6

    goto :goto_5

    :cond_6
    new-instance v0, LV/r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p3, v1}, LV/r;-><init>(LW/i;III)V

    iput-object v0, p2, La0/i0;->d:Lsb/n;

    :goto_5
    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, LV/s;->b:Landroidx/compose/foundation/lazy/layout/b;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/b;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LV/s;->b:Landroidx/compose/foundation/lazy/layout/b;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/layout/b;->c(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getContentType(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LV/s;->b:Landroidx/compose/foundation/lazy/layout/b;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/layout/b;->getContentType(I)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, LV/s;->b:Landroidx/compose/foundation/lazy/layout/b;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/b;->b:LG5/g4;

    iget p0, p0, LG5/g4;->b:I

    return p0
.end method
