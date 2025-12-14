.class public Lcom/google/common/cache/z;
.super Ljava/lang/ref/SoftReference;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/I;


# instance fields
.field public final a:Lcom/google/common/cache/Q;


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/Q;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p3, p0, Lcom/google/common/cache/z;->a:Lcom/google/common/cache/Q;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final b()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public c()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public d(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/Q;)Lcom/google/common/cache/I;
    .locals 0

    new-instance p0, Lcom/google/common/cache/z;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/cache/z;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/Q;)V

    return-object p0
.end method

.method public final e()Lcom/google/common/cache/Q;
    .locals 0

    iget-object p0, p0, Lcom/google/common/cache/z;->a:Lcom/google/common/cache/Q;

    return-object p0
.end method

.method public final f()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final isLoading()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
