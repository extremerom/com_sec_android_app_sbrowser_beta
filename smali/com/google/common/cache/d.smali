.class public final Lcom/google/common/cache/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/google/common/base/z;

.field public static final c:Lcom/google/common/base/B;


# instance fields
.field public a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LE5/v;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, LE5/v;-><init>(I)V

    new-instance v1, Lcom/google/common/base/z;

    invoke-direct {v1, v0}, Lcom/google/common/base/z;-><init>(LE5/v;)V

    sput-object v1, Lcom/google/common/cache/d;->b:Lcom/google/common/base/z;

    new-instance v0, Lcom/google/common/base/B;

    invoke-direct {v0}, Lcom/google/common/base/B;-><init>()V

    sput-object v0, Lcom/google/common/cache/d;->c:Lcom/google/common/base/B;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, LZ3/x;

    const-class v1, Lcom/google/common/cache/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LZ3/x;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/google/common/cache/d;->a:J

    const-wide/16 v3, -0x1

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/google/common/base/q;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, LZ3/x;-><init>(I)V

    iget-object v2, v0, LZ3/x;->d:Ljava/lang/Object;

    check-cast v2, LZ3/x;

    iput-object v1, v2, LZ3/x;->d:Ljava/lang/Object;

    iput-object v1, v0, LZ3/x;->d:Ljava/lang/Object;

    iput-object p0, v1, LZ3/x;->c:Ljava/lang/Object;

    const-string p0, "maximumSize"

    iput-object p0, v1, LZ3/x;->b:Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, LZ3/x;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
