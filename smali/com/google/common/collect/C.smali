.class public final Lcom/google/common/collect/C;
.super Lcom/google/common/collect/j;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Lcom/google/common/collect/C;

.field public d:Lcom/google/common/collect/C;

.field public e:Lcom/google/common/collect/C;

.field public f:Lcom/google/common/collect/C;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/j;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/C;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/common/collect/C;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/C;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/C;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/C;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/C;->b:Ljava/lang/Object;

    return-object v0
.end method
