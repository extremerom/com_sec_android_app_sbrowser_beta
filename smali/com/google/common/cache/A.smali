.class public final enum Lcom/google/common/cache/A;
.super Lcom/google/common/cache/D;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "STRONG"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/base/n;
    .locals 0

    sget-object p0, Lcom/google/common/base/l;->a:Lcom/google/common/base/l;

    return-object p0
.end method

.method public final c(Lcom/google/common/cache/y;Lcom/google/common/cache/Q;Ljava/lang/Object;)Lcom/google/common/cache/I;
    .locals 0

    new-instance p0, Lcom/google/common/cache/H;

    invoke-direct {p0, p3}, Lcom/google/common/cache/H;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
