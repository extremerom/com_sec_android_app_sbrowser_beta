.class Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;
.super Landroidx/lifecycle/X;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/X;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/S;-><init>()V

    return-void
.end method


# virtual methods
.method public postValue(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;->postValue(ILjava/lang/Object;)V

    return-void
.end method

.method public postValue(ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;

    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method public setValue(ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;

    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method
