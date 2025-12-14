.class public final Lcom/google/common/base/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:LG5/g4;


# direct methods
.method public constructor <init>(LG5/g4;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/base/v;->b:LG5/g4;

    iput-object p2, p0, Lcom/google/common/base/v;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3

    iget-object v0, p0, Lcom/google/common/base/v;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/common/base/v;->b:LG5/g4;

    iget-object v1, p0, LG5/g4;->d:Ljava/lang/Object;

    check-cast v1, Lo3/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/google/common/base/u;

    invoke-direct {v2, v1, p0, v0}, Lcom/google/common/base/u;-><init>(Lo3/f;LG5/g4;Ljava/lang/String;)V

    return-object v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/google/common/base/p;

    const-string v1, ", "

    invoke-direct {v0, v1}, Lcom/google/common/base/p;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/base/v;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/google/common/base/p;->a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)V

    const/16 p0, 0x5d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
