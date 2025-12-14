.class public final Lcom/google/common/cache/i;
.super LD5/s;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/Object;

.field public final synthetic c:Lcom/google/common/cache/j;


# direct methods
.method public constructor <init>(Lcom/google/common/cache/j;Lcom/google/common/cache/Q;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/cache/i;->c:Lcom/google/common/cache/j;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, LD5/s;-><init>(I)V

    iput-object p2, p0, Lcom/google/common/cache/i;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/cache/i;->b:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/common/cache/i;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/google/common/cache/Q;

    invoke-interface {v1}, Lcom/google/common/cache/Q;->e()Lcom/google/common/cache/Q;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/cache/i;->c:Lcom/google/common/cache/j;

    iget-object v2, v2, Lcom/google/common/cache/j;->a:Lcom/google/common/cache/h;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    iput-object v1, p0, Lcom/google/common/cache/i;->b:Ljava/lang/Object;

    return-object v0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
