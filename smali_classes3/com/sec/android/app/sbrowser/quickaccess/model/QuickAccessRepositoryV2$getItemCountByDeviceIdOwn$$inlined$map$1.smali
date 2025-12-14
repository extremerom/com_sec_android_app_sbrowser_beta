.class public final Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$getItemCountByDeviceIdOwn$$inlined$map$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->getItemCountByDeviceIdOwn()LQc/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LQc/h;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u001e\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1",
        "LQc/h;",
        "LQc/i;",
        "collector",
        "Ldb/r;",
        "collect",
        "(LQc/i;Lib/c;)Ljava/lang/Object;",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $this_unsafeTransform$inlined:LQc/h;


# direct methods
.method public constructor <init>(LQc/h;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$getItemCountByDeviceIdOwn$$inlined$map$1;->$this_unsafeTransform$inlined:LQc/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(LQc/i;Lib/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # LQc/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$getItemCountByDeviceIdOwn$$inlined$map$1;->$this_unsafeTransform$inlined:LQc/h;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$getItemCountByDeviceIdOwn$$inlined$map$1$2;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$getItemCountByDeviceIdOwn$$inlined$map$1$2;-><init>(LQc/i;)V

    invoke-interface {p0, v0, p2}, LQc/h;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
