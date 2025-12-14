.class public final enum Lcom/google/common/cache/n;
.super Lcom/google/common/cache/s;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "STRONG_ACCESS_WRITE"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/common/cache/y;Lcom/google/common/cache/Q;Lcom/google/common/cache/Q;Ljava/lang/Object;)Lcom/google/common/cache/Q;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/cache/s;->c(Lcom/google/common/cache/y;Lcom/google/common/cache/Q;Lcom/google/common/cache/Q;Ljava/lang/Object;)Lcom/google/common/cache/Q;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/google/common/cache/s;->a(Lcom/google/common/cache/Q;Lcom/google/common/cache/Q;)V

    invoke-static {p2, p0}, Lcom/google/common/cache/s;->d(Lcom/google/common/cache/Q;Lcom/google/common/cache/Q;)V

    return-object p0
.end method

.method public final e(Lcom/google/common/cache/y;Ljava/lang/Object;ILcom/google/common/cache/Q;)Lcom/google/common/cache/Q;
    .locals 0

    new-instance p0, Lcom/google/common/cache/F;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/common/cache/G;-><init>(Ljava/lang/Object;ILcom/google/common/cache/Q;)V

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lcom/google/common/cache/F;->e:J

    sget-object p3, Lcom/google/common/cache/x;->INSTANCE:Lcom/google/common/cache/x;

    iput-object p3, p0, Lcom/google/common/cache/F;->f:Lcom/google/common/cache/Q;

    iput-object p3, p0, Lcom/google/common/cache/F;->g:Lcom/google/common/cache/Q;

    iput-wide p1, p0, Lcom/google/common/cache/F;->h:J

    iput-object p3, p0, Lcom/google/common/cache/F;->i:Lcom/google/common/cache/Q;

    iput-object p3, p0, Lcom/google/common/cache/F;->j:Lcom/google/common/cache/Q;

    return-object p0
.end method
