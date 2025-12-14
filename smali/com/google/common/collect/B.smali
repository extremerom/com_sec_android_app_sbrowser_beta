.class public final Lcom/google/common/collect/B;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/common/collect/C;

.field public b:Lcom/google/common/collect/C;

.field public c:I


# direct methods
.method public constructor <init>(Lcom/google/common/collect/C;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/B;->a:Lcom/google/common/collect/C;

    iput-object p1, p0, Lcom/google/common/collect/B;->b:Lcom/google/common/collect/C;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/common/collect/C;->f:Lcom/google/common/collect/C;

    iput-object v0, p1, Lcom/google/common/collect/C;->e:Lcom/google/common/collect/C;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/common/collect/B;->c:I

    return-void
.end method
