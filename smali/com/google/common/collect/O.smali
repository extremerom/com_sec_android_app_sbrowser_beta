.class public final Lcom/google/common/collect/O;
.super Lcom/google/common/collect/w;
.source "SourceFile"


# instance fields
.field public final transient d:Lcom/google/common/collect/Q;

.field public final transient e:Lcom/google/common/collect/P;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Q;Lcom/google/common/collect/P;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/O;->d:Lcom/google/common/collect/Q;

    iput-object p2, p0, Lcom/google/common/collect/O;->e:Lcom/google/common/collect/P;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/O;->d:Lcom/google/common/collect/Q;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final g()Lcom/google/common/collect/u;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/O;->e:Lcom/google/common/collect/P;

    return-object p0
.end method

.method public final i([Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/O;->e:Lcom/google/common/collect/P;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/u;->i([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/common/collect/O;->e:Lcom/google/common/collect/P;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/u;->w(I)Lcom/google/common/collect/s;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/O;->d:Lcom/google/common/collect/Q;

    iget p0, p0, Lcom/google/common/collect/Q;->f:I

    return p0
.end method
