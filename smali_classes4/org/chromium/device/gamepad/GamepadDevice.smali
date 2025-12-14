.class Lorg/chromium/device/gamepad/GamepadDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final FF_STRONG_MAGNITUDE_CHANNEL_IDX:I = 0x0

.field static final FF_WEAK_MAGNITUDE_CHANNEL_IDX:I = 0x1

.field static final MAX_BTN_TRIGGER_HAPPY:I = 0x2cf

.field static final MAX_BUTTON_INDEX:I = 0x11

.field static final MAX_RAW_AXIS_VALUES:I = 0x100
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_RAW_BUTTON_VALUES:I = 0x100
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MIN_BTN_TRIGGER_HAPPY:I = 0x2c0

.field static final RELEVANT_KEYCODES:[I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final VIBRATION_DEFAULT_DURATION_MILLIS:J = 0x1388L

.field static final VIBRATION_MAX_AMPLITUDE:I = 0xff


# instance fields
.field private mAxes:[I

.field private final mAxisValues:[F

.field private final mButtonsValues:[F

.field private mDeviceId:I

.field private mDeviceIndex:I

.field private mDeviceName:Ljava/lang/String;

.field private mDeviceProductId:I

.field private mDeviceVendorId:I

.field private mMappings:Lorg/chromium/device/gamepad/GamepadMappings;

.field private final mRawAxes:[F

.field private final mRawButtons:[F

.field private mSupportsDualRumble:Z

.field private mTimestamp:J

.field private mVibratorManager:Landroid/os/VibratorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/chromium/device/gamepad/GamepadDevice;->RELEVANT_KEYCODES:[I

    return-void

    :array_0
    .array-data 4
        0x13
        0x14
        0x15
        0x16
        0x60
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x82
    .end array-data
.end method

.method public constructor <init>(ILandroid/view/InputDevice;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mAxisValues:[F

    const/16 v0, 0x13

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mButtonsValues:[F

    const/16 v0, 0x100

    new-array v1, v0, [F

    iput-object v1, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mRawButtons:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mRawAxes:[F

    iput p1, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mDeviceIndex:I

    invoke-virtual {p2}, Landroid/view/InputDevice;->getId()I

    move-result p1

    iput p1, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mDeviceId:I

    invoke-virtual {p2}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/InputDevice;->getVendorId()I

    move-result p1

    iput p1, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mDeviceVendorId:I

    invoke-virtual {p2}, Landroid/view/InputDevice;->getProductId()I

    move-result p1

    iput p1, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mDeviceProductId:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mTimestamp:J

    invoke-virtual {p2}, Landroid/view/InputDevice;->getMotionRanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mAxes:[I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice$MotionRange;

    invoke-virtual {v2}, Landroid/view/InputDevice$MotionRange;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v2

    iget-object v3, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mAxes:[I

    add-int/lit8 v4, v1, 0x1

    aput v2, v3, v1

    move v1, v4

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/chromium/device/gamepad/GamepadDevice;->RELEVANT_KEYCODES:[I

    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v1, p1, v1

    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3, v1}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {p2, p1}, Landroid/view/InputDevice;->hasKeys([I)[Z

    move-result-object p1

    move v1, v0

    :goto_1
    sget-object v4, Lorg/chromium/device/gamepad/GamepadDevice;->RELEVANT_KEYCODES:[I

    array-length v5, v4

    if-ge v1, v5, :cond_3

    aget-boolean v5, p1, v1

    if-eqz v5, :cond_2

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mAxes:[I

    invoke-static {p2, p1, v3}, Lorg/chromium/device/gamepad/GamepadMappings;->getMappings(Landroid/view/InputDevice;[ILjava/util/BitSet;)Lorg/chromium/device/gamepad/GamepadMappings;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mMappings:Lorg/chromium/device/gamepad/GamepadMappings;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt p1, v1, :cond_5

    invoke-static {p2}, Lj9/a;->h(Landroid/view/InputDevice;)Landroid/os/VibratorManager;

    move-result-object p1

    invoke-static {p1}, Lj9/a;->C(Landroid/os/VibratorManager;)[I

    move-result-object p2

    array-length v1, p2

    const/4 v3, 0x2

    if-lt v1, v3, :cond_5

    aget v1, p2, v0

    invoke-static {p1, v1}, Lj9/a;->g(Landroid/os/VibratorManager;I)Landroid/os/Vibrator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasAmplitudeControl()Z

    move-result v1

    if-eqz v1, :cond_4

    aget p2, p2, v2

    invoke-static {p1, p2}, Lj9/a;->g(Landroid/os/VibratorManager;I)Landroid/os/Vibrator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Vibrator;->hasAmplitudeControl()Z

    move-result p2

    if-eqz p2, :cond_4

    move v0, v2

    :cond_4
    iput-boolean v0, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mSupportsDualRumble:Z

    if-eqz v0, :cond_5

    iput-object p1, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mVibratorManager:Landroid/os/VibratorManager;

    :cond_5
    return-void
.end method

.method private scaleMagnitude(D)I
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    const-wide v0, 0x406fe00000000000L    # 255.0

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method


# virtual methods
.method public cancelVibration()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lj9/a;->i(Ljava/lang/Object;)Landroid/os/VibratorManager;

    move-result-object p0

    invoke-static {p0}, Lj9/a;->u(Landroid/os/VibratorManager;)V

    return-void
.end method

.method public clearData()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mAxisValues:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mRawAxes:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mButtonsValues:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object p0, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mRawButtons:[F

    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method public doVibration(DD)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/chromium/device/gamepad/GamepadDevice;->scaleMagnitude(D)I

    move-result p1

    invoke-direct {p0, p3, p4}, Lorg/chromium/device/gamepad/GamepadDevice;->scaleMagnitude(D)I

    move-result p2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lorg/chromium/device/gamepad/GamepadDevice;->cancelVibration()V

    return-void

    :cond_0
    invoke-static {}, Lj9/a;->e()Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object p3

    const-wide/16 v0, 0x1388

    if-lez p1, :cond_1

    invoke-static {v0, v1, p1}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-static {p3, p1}, Lj9/a;->t(Landroid/os/CombinedVibration$ParallelCombination;Landroid/os/VibrationEffect;)V

    :cond_1
    if-lez p2, :cond_2

    invoke-static {v0, v1, p2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-static {p3, p1}, Lj9/a;->D(Landroid/os/CombinedVibration$ParallelCombination;Landroid/os/VibrationEffect;)V

    :cond_2
    iget-object p0, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lj9/a;->i(Ljava/lang/Object;)Landroid/os/VibratorManager;

    move-result-object p0

    invoke-static {p3}, Lj9/a;->f(Landroid/os/CombinedVibration$ParallelCombination;)Landroid/os/CombinedVibration;

    move-result-object p1

    invoke-static {p0, p1}, Lj9/a;->v(Landroid/os/VibratorManager;Landroid/os/CombinedVibration;)V

    return-void
.end method

.method public getAxes()[F
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mAxisValues:[F

    return-object p0
.end method

.method public getButtons()[F
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mButtonsValues:[F

    return-object p0
.end method

.method public getButtonsLength()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mMappings:Lorg/chromium/device/gamepad/GamepadMappings;

    invoke-virtual {p0}, Lorg/chromium/device/gamepad/GamepadMappings;->getButtonsLength()I

    move-result p0

    return p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mDeviceId:I

    return p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mDeviceIndex:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public getProductId()I
    .locals 0

    iget p0, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mDeviceProductId:I

    return p0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mTimestamp:J

    return-wide v0
.end method

.method public getVendorId()I
    .locals 0

    iget p0, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mDeviceVendorId:I

    return p0
.end method

.method public handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    if-nez v0, :cond_0

    const/16 v2, 0x2c0

    if-lt v1, v2, :cond_0

    const/16 v2, 0x2cf

    if-gt v1, v2, :cond_0

    add-int/lit16 v0, v1, -0x204

    :cond_0
    invoke-static {p1}, Lorg/chromium/device/gamepad/GamepadList;->isGamepadEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mRawButtons:[F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mRawButtons:[F

    const/4 v3, 0x0

    aput v3, v1, v0

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mTimestamp:J

    return v2
.end method

.method public handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-static {p1}, Lorg/chromium/device/gamepad/GamepadList;->isGamepadEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mAxes:[I

    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget v0, v0, v1

    iget-object v2, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mRawAxes:[F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mTimestamp:J

    const/4 p0, 0x1

    return p0
.end method

.method public isStandardGamepad()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mMappings:Lorg/chromium/device/gamepad/GamepadMappings;

    invoke-virtual {p0}, Lorg/chromium/device/gamepad/GamepadMappings;->isStandard()Z

    move-result p0

    return p0
.end method

.method public supportsDualRumble()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mSupportsDualRumble:Z

    return p0
.end method

.method public updateButtonsAndAxesMapping()V
    .locals 4

    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mMappings:Lorg/chromium/device/gamepad/GamepadMappings;

    iget-object v1, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mAxisValues:[F

    iget-object v2, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mButtonsValues:[F

    iget-object v3, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mRawAxes:[F

    iget-object p0, p0, Lorg/chromium/device/gamepad/GamepadDevice;->mRawButtons:[F

    invoke-virtual {v0, v1, v2, v3, p0}, Lorg/chromium/device/gamepad/GamepadMappings;->mapToStandardGamepad([F[F[F[F)V

    return-void
.end method
