.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/DexModeLiveData;
.super Landroidx/lifecycle/X;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/X;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0001\u0018\u00002\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0005R\u001c\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/DexModeLiveData;",
        "Landroidx/lifecycle/X;",
        "Lcom/sec/android/app/sbrowser/common/livedata/Event;",
        "",
        "<init>",
        "()V",
        "Ldb/r;",
        "updateValue",
        "getConsumedValue",
        "()Lcom/sec/android/app/sbrowser/common/livedata/Event;",
        "consumedValue",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/S;-><init>()V

    return-void
.end method

.method private final getConsumedValue()Lcom/sec/android/app/sbrowser/common/livedata/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/android/app/sbrowser/common/livedata/Event<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance p0, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/livedata/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final updateValue()V
    .locals 3

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/DexModeLiveData;->getConsumedValue()Lcom/sec/android/app/sbrowser/common/livedata/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v2, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->peekContent()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/common/livedata/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method
