.class public abstract synthetic Lj9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Landroid/media/AudioManager;Landroid/media/AudioDeviceInfo;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setCommunicationDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic B(Landroid/media/MediaDrm$SessionException;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaDrm$SessionException;->isTransient()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic C(Landroid/os/VibratorManager;)[I
    .locals 0

    invoke-virtual {p0}, Landroid/os/VibratorManager;->getVibratorIds()[I

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic D(Landroid/os/CombinedVibration$ParallelCombination;Landroid/os/VibrationEffect;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/CombinedVibration$ParallelCombination;->addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;

    return-void
.end method

.method public static bridge synthetic a(Landroid/content/ClipDescription;)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/ClipDescription;->getClassificationStatus()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(FFLandroid/graphics/RenderEffect;Landroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/RenderEffect;Landroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c()Landroid/graphics/Shader$TileMode;
    .locals 1

    sget-object v0, Landroid/graphics/Shader$TileMode;->DECAL:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public static bridge synthetic d(Landroid/media/AudioManager;)Landroid/media/AudioDeviceInfo;
    .locals 0

    invoke-virtual {p0}, Landroid/media/AudioManager;->getCommunicationDevice()Landroid/media/AudioDeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e()Landroid/os/CombinedVibration$ParallelCombination;
    .locals 1

    invoke-static {}, Landroid/os/CombinedVibration;->startParallel()Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic f(Landroid/os/CombinedVibration$ParallelCombination;)Landroid/os/CombinedVibration;
    .locals 0

    invoke-virtual {p0}, Landroid/os/CombinedVibration$ParallelCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Landroid/os/VibratorManager;I)Landroid/os/Vibrator;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/VibratorManager;->getVibrator(I)Landroid/os/Vibrator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Landroid/view/InputDevice;)Landroid/os/VibratorManager;
    .locals 0

    invoke-virtual {p0}, Landroid/view/InputDevice;->getVibratorManager()Landroid/os/VibratorManager;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Ljava/lang/Object;)Landroid/os/VibratorManager;
    .locals 0

    check-cast p0, Landroid/os/VibratorManager;

    return-object p0
.end method

.method public static bridge synthetic j(Landroid/view/View;)Landroid/view/AttachedSurfaceControl;
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Landroid/view/AttachedSurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .locals 0

    invoke-interface {p0, p1}, Landroid/view/AttachedSurfaceControl;->buildReparentTransaction(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(IIILjava/lang/CharSequence;)Landroid/view/inputmethod/SurroundingText;
    .locals 1

    new-instance v0, Landroid/view/inputmethod/SurroundingText;

    invoke-direct {v0, p3, p0, p1, p2}, Landroid/view/inputmethod/SurroundingText;-><init>(Ljava/lang/CharSequence;III)V

    return-object v0
.end method

.method public static bridge synthetic m(Landroid/view/textclassifier/TextSelection;)Landroid/view/textclassifier/TextClassification;
    .locals 0

    invoke-virtual {p0}, Landroid/view/textclassifier/TextSelection;->getTextClassification()Landroid/view/textclassifier/TextClassification;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Landroid/content/ClipData$Item;)Landroid/view/textclassifier/TextLinks;
    .locals 0

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getTextLinks()Landroid/view/textclassifier/TextLinks;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic o(Landroid/view/textclassifier/TextSelection$Request$Builder;)Landroid/view/textclassifier/TextSelection$Request$Builder;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/textclassifier/TextSelection$Request$Builder;->setIncludeTextClassification(Z)Landroid/view/textclassifier/TextSelection$Request$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic p()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->SOC_MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic q(Landroid/media/AudioManager;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Landroid/media/AudioManager;->getAvailableCommunicationDevices()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r()V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/SurroundingText;

    return-void
.end method

.method public static bridge synthetic s(Landroid/media/AudioManager;)V
    .locals 0

    invoke-virtual {p0}, Landroid/media/AudioManager;->clearCommunicationDevice()V

    return-void
.end method

.method public static bridge synthetic t(Landroid/os/CombinedVibration$ParallelCombination;Landroid/os/VibrationEffect;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/CombinedVibration$ParallelCombination;->addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;

    return-void
.end method

.method public static bridge synthetic u(Landroid/os/VibratorManager;)V
    .locals 0

    invoke-virtual {p0}, Landroid/os/VibratorManager;->cancel()V

    return-void
.end method

.method public static bridge synthetic v(Landroid/os/VibratorManager;Landroid/os/CombinedVibration;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/VibratorManager;->vibrate(Landroid/os/CombinedVibration;)V

    return-void
.end method

.method public static bridge synthetic w(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    return-void
.end method

.method public static bridge synthetic x(Landroid/view/View;Landroid/graphics/RenderEffect;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    return-void
.end method

.method public static bridge synthetic y(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->isAccessibilityTool()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic z(Landroid/content/Context;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->isUiContext()Z

    move-result p0

    return p0
.end method
