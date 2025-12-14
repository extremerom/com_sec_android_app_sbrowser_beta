.class public final Lcom/sec/android/app/sbrowser/viewmodel/MainUIEventLiveData;
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
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\t\u0010\rJ\u0015\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000e\u0010\nJ\u001f\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u000e\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/viewmodel/MainUIEventLiveData;",
        "Landroidx/lifecycle/X;",
        "Lcom/sec/android/app/sbrowser/common/livedata/Event;",
        "Lcom/sec/android/app/sbrowser/viewmodel/MainUIEvent;",
        "<init>",
        "()V",
        "",
        "eventId",
        "Ldb/r;",
        "setValue",
        "(I)V",
        "",
        "parameter",
        "(ILjava/lang/Object;)V",
        "postValue",
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


# virtual methods
.method public final postValue(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/viewmodel/MainUIEventLiveData;->postValue(ILjava/lang/Object;)V

    return-void
.end method

.method public final postValue(ILjava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    new-instance v1, Lcom/sec/android/app/sbrowser/viewmodel/MainUIEvent;

    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sbrowser/viewmodel/MainUIEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setValue(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/viewmodel/MainUIEventLiveData;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method public final setValue(ILjava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    new-instance v1, Lcom/sec/android/app/sbrowser/viewmodel/MainUIEvent;

    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sbrowser/viewmodel/MainUIEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method
