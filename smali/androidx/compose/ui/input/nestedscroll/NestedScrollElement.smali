.class final Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;
.super LB0/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LB0/K;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;",
        "LB0/K;",
        "Lw0/g;",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lw0/a;

.field public final b:Lw0/d;


# direct methods
.method public constructor <init>(Lw0/a;Lw0/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;->a:Lw0/a;

    iput-object p2, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;->b:Lw0/d;

    return-void
.end method


# virtual methods
.method public final b()Lm0/l;
    .locals 2

    new-instance v0, Lw0/g;

    iget-object v1, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;->a:Lw0/a;

    iget-object p0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;->b:Lw0/d;

    invoke-direct {v0, v1, p0}, Lw0/g;-><init>(Lw0/a;Lw0/d;)V

    return-object v0
.end method

.method public final c(Lm0/l;)V
    .locals 2

    check-cast p1, Lw0/g;

    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;->a:Lw0/a;

    iput-object v0, p1, Lw0/g;->k:Lw0/a;

    iget-object v0, p1, Lw0/g;->l:Lw0/d;

    iget-object v1, v0, Lw0/d;->a:Lw0/g;

    if-ne v1, p1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lw0/d;->a:Lw0/g;

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;->b:Lw0/d;

    if-nez p0, :cond_1

    new-instance p0, Lw0/d;

    invoke-direct {p0}, Lw0/d;-><init>()V

    iput-object p0, p1, Lw0/g;->l:Lw0/d;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p0, p1, Lw0/g;->l:Lw0/d;

    :cond_2
    :goto_0
    iget-boolean p0, p1, Lm0/l;->j:Z

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lw0/g;->A()V

    :cond_3
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;

    iget-object v0, p1, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;->a:Lw0/a;

    iget-object v2, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;->a:Lw0/a;

    invoke-static {v0, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object p1, p1, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;->b:Lw0/d;

    iget-object p0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;->b:Lw0/d;

    invoke-static {p1, p0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;->a:Lw0/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;->b:Lw0/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method
