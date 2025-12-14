.class public final Lcom/google/common/cache/f;
.super Ljava/util/AbstractQueue;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    sget-object p0, Lcom/google/common/collect/S;->j:Lcom/google/common/collect/S;

    invoke-virtual {p0}, Lcom/google/common/collect/w;->g()Lcom/google/common/collect/u;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/u;->w(I)Lcom/google/common/collect/s;

    move-result-object p0

    return-object p0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final size()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
