.class public Lcom/google/common/cache/G;
.super Lcom/google/common/cache/g;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:I

.field public final c:Lcom/google/common/cache/Q;

.field public volatile d:Lcom/google/common/cache/I;


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILcom/google/common/cache/Q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/common/cache/P;->s:Lcom/google/common/cache/e;

    iput-object v0, p0, Lcom/google/common/cache/G;->d:Lcom/google/common/cache/I;

    iput-object p1, p0, Lcom/google/common/cache/G;->a:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/cache/G;->b:I

    iput-object p3, p0, Lcom/google/common/cache/G;->c:Lcom/google/common/cache/Q;

    return-void
.end method


# virtual methods
.method public final d()Lcom/google/common/cache/I;
    .locals 0

    iget-object p0, p0, Lcom/google/common/cache/G;->d:Lcom/google/common/cache/I;

    return-object p0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/cache/G;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public final h()I
    .locals 0

    iget p0, p0, Lcom/google/common/cache/G;->b:I

    return p0
.end method

.method public final k(Lcom/google/common/cache/I;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/cache/G;->d:Lcom/google/common/cache/I;

    return-void
.end method

.method public final n()Lcom/google/common/cache/Q;
    .locals 0

    iget-object p0, p0, Lcom/google/common/cache/G;->c:Lcom/google/common/cache/Q;

    return-object p0
.end method
