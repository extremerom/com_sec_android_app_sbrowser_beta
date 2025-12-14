.class public Lorg/chromium/ui/events/devices/InputDeviceObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/events/devices/InputDeviceObserver$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final INSTANCE:Lorg/chromium/ui/events/devices/InputDeviceObserver;


# instance fields
.field private final mActiveDeviceMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mObserversCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/ui/events/devices/InputDeviceObserver;

    invoke-direct {v0}, Lorg/chromium/ui/events/devices/InputDeviceObserver;-><init>()V

    sput-object v0, Lorg/chromium/ui/events/devices/InputDeviceObserver;->INSTANCE:Lorg/chromium/ui/events/devices/InputDeviceObserver;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/events/devices/InputDeviceObserver;->mActiveDeviceMap:Landroid/util/ArrayMap;

    return-void
.end method

.method public static addObserver()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lorg/chromium/ui/events/devices/InputDeviceObserver;->INSTANCE:Lorg/chromium/ui/events/devices/InputDeviceObserver;

    invoke-direct {v0}, Lorg/chromium/ui/events/devices/InputDeviceObserver;->attachObserver()V

    return-void
.end method

.method private attachObserver()V
    .locals 2

    iget v0, p0, Lorg/chromium/ui/events/devices/InputDeviceObserver;->mObserversCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/chromium/ui/events/devices/InputDeviceObserver;->mObserversCounter:I

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lorg/chromium/ui/events/devices/InputDeviceObserver;->mInputManager:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method private detachObserver()V
    .locals 1

    iget v0, p0, Lorg/chromium/ui/events/devices/InputDeviceObserver;->mObserversCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/ui/events/devices/InputDeviceObserver;->mObserversCounter:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/events/devices/InputDeviceObserver;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/chromium/ui/events/devices/InputDeviceObserver;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/ui/events/devices/InputDeviceObserver;->mInputManager:Landroid/hardware/input/InputManager;

    :cond_0
    return-void
.end method

.method public static removeObserver()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lorg/chromium/ui/events/devices/InputDeviceObserver;->INSTANCE:Lorg/chromium/ui/events/devices/InputDeviceObserver;

    invoke-direct {v0}, Lorg/chromium/ui/events/devices/InputDeviceObserver;->detachObserver()V

    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .locals 4

    invoke-static {}, Lorg/chromium/ui/events/devices/InputDeviceObserverJni;->get()Lorg/chromium/ui/events/devices/InputDeviceObserver$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/chromium/ui/events/devices/InputDeviceObserver$Natives;->inputConfigurationChanged(Lorg/chromium/ui/events/devices/InputDeviceObserver;)V

    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    move-result v1

    const/16 v2, 0x101

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    iget-object p0, p0, Lorg/chromium/ui/events/devices/InputDeviceObserver;->mActiveDeviceMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "Android.InputDevice.Keyboard.Active"

    invoke-static {p0, v3}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    move-result v0

    const/16 v1, 0x2002

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lorg/chromium/ui/events/devices/InputDeviceObserver;->mActiveDeviceMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "Android.InputDevice.Mouse.Active"

    invoke-static {p0, v3}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    invoke-static {}, Lorg/chromium/ui/events/devices/InputDeviceObserverJni;->get()Lorg/chromium/ui/events/devices/InputDeviceObserver$Natives;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/chromium/ui/events/devices/InputDeviceObserver$Natives;->inputConfigurationChanged(Lorg/chromium/ui/events/devices/InputDeviceObserver;)V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 3

    invoke-static {}, Lorg/chromium/ui/events/devices/InputDeviceObserverJni;->get()Lorg/chromium/ui/events/devices/InputDeviceObserver$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/chromium/ui/events/devices/InputDeviceObserver$Natives;->inputConfigurationChanged(Lorg/chromium/ui/events/devices/InputDeviceObserver;)V

    iget-object v0, p0, Lorg/chromium/ui/events/devices/InputDeviceObserver;->mActiveDeviceMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/events/devices/InputDeviceObserver;->mActiveDeviceMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x101

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const-string v0, "Android.InputDevice.Keyboard.Active"

    invoke-static {v0, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/chromium/ui/events/devices/InputDeviceObserver;->mActiveDeviceMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x2002

    if-ne v0, v1, :cond_2

    const-string v0, "Android.InputDevice.Mouse.Active"

    invoke-static {v0, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lorg/chromium/ui/events/devices/InputDeviceObserver;->mActiveDeviceMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
