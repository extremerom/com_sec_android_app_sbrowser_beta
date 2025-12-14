.class public final Lcom/google/common/collect/G;
.super Lcom/google/common/collect/X;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/common/cache/v;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lcom/google/common/cache/v;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/collect/G;->b:Lcom/google/common/cache/v;

    invoke-direct {p0, p1}, Lcom/google/common/collect/X;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/common/collect/G;->b:Lcom/google/common/cache/v;

    invoke-virtual {p0, p1}, Lcom/google/common/cache/v;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance v0, Lcom/google/common/collect/r;

    invoke-direct {v0, p1, p0}, Lcom/google/common/collect/r;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
