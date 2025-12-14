.class public final Lcom/google/common/collect/M;
.super Lcom/google/common/collect/u;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/google/common/collect/N;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/N;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/M;->c:Lcom/google/common/collect/N;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/common/collect/M;->c:Lcom/google/common/collect/N;

    iget v0, p0, Lcom/google/common/collect/N;->f:I

    invoke-static {p1, v0}, Lcom/google/common/base/C;->f(II)V

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/common/collect/N;->e:[Ljava/lang/Object;

    aget-object v0, p0, p1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {p1, v0, p0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final p()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/M;->c:Lcom/google/common/collect/N;

    iget p0, p0, Lcom/google/common/collect/N;->f:I

    return p0
.end method
