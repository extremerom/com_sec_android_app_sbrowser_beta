.class public final Lcom/google/common/collect/E;
.super Lcom/google/common/collect/k;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public transient c:Lcom/google/common/collect/C;

.field public transient d:Lcom/google/common/collect/C;

.field public final transient e:Lcom/google/common/collect/p;

.field public transient f:I

.field public transient g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/k;-><init>()V

    invoke-static {}, Lcom/google/common/collect/p;->a()Lcom/google/common/collect/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/E;->e:Lcom/google/common/collect/p;

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Map;
    .locals 1

    new-instance v0, Lcom/google/common/collect/J;

    invoke-direct {v0, p0}, Lcom/google/common/collect/J;-><init>(Lcom/google/common/collect/E;)V

    return-object v0
.end method

.method public final c()Ljava/util/Set;
    .locals 1

    new-instance v0, Lcom/google/common/collect/z;

    invoke-direct {v0, p0}, Lcom/google/common/collect/z;-><init>(Lcom/google/common/collect/E;)V

    return-object v0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/C;)Lcom/google/common/collect/C;
    .locals 2

    new-instance v0, Lcom/google/common/collect/C;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/C;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/common/collect/E;->c:Lcom/google/common/collect/C;

    iget-object v1, p0, Lcom/google/common/collect/E;->e:Lcom/google/common/collect/p;

    if-nez p2, :cond_0

    iput-object v0, p0, Lcom/google/common/collect/E;->d:Lcom/google/common/collect/C;

    iput-object v0, p0, Lcom/google/common/collect/E;->c:Lcom/google/common/collect/C;

    new-instance p2, Lcom/google/common/collect/B;

    invoke-direct {p2, v0}, Lcom/google/common/collect/B;-><init>(Lcom/google/common/collect/C;)V

    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/p;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/google/common/collect/E;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/E;->g:I

    goto :goto_2

    :cond_0
    if-nez p3, :cond_2

    iget-object p2, p0, Lcom/google/common/collect/E;->d:Lcom/google/common/collect/C;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p2, Lcom/google/common/collect/C;->c:Lcom/google/common/collect/C;

    iget-object p2, p0, Lcom/google/common/collect/E;->d:Lcom/google/common/collect/C;

    iput-object p2, v0, Lcom/google/common/collect/C;->d:Lcom/google/common/collect/C;

    iput-object v0, p0, Lcom/google/common/collect/E;->d:Lcom/google/common/collect/C;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/p;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/common/collect/B;

    if-nez p2, :cond_1

    new-instance p2, Lcom/google/common/collect/B;

    invoke-direct {p2, v0}, Lcom/google/common/collect/B;-><init>(Lcom/google/common/collect/C;)V

    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/p;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/google/common/collect/E;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/E;->g:I

    goto :goto_2

    :cond_1
    iget p1, p2, Lcom/google/common/collect/B;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p2, Lcom/google/common/collect/B;->c:I

    iget-object p1, p2, Lcom/google/common/collect/B;->b:Lcom/google/common/collect/C;

    iput-object v0, p1, Lcom/google/common/collect/C;->e:Lcom/google/common/collect/C;

    iput-object p1, v0, Lcom/google/common/collect/C;->f:Lcom/google/common/collect/C;

    iput-object v0, p2, Lcom/google/common/collect/B;->b:Lcom/google/common/collect/C;

    goto :goto_2

    :cond_2
    invoke-virtual {v1, p1}, Lcom/google/common/collect/p;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/B;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p1, Lcom/google/common/collect/B;->c:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/common/collect/B;->c:I

    iget-object p2, p3, Lcom/google/common/collect/C;->d:Lcom/google/common/collect/C;

    iput-object p2, v0, Lcom/google/common/collect/C;->d:Lcom/google/common/collect/C;

    iget-object p2, p3, Lcom/google/common/collect/C;->f:Lcom/google/common/collect/C;

    iput-object p2, v0, Lcom/google/common/collect/C;->f:Lcom/google/common/collect/C;

    iput-object p3, v0, Lcom/google/common/collect/C;->c:Lcom/google/common/collect/C;

    iput-object p3, v0, Lcom/google/common/collect/C;->e:Lcom/google/common/collect/C;

    iget-object p2, p3, Lcom/google/common/collect/C;->f:Lcom/google/common/collect/C;

    if-nez p2, :cond_3

    iput-object v0, p1, Lcom/google/common/collect/B;->a:Lcom/google/common/collect/C;

    goto :goto_0

    :cond_3
    iput-object v0, p2, Lcom/google/common/collect/C;->e:Lcom/google/common/collect/C;

    :goto_0
    iget-object p1, p3, Lcom/google/common/collect/C;->d:Lcom/google/common/collect/C;

    if-nez p1, :cond_4

    iput-object v0, p0, Lcom/google/common/collect/E;->c:Lcom/google/common/collect/C;

    goto :goto_1

    :cond_4
    iput-object v0, p1, Lcom/google/common/collect/C;->c:Lcom/google/common/collect/C;

    :goto_1
    iput-object v0, p3, Lcom/google/common/collect/C;->d:Lcom/google/common/collect/C;

    iput-object v0, p3, Lcom/google/common/collect/C;->f:Lcom/google/common/collect/C;

    :goto_2
    iget p1, p0, Lcom/google/common/collect/E;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/E;->f:I

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    new-instance v0, Lcom/google/common/collect/y;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/y;-><init>(Lcom/google/common/collect/E;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/E;->e(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/C;)Lcom/google/common/collect/C;

    const/4 p0, 0x1

    return p0
.end method
