.class public final enum Lcom/google/common/cache/o;
.super Lcom/google/common/cache/s;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "WEAK"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(Lcom/google/common/cache/y;Ljava/lang/Object;ILcom/google/common/cache/Q;)Lcom/google/common/cache/Q;
    .locals 0

    new-instance p0, Lcom/google/common/cache/M;

    iget-object p1, p1, Lcom/google/common/cache/y;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/cache/M;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/Q;)V

    return-object p0
.end method
