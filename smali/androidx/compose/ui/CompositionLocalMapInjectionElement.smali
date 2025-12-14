.class public final Landroidx/compose/ui/CompositionLocalMapInjectionElement;
.super LB0/K;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LB0/K;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/ui/CompositionLocalMapInjectionElement;",
        "LB0/K;",
        "Lm0/i;",
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
.field public final a:La0/e0;


# direct methods
.method public constructor <init>(La0/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/CompositionLocalMapInjectionElement;->a:La0/e0;

    return-void
.end method


# virtual methods
.method public final b()Lm0/l;
    .locals 1

    new-instance v0, Lm0/i;

    invoke-direct {v0}, Lm0/l;-><init>()V

    iget-object p0, p0, Landroidx/compose/ui/CompositionLocalMapInjectionElement;->a:La0/e0;

    iput-object p0, v0, Lm0/i;->k:La0/e0;

    return-object v0
.end method

.method public final c(Lm0/l;)V
    .locals 0

    check-cast p1, Lm0/i;

    iget-object p0, p0, Landroidx/compose/ui/CompositionLocalMapInjectionElement;->a:La0/e0;

    iput-object p0, p1, Lm0/i;->k:La0/e0;

    invoke-static {p1}, LB0/d;->m(LB0/i;)Landroidx/compose/ui/node/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/compose/ui/node/a;->y(La0/w;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroidx/compose/ui/CompositionLocalMapInjectionElement;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/ui/CompositionLocalMapInjectionElement;

    iget-object p1, p1, Landroidx/compose/ui/CompositionLocalMapInjectionElement;->a:La0/e0;

    iget-object p0, p0, Landroidx/compose/ui/CompositionLocalMapInjectionElement;->a:La0/e0;

    invoke-static {p1, p0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/CompositionLocalMapInjectionElement;->a:La0/e0;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
