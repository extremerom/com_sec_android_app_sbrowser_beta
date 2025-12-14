.class public abstract Landroidx/compose/ui/node/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LB0/N;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LB0/N;

    invoke-direct {v0}, Lm0/l;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lm0/l;->d:I

    sput-object v0, Landroidx/compose/ui/node/b;->a:LB0/N;

    return-void
.end method

.method public static final a(Lm0/k;Lm0/k;)I
    .locals 2

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    instance-of v0, p0, Landroidx/compose/ui/node/ForceUpdateElement;

    if-eqz v0, :cond_2

    check-cast p0, Landroidx/compose/ui/node/ForceUpdateElement;

    iget-object p0, p0, Landroidx/compose/ui/node/ForceUpdateElement;->a:LB0/K;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-ne p0, p1, :cond_2

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
