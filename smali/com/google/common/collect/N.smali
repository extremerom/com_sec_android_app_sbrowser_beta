.class public final Lcom/google/common/collect/N;
.super Lcom/google/common/collect/w;
.source "SourceFile"


# instance fields
.field public final transient d:Lcom/google/common/collect/Q;

.field public final transient e:[Ljava/lang/Object;

.field public final transient f:I


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Q;[Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/N;->d:Lcom/google/common/collect/Q;

    iput-object p2, p0, Lcom/google/common/collect/N;->e:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/common/collect/N;->f:I

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/common/collect/N;->d:Lcom/google/common/collect/Q;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/Q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final i([Ljava/lang/Object;)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/w;->g()Lcom/google/common/collect/u;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/u;->i([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/w;->g()Lcom/google/common/collect/u;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/u;->w(I)Lcom/google/common/collect/s;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/N;->f:I

    return p0
.end method

.method public final u()Lcom/google/common/collect/u;
    .locals 1

    new-instance v0, Lcom/google/common/collect/M;

    invoke-direct {v0, p0}, Lcom/google/common/collect/M;-><init>(Lcom/google/common/collect/N;)V

    return-object v0
.end method
