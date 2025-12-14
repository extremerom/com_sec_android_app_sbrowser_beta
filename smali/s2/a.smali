.class public final Ls2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/common/collect/u;

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/u;->u(Ljava/util/Collection;)Lcom/google/common/collect/u;

    move-result-object p1

    iput-object p1, p0, Ls2/a;->a:Lcom/google/common/collect/u;

    iput-wide p2, p0, Ls2/a;->b:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, v0

    if-eqz p1, :cond_1

    cmp-long p1, p4, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    add-long v0, p2, p4

    :cond_1
    :goto_0
    iput-wide v0, p0, Ls2/a;->c:J

    return-void
.end method
