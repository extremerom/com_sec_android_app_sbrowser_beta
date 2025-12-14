.class public final Lcom/google/common/base/j;
.super Lcom/google/common/base/C;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/common/base/C;

.field public final b:Lcom/google/common/base/C;


# direct methods
.method public constructor <init>(Lcom/google/common/base/C;Lcom/google/common/base/C;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/common/base/j;->a:Lcom/google/common/base/C;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/common/base/j;->b:Lcom/google/common/base/C;

    return-void
.end method


# virtual methods
.method public final q(C)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/base/j;->a:Lcom/google/common/base/C;

    invoke-virtual {v0, p1}, Lcom/google/common/base/C;->q(C)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/common/base/j;->b:Lcom/google/common/base/C;

    invoke-virtual {p0, p1}, Lcom/google/common/base/C;->q(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CharMatcher.or("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/common/base/j;->a:Lcom/google/common/base/C;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/common/base/j;->b:Lcom/google/common/base/C;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
