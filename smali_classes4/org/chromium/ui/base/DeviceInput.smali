.class public Lorg/chromium/ui/base/DeviceInput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/base/DeviceInput$DeviceSnapshot;,
        Lorg/chromium/ui/base/DeviceInput$LazyInit;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mDeviceSnapshotsById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/chromium/ui/base/DeviceInput$DeviceSnapshot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/base/DeviceInput;->mDeviceSnapshotsById:Landroid/util/SparseArray;

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget v2, v0, v1

    invoke-static {v2}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lorg/chromium/ui/base/DeviceInput;->mDeviceSnapshotsById:Landroid/util/SparseArray;

    invoke-static {v3}, Lorg/chromium/ui/base/DeviceInput$DeviceSnapshot;->from(Landroid/view/InputDevice;)Lorg/chromium/ui/base/DeviceInput$DeviceSnapshot;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/ui/base/DeviceInput;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/chromium/ui/base/DeviceInput;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    sget-object v0, Lorg/chromium/ui/base/DeviceInput$LazyInit;->sInstance:Lorg/chromium/ui/base/DeviceInput;

    return-object v0
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/ui/base/DeviceInput;->mDeviceSnapshotsById:Landroid/util/SparseArray;

    invoke-static {v0}, Lorg/chromium/ui/base/DeviceInput$DeviceSnapshot;->from(Landroid/view/InputDevice;)Lorg/chromium/ui/base/DeviceInput$DeviceSnapshot;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/ui/base/DeviceInput;->mDeviceSnapshotsById:Landroid/util/SparseArray;

    invoke-static {v0}, Lorg/chromium/ui/base/DeviceInput$DeviceSnapshot;->from(Landroid/view/InputDevice;)Lorg/chromium/ui/base/DeviceInput$DeviceSnapshot;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/ui/base/DeviceInput;->mDeviceSnapshotsById:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_0
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object p0, p0, Lorg/chromium/ui/base/DeviceInput;->mDeviceSnapshotsById:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method
