.class public final enum Lcom/google/common/cache/l;
.super Lcom/google/common/cache/s;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "STRONG_ACCESS"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/common/cache/y;Lcom/google/common/cache/Q;Lcom/google/common/cache/Q;Ljava/lang/Object;)Lcom/google/common/cache/Q;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/cache/s;->c(Lcom/google/common/cache/y;Lcom/google/common/cache/Q;Lcom/google/common/cache/Q;Ljava/lang/Object;)Lcom/google/common/cache/Q;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/google/common/cache/s;->a(Lcom/google/common/cache/Q;Lcom/google/common/cache/Q;)V

    return-object p0
.end method

.method public final e(Lcom/google/common/cache/y;Ljava/lang/Object;ILcom/google/common/cache/Q;)Lcom/google/common/cache/Q;
    .locals 0

    new-instance p0, Lcom/google/common/cache/E;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p4, p1}, Lcom/google/common/cache/E;-><init>(Ljava/lang/Object;ILcom/google/common/cache/Q;I)V

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lcom/google/common/cache/E;->f:J

    sget-object p1, Lcom/google/common/cache/x;->INSTANCE:Lcom/google/common/cache/x;

    iput-object p1, p0, Lcom/google/common/cache/E;->g:Lcom/google/common/cache/Q;

    iput-object p1, p0, Lcom/google/common/cache/E;->h:Lcom/google/common/cache/Q;

    return-object p0
.end method
