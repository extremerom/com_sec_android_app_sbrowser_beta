.class public final Lcom/google/common/util/concurrent/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/google/common/util/concurrent/b;


# instance fields
.field public final a:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/common/util/concurrent/b;

    new-instance v1, LK0/b;

    const-string v2, "Failure occurred while trying to finish a future."

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, LK0/b;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/b;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Lcom/google/common/util/concurrent/b;->b:Lcom/google/common/util/concurrent/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/common/util/concurrent/b;->a:Ljava/lang/Throwable;

    return-void
.end method
