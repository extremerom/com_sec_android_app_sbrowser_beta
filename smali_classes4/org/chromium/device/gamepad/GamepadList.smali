.class public Lorg/chromium/device/gamepad/GamepadList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/gamepad/GamepadList$LazyHolder;,
        Lorg/chromium/device/gamepad/GamepadList$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAttachedToWindowCounter:I

.field private final mGamepadDevices:[Lorg/chromium/device/gamepad/GamepadDevice;

.field private mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mIsGamepadAPIActive:Z

.field private final mLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->mLock:Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/chromium/device/gamepad/GamepadDevice;

    iput-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->mGamepadDevices:[Lorg/chromium/device/gamepad/GamepadDevice;

    new-instance v0, Lorg/chromium/device/gamepad/GamepadList$1;

    invoke-direct {v0, p0}, Lorg/chromium/device/gamepad/GamepadList$1;-><init>(Lorg/chromium/device/gamepad/GamepadList;)V

    iput-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/device/gamepad/GamepadList;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/device/gamepad/GamepadList;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/device/gamepad/GamepadList;->onInputDeviceAddedImpl(I)V

    return-void
.end method

.method private attachedToWindow()V
    .locals 2

    iget v0, p0, Lorg/chromium/device/gamepad/GamepadList;->mAttachedToWindowCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/chromium/device/gamepad/GamepadList;->mAttachedToWindowCounter:I

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/chromium/device/gamepad/GamepadList;->initializeDevices()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object p0, p0, Lorg/chromium/device/gamepad/GamepadList;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public static bridge synthetic b(Lorg/chromium/device/gamepad/GamepadList;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/device/gamepad/GamepadList;->onInputDeviceChangedImpl(I)V

    return-void
.end method

.method public static bridge synthetic c(Lorg/chromium/device/gamepad/GamepadList;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/device/gamepad/GamepadList;->onInputDeviceRemovedImpl(I)V

    return-void
.end method

.method private cancelVibration(I)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/chromium/device/gamepad/GamepadList;->getDevice(I)Lorg/chromium/device/gamepad/GamepadDevice;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/device/gamepad/GamepadDevice;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/device/gamepad/GamepadDevice;->cancelVibration()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private detachedFromWindow()V
    .locals 4

    iget v0, p0, Lorg/chromium/device/gamepad/GamepadList;->mAttachedToWindowCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/device/gamepad/GamepadList;->mAttachedToWindowCounter:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lorg/chromium/device/gamepad/GamepadList;->mGamepadDevices:[Lorg/chromium/device/gamepad/GamepadDevice;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lorg/chromium/device/gamepad/GamepadList;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    iput-object v3, p0, Lorg/chromium/device/gamepad/GamepadList;->mInputManager:Landroid/hardware/input/InputManager;

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-void
.end method

.method public static dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0}, Lorg/chromium/device/gamepad/GamepadList;->isGamepadEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lorg/chromium/device/gamepad/GamepadList;->getInstance()Lorg/chromium/device/gamepad/GamepadList;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/chromium/device/gamepad/GamepadList;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private doVibration(IDD)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/chromium/device/gamepad/GamepadList;->getDevice(I)Lorg/chromium/device/gamepad/GamepadDevice;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/device/gamepad/GamepadDevice;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/chromium/device/gamepad/GamepadDevice;->doVibration(DD)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private getDevice(I)Lorg/chromium/device/gamepad/GamepadDevice;
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/gamepad/GamepadList;->mGamepadDevices:[Lorg/chromium/device/gamepad/GamepadDevice;

    aget-object p0, p0, p1

    return-object p0
.end method

.method private getDeviceById(I)Lorg/chromium/device/gamepad/GamepadDevice;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/chromium/device/gamepad/GamepadList;->mGamepadDevices:[Lorg/chromium/device/gamepad/GamepadDevice;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/chromium/device/gamepad/GamepadDevice;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getGamepadForEvent(Landroid/view/InputEvent;)Lorg/chromium/device/gamepad/GamepadDevice;
    .locals 0

    invoke-virtual {p1}, Landroid/view/InputEvent;->getDeviceId()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/chromium/device/gamepad/GamepadList;->getDeviceById(I)Lorg/chromium/device/gamepad/GamepadDevice;

    move-result-object p0

    return-object p0
.end method

.method private static getGamepadInputDevice(I)Landroid/view/InputDevice;
    .locals 2

    invoke-static {p0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "uinput-fpc"

    invoke-virtual {p0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result v0

    const v1, 0x1000010

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getInstance()Lorg/chromium/device/gamepad/GamepadList;
    .locals 1

    invoke-static {}, Lorg/chromium/device/gamepad/GamepadList$LazyHolder;->a()Lorg/chromium/device/gamepad/GamepadList;

    move-result-object v0

    return-object v0
.end method

.method private getNextAvailableIndex()I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lorg/chromium/device/gamepad/GamepadList;->getDevice(I)Lorg/chromium/device/gamepad/GamepadDevice;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private grabGamepadData(J)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/chromium/device/gamepad/GamepadList;->mLock:Ljava/lang/Object;

    monitor-enter v15

    const/4 v1, 0x0

    move v14, v1

    :goto_0
    const/4 v1, 0x4

    if-ge v14, v1, :cond_1

    :try_start_0
    invoke-direct {v0, v14}, Lorg/chromium/device/gamepad/GamepadList;->getDevice(I)Lorg/chromium/device/gamepad/GamepadDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/chromium/device/gamepad/GamepadDevice;->updateButtonsAndAxesMapping()V

    invoke-static {}, Lorg/chromium/device/gamepad/GamepadListJni;->get()Lorg/chromium/device/gamepad/GamepadList$Natives;

    move-result-object v2

    invoke-virtual {v1}, Lorg/chromium/device/gamepad/GamepadDevice;->isStandardGamepad()Z

    move-result v6

    invoke-virtual {v1}, Lorg/chromium/device/gamepad/GamepadDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lorg/chromium/device/gamepad/GamepadDevice;->getVendorId()I

    move-result v9

    invoke-virtual {v1}, Lorg/chromium/device/gamepad/GamepadDevice;->getProductId()I

    move-result v10

    invoke-virtual {v1}, Lorg/chromium/device/gamepad/GamepadDevice;->getTimestamp()J

    move-result-wide v11

    invoke-virtual {v1}, Lorg/chromium/device/gamepad/GamepadDevice;->getAxes()[F

    move-result-object v13

    invoke-virtual {v1}, Lorg/chromium/device/gamepad/GamepadDevice;->getButtons()[F

    move-result-object v16

    invoke-virtual {v1}, Lorg/chromium/device/gamepad/GamepadDevice;->getButtonsLength()I

    move-result v17

    invoke-virtual {v1}, Lorg/chromium/device/gamepad/GamepadDevice;->supportsDualRumble()Z

    move-result v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v7, 0x1

    move-object v1, v2

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move v5, v14

    move/from16 v19, v14

    move-object/from16 v14, v16

    move-object/from16 v20, v15

    move/from16 v15, v17

    move/from16 v16, v18

    :try_start_1
    invoke-interface/range {v1 .. v16}, Lorg/chromium/device/gamepad/GamepadList$Natives;->setGamepadData(Lorg/chromium/device/gamepad/GamepadList;JIZZLjava/lang/String;IIJ[F[FIZ)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v20, v15

    goto :goto_2

    :cond_0
    move/from16 v19, v14

    move-object/from16 v20, v15

    invoke-static {}, Lorg/chromium/device/gamepad/GamepadListJni;->get()Lorg/chromium/device/gamepad/GamepadList$Natives;

    move-result-object v1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move/from16 v5, v19

    invoke-interface/range {v1 .. v16}, Lorg/chromium/device/gamepad/GamepadList$Natives;->setGamepadData(Lorg/chromium/device/gamepad/GamepadList;JIZZLjava/lang/String;IIJ[F[FIZ)V

    :goto_1
    add-int/lit8 v14, v19, 0x1

    move-object/from16 v15, v20

    goto :goto_0

    :cond_1
    move-object/from16 v20, v15

    monitor-exit v20

    return-void

    :goto_2
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lorg/chromium/device/gamepad/GamepadList;->mIsGamepadAPIActive:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/device/gamepad/GamepadList;->getGamepadForEvent(Landroid/view/InputEvent;)Lorg/chromium/device/gamepad/GamepadDevice;

    move-result-object p0

    if-nez p0, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    invoke-virtual {p0, p1}, Lorg/chromium/device/gamepad/GamepadDevice;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    monitor-exit v0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lorg/chromium/device/gamepad/GamepadList;->mIsGamepadAPIActive:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/device/gamepad/GamepadList;->getGamepadForEvent(Landroid/view/InputEvent;)Lorg/chromium/device/gamepad/GamepadDevice;

    move-result-object p0

    if-nez p0, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    invoke-virtual {p0, p1}, Lorg/chromium/device/gamepad/GamepadDevice;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    monitor-exit v0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private initializeDevices()V
    .locals 3
    .annotation build Lorg/chromium/build/annotations/RequiresNonNull;
    .end annotation

    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget v2, v0, v1

    invoke-static {v2}, Lorg/chromium/device/gamepad/GamepadList;->getGamepadInputDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lorg/chromium/device/gamepad/GamepadList;->registerGamepad(Landroid/view/InputDevice;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static isGamepadEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x82

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getScanCode()I

    move-result p0

    if-nez v0, :cond_0

    const/16 v1, 0x2c0

    if-lt p0, v1, :cond_0

    const/16 v1, 0x2cf

    if-gt p0, v1, :cond_0

    return v2

    :cond_0
    invoke-static {v0}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    move-result p0

    return p0

    :cond_1
    :pswitch_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isGamepadEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result p0

    const v0, 0x1000010

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static onAttachedToWindow()V
    .locals 1

    invoke-static {}, Lorg/chromium/device/gamepad/GamepadList;->getInstance()Lorg/chromium/device/gamepad/GamepadList;

    move-result-object v0

    invoke-direct {v0}, Lorg/chromium/device/gamepad/GamepadList;->attachedToWindow()V

    return-void
.end method

.method public static onDetachedFromWindow()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/device/gamepad/GamepadList;->getInstance()Lorg/chromium/device/gamepad/GamepadList;

    move-result-object v0

    invoke-direct {v0}, Lorg/chromium/device/gamepad/GamepadList;->detachedFromWindow()V

    return-void
.end method

.method public static onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-static {p0}, Lorg/chromium/device/gamepad/GamepadList;->isGamepadEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lorg/chromium/device/gamepad/GamepadList;->getInstance()Lorg/chromium/device/gamepad/GamepadList;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/chromium/device/gamepad/GamepadList;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private onInputDeviceAddedImpl(I)V
    .locals 1

    invoke-static {p1}, Lorg/chromium/device/gamepad/GamepadList;->getGamepadInputDevice(I)Landroid/view/InputDevice;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/chromium/device/gamepad/GamepadList;->registerGamepad(Landroid/view/InputDevice;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onInputDeviceChangedImpl(I)V
    .locals 2

    invoke-static {p1}, Lorg/chromium/device/gamepad/GamepadList;->getGamepadInputDevice(I)Landroid/view/InputDevice;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/InputDevice;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/chromium/device/gamepad/GamepadList;->unregisterGamepad(I)V

    invoke-direct {p0, p1}, Lorg/chromium/device/gamepad/GamepadList;->registerGamepad(Landroid/view/InputDevice;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onInputDeviceRemovedImpl(I)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/chromium/device/gamepad/GamepadList;->unregisterGamepad(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private registerGamepad(Landroid/view/InputDevice;)Z
    .locals 2

    invoke-direct {p0}, Lorg/chromium/device/gamepad/GamepadList;->getNextAvailableIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v1, Lorg/chromium/device/gamepad/GamepadDevice;

    invoke-direct {v1, v0, p1}, Lorg/chromium/device/gamepad/GamepadDevice;-><init>(ILandroid/view/InputDevice;)V

    iget-object p0, p0, Lorg/chromium/device/gamepad/GamepadList;->mGamepadDevices:[Lorg/chromium/device/gamepad/GamepadDevice;

    aput-object v1, p0, v0

    const/4 p0, 0x1

    return p0
.end method

.method public static setGamepadAPIActive(Z)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/device/gamepad/GamepadList;->getInstance()Lorg/chromium/device/gamepad/GamepadList;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/chromium/device/gamepad/GamepadList;->setIsGamepadActive(Z)V

    return-void
.end method

.method private setIsGamepadActive(Z)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lorg/chromium/device/gamepad/GamepadList;->mIsGamepadAPIActive:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge p1, v1, :cond_1

    invoke-direct {p0, p1}, Lorg/chromium/device/gamepad/GamepadList;->getDevice(I)Lorg/chromium/device/gamepad/GamepadDevice;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lorg/chromium/device/gamepad/GamepadDevice;->clearData()V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setVibration(IDD)V
    .locals 6
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/device/gamepad/GamepadList;->getInstance()Lorg/chromium/device/gamepad/GamepadList;

    move-result-object v0

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/chromium/device/gamepad/GamepadList;->doVibration(IDD)V

    return-void
.end method

.method public static setZeroVibration(I)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/device/gamepad/GamepadList;->getInstance()Lorg/chromium/device/gamepad/GamepadList;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/chromium/device/gamepad/GamepadList;->cancelVibration(I)V

    return-void
.end method

.method private unregisterGamepad(I)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/chromium/device/gamepad/GamepadList;->getDeviceById(I)Lorg/chromium/device/gamepad/GamepadDevice;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/chromium/device/gamepad/GamepadDevice;->getIndex()I

    move-result p1

    iget-object p0, p0, Lorg/chromium/device/gamepad/GamepadList;->mGamepadDevices:[Lorg/chromium/device/gamepad/GamepadDevice;

    const/4 v0, 0x0

    aput-object v0, p0, p1

    return-void
.end method

.method public static updateGamepadData(J)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/device/gamepad/GamepadList;->getInstance()Lorg/chromium/device/gamepad/GamepadList;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lorg/chromium/device/gamepad/GamepadList;->grabGamepadData(J)V

    return-void
.end method
