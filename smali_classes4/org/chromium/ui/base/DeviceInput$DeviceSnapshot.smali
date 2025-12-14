.class final Lorg/chromium/ui/base/DeviceInput$DeviceSnapshot;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/base/DeviceInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceSnapshot"
.end annotation


# instance fields
.field public final supportsAlphabeticKeyboard:Z

.field public final supportsPrecisionPointer:Z


# direct methods
.method private constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/chromium/ui/base/DeviceInput$DeviceSnapshot;->supportsAlphabeticKeyboard:Z

    iput-boolean p2, p0, Lorg/chromium/ui/base/DeviceInput$DeviceSnapshot;->supportsPrecisionPointer:Z

    return-void
.end method

.method public static from(Landroid/view/InputDevice;)Lorg/chromium/ui/base/DeviceInput$DeviceSnapshot;
    .locals 6

    invoke-virtual {p0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v0

    new-instance v1, Lorg/chromium/ui/base/DeviceInput$DeviceSnapshot;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-nez v0, :cond_1

    const/16 v0, 0x2002

    invoke-virtual {p0, v0}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result p0

    if-eqz p0, :cond_1

    move v2, v3

    :cond_1
    invoke-direct {v1, v4, v2}, Lorg/chromium/ui/base/DeviceInput$DeviceSnapshot;-><init>(ZZ)V

    return-object v1
.end method
