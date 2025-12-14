.class public final LW/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW/i;


# instance fields
.field public final a:La0/E;


# direct methods
.method public constructor <init>(La0/E;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW/a;->a:La0/E;

    return-void
.end method


# virtual methods
.method public final a(ILa0/m;I)V
    .locals 3

    check-cast p2, La0/q;

    const v0, 0x615d6713

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
    iget-object v1, p0, LW/a;->a:La0/E;

    invoke-virtual {v1}, La0/E;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LW/i;

    and-int/lit8 v0, v0, 0xe

    invoke-interface {v1, p1, p2, v0}, LW/i;->a(ILa0/m;I)V

    :goto_4
    invoke-virtual {p2}, La0/q;->r()La0/i0;

    move-result-object p2

    if-nez p2, :cond_6

    goto :goto_5

    :cond_6
    new-instance v0, LV/r;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p3, v1}, LV/r;-><init>(LW/i;III)V

    iput-object v0, p2, La0/i0;->d:Lsb/n;

    :goto_5
    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, LW/a;->a:La0/E;

    invoke-virtual {p0}, La0/E;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LW/i;

    invoke-interface {p0}, LW/i;->b()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LW/a;->a:La0/E;

    invoke-virtual {p0}, La0/E;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LW/i;

    invoke-interface {p0, p1}, LW/i;->c(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getContentType(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LW/a;->a:La0/E;

    invoke-virtual {p0}, La0/E;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LW/i;

    invoke-interface {p0, p1}, LW/i;->getContentType(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, LW/a;->a:La0/E;

    invoke-virtual {p0}, La0/E;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LW/i;

    invoke-interface {p0}, LW/i;->getItemCount()I

    move-result p0

    return p0
.end method
