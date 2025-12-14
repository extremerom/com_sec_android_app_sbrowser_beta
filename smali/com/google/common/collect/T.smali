.class public final Lcom/google/common/collect/T;
.super LD5/s;
.source "SourceFile"


# instance fields
.field public b:Lcom/google/common/collect/b;

.field public c:Ljava/lang/Object;

.field public final d:Ljava/util/Iterator;

.field public final synthetic e:Lcom/google/common/collect/U;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/U;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, LD5/s;-><init>(I)V

    iput-object p1, p0, Lcom/google/common/collect/T;->e:Lcom/google/common/collect/U;

    sget-object v0, Lcom/google/common/collect/b;->NOT_READY:Lcom/google/common/collect/b;

    iput-object v0, p0, Lcom/google/common/collect/T;->b:Lcom/google/common/collect/b;

    iget-object p1, p1, Lcom/google/common/collect/U;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/T;->d:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 5

    iget-object v0, p0, Lcom/google/common/collect/T;->b:Lcom/google/common/collect/b;

    sget-object v1, Lcom/google/common/collect/b;->FAILED:Lcom/google/common/collect/b;

    if-eq v0, v1, :cond_5

    sget-object v2, Lcom/google/common/collect/a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    iput-object v1, p0, Lcom/google/common/collect/T;->b:Lcom/google/common/collect/b;

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/T;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/T;->e:Lcom/google/common/collect/U;

    iget-object v1, v1, Lcom/google/common/collect/U;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/common/collect/b;->DONE:Lcom/google/common/collect/b;

    iput-object v0, p0, Lcom/google/common/collect/T;->b:Lcom/google/common/collect/b;

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/common/collect/T;->c:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/T;->b:Lcom/google/common/collect/b;

    sget-object v1, Lcom/google/common/collect/b;->DONE:Lcom/google/common/collect/b;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/google/common/collect/b;->READY:Lcom/google/common/collect/b;

    iput-object v0, p0, Lcom/google/common/collect/T;->b:Lcom/google/common/collect/b;

    move v2, v3

    :cond_2
    return v2

    :cond_3
    return v3

    :cond_4
    return v2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/T;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/collect/b;->NOT_READY:Lcom/google/common/collect/b;

    iput-object v0, p0, Lcom/google/common/collect/T;->b:Lcom/google/common/collect/b;

    iget-object v0, p0, Lcom/google/common/collect/T;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/T;->c:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
