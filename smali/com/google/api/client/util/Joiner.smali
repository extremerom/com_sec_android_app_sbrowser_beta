.class public final Lcom/google/api/client/util/Joiner;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final wrapped:Lcom/google/common/base/p;


# direct methods
.method private constructor <init>(Lcom/google/common/base/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/api/client/util/Joiner;->wrapped:Lcom/google/common/base/p;

    return-void
.end method

.method public static on(C)Lcom/google/api/client/util/Joiner;
    .locals 2

    new-instance v0, Lcom/google/api/client/util/Joiner;

    new-instance v1, Lcom/google/common/base/p;

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/common/base/p;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/api/client/util/Joiner;-><init>(Lcom/google/common/base/p;)V

    return-object v0
.end method


# virtual methods
.method public final join(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/api/client/util/Joiner;->wrapped:Lcom/google/common/base/p;

    invoke-virtual {p0, p1}, Lcom/google/common/base/p;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
