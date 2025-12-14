.class public final Lcom/sec/android/app/sbrowser/common/livedata/AutoClearLiveData;
.super Landroidx/lifecycle/X;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/livedata/AutoClearLiveData$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/X;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u000b*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002:\u0001\u000bB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u001f\u0010\t\u001a\u00020\u00052\u000e\u0010\u0008\u001a\n\u0012\u0006\u0008\u0000\u0012\u00028\u00000\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/common/livedata/AutoClearLiveData;",
        "T",
        "Landroidx/lifecycle/X;",
        "<init>",
        "()V",
        "Ldb/r;",
        "checkAndClearIfNeeded",
        "Landroidx/lifecycle/Y;",
        "observer",
        "removeObserver",
        "(Landroidx/lifecycle/Y;)V",
        "Companion",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/sec/android/app/sbrowser/common/livedata/AutoClearLiveData$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/AutoClearLiveData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/livedata/AutoClearLiveData$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/livedata/AutoClearLiveData;->Companion:Lcom/sec/android/app/sbrowser/common/livedata/AutoClearLiveData$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/S;-><init>()V

    return-void
.end method

.method private final checkAndClearIfNeeded()V
    .locals 2

    invoke-virtual {p0}, Landroidx/lifecycle/S;->hasActiveObservers()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AutoClearLiveData"

    const-string v1, "Clearing livedata value due to no observer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public removeObserver(Landroidx/lifecycle/Y;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/Y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Y;",
            ")V"
        }
    .end annotation

    const-string v0, "observer"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/lifecycle/S;->removeObserver(Landroidx/lifecycle/Y;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/livedata/AutoClearLiveData;->checkAndClearIfNeeded()V

    return-void
.end method
