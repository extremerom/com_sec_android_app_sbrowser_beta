.class public abstract Lcom/samsung/android/vexfwk/VexFwkResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/vexfwk/VexFwkResult$Failure;,
        Lcom/samsung/android/vexfwk/VexFwkResult$Success;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u0001*\u0006\u0008\u0001\u0010\u0002 \u00012\u00020\u0003:\u0002\u000f\u0010B\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J-\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ-\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\u000b\u0010\nJ3\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00010\u0000\"\u0004\u0008\u0002\u0010\u000c2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00020\u0006\u00a2\u0006\u0004\u0008\u000e\u0010\n\u0082\u0001\u0002\u0011\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/samsung/android/vexfwk/VexFwkResult;",
        "T",
        "E",
        "",
        "<init>",
        "()V",
        "Lkotlin/Function1;",
        "Ldb/r;",
        "action",
        "onSuccess",
        "(Lsb/k;)Lcom/samsung/android/vexfwk/VexFwkResult;",
        "onFailure",
        "R",
        "transform",
        "map",
        "Success",
        "Failure",
        "Lcom/samsung/android/vexfwk/VexFwkResult$Failure;",
        "Lcom/samsung/android/vexfwk/VexFwkResult$Success;",
        "VexFrameworkSDK_forInternalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ltb/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/vexfwk/VexFwkResult;-><init>()V

    return-void
.end method


# virtual methods
.method public final map(Lsb/k;)Lcom/samsung/android/vexfwk/VexFwkResult;
    .locals 1
    .param p1    # Lsb/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lsb/k;",
            ")",
            "Lcom/samsung/android/vexfwk/VexFwkResult<",
            "TR;TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "transform"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/samsung/android/vexfwk/VexFwkResult$Success;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/vexfwk/VexFwkResult$Success;

    check-cast p0, Lcom/samsung/android/vexfwk/VexFwkResult$Success;

    invoke-virtual {p0}, Lcom/samsung/android/vexfwk/VexFwkResult$Success;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/vexfwk/VexFwkResult$Success;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    instance-of p1, p0, Lcom/samsung/android/vexfwk/VexFwkResult$Failure;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/samsung/android/vexfwk/VexFwkResult$Failure;

    check-cast p0, Lcom/samsung/android/vexfwk/VexFwkResult$Failure;

    invoke-virtual {p0}, Lcom/samsung/android/vexfwk/VexFwkResult$Failure;->getError()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/vexfwk/VexFwkResult$Failure;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public final onFailure(Lsb/k;)Lcom/samsung/android/vexfwk/VexFwkResult;
    .locals 1
    .param p1    # Lsb/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsb/k;",
            ")",
            "Lcom/samsung/android/vexfwk/VexFwkResult<",
            "TT;TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/samsung/android/vexfwk/VexFwkResult$Failure;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/vexfwk/VexFwkResult$Failure;

    invoke-virtual {v0}, Lcom/samsung/android/vexfwk/VexFwkResult$Failure;->getError()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final onSuccess(Lsb/k;)Lcom/samsung/android/vexfwk/VexFwkResult;
    .locals 1
    .param p1    # Lsb/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsb/k;",
            ")",
            "Lcom/samsung/android/vexfwk/VexFwkResult<",
            "TT;TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/samsung/android/vexfwk/VexFwkResult$Success;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/vexfwk/VexFwkResult$Success;

    invoke-virtual {v0}, Lcom/samsung/android/vexfwk/VexFwkResult$Success;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method
