.class public final enum Lcom/google/common/cache/C;
.super Lcom/google/common/cache/D;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "WEAK"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/base/n;
    .locals 0

    sget-object p0, Lcom/google/common/base/m;->a:Lcom/google/common/base/m;

    return-object p0
.end method

.method public final c(Lcom/google/common/cache/y;Lcom/google/common/cache/Q;Ljava/lang/Object;)Lcom/google/common/cache/I;
    .locals 0

    new-instance p0, Lcom/google/common/cache/N;

    iget-object p1, p1, Lcom/google/common/cache/y;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, p3, p2}, Lcom/google/common/cache/N;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/Q;)V

    return-object p0
.end method
