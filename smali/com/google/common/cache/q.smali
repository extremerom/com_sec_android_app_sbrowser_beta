.class public final enum Lcom/google/common/cache/q;
.super Lcom/google/common/cache/s;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "WEAK_WRITE"

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/common/cache/y;Lcom/google/common/cache/Q;Lcom/google/common/cache/Q;Ljava/lang/Object;)Lcom/google/common/cache/Q;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/cache/s;->c(Lcom/google/common/cache/y;Lcom/google/common/cache/Q;Lcom/google/common/cache/Q;Ljava/lang/Object;)Lcom/google/common/cache/Q;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/google/common/cache/s;->d(Lcom/google/common/cache/Q;Lcom/google/common/cache/Q;)V

    return-object p0
.end method

.method public final e(Lcom/google/common/cache/y;Ljava/lang/Object;ILcom/google/common/cache/Q;)Lcom/google/common/cache/Q;
    .locals 6

    new-instance p0, Lcom/google/common/cache/K;

    iget-object v1, p1, Lcom/google/common/cache/y;->h:Ljava/lang/ref/ReferenceQueue;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/common/cache/K;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/Q;I)V

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lcom/google/common/cache/K;->e:J

    sget-object p1, Lcom/google/common/cache/x;->INSTANCE:Lcom/google/common/cache/x;

    iput-object p1, p0, Lcom/google/common/cache/K;->f:Lcom/google/common/cache/Q;

    iput-object p1, p0, Lcom/google/common/cache/K;->g:Lcom/google/common/cache/Q;

    return-object p0
.end method
