.class public abstract synthetic Lcom/samsung/android/sdk/aisuggestion/helper/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Landroid/view/WindowInsets;)Landroid/graphics/Insets;
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic B(Landroid/app/Activity;)Landroid/view/Display;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic C(Landroid/content/pm/InstallSourceInfo;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/content/pm/InstallSourceInfo;->getOriginatingPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic D(Landroid/view/WindowInsetsController;)V
    .locals 1

    const/16 v0, 0x100

    invoke-interface {p0, v0, v0}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    return-void
.end method

.method public static bridge synthetic a(Landroid/view/SurfaceControlViewHost$SurfacePackage;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->hashCode()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Landroid/app/blob/BlobHandle;)J
    .locals 2

    invoke-virtual {p0}, Landroid/app/blob/BlobHandle;->getExpiryTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic c([BLjava/lang/CharSequence;JLjava/lang/String;)Landroid/app/blob/BlobHandle;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/blob/BlobHandle;->createWithSha256([BLjava/lang/CharSequence;JLjava/lang/String;)Landroid/app/blob/BlobHandle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Landroid/content/pm/PackageManager;)Landroid/content/pm/InstallSourceInfo;
    .locals 1

    const-string v0, "com.sec.android.app.sbrowser.beta"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP_LOSSY:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public static bridge synthetic g(Landroid/view/WindowInsets;)Landroid/graphics/Insets;
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Landroid/hardware/biometrics/BiometricPrompt$Builder;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 1

    const v0, 0x8000

    invoke-virtual {p0, v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setAllowedAuthenticators(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic j(Landroid/app/Activity;)Landroid/view/Display;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/terrace/TerraceActivity;)Landroid/view/Display;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(Landroid/os/Parcelable;)Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .locals 0

    check-cast p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;
    .locals 0

    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Landroid/app/blob/BlobHandle;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Landroid/app/blob/BlobHandle;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic o()Ljava/lang/Class;
    .locals 1

    const-class v0, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    return-object v0
.end method

.method public static bridge synthetic p(Landroid/app/blob/BlobHandle;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/app/blob/BlobHandle;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic q(Landroid/content/pm/InstallSourceInfo;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic r(Landroid/view/View;Landroid/view/WindowInsetsAnimation$Callback;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    return-void
.end method

.method public static bridge synthetic s(Landroid/view/View;Lr/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    return-void
.end method

.method public static bridge synthetic t(Landroid/view/View;Lr/f;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    return-void
.end method

.method public static bridge synthetic u(Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-interface {p0, p1, v0, v1}, Landroid/view/WindowInsetsAnimationController;->setInsetsAndAlpha(Landroid/graphics/Insets;FF)V

    return-void
.end method

.method public static bridge synthetic v(Landroid/view/WindowInsetsController;)V
    .locals 1

    const/16 v0, 0x80

    invoke-interface {p0, v0, v0}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    return-void
.end method

.method public static bridge synthetic w(Landroid/view/WindowInsetsController;ILandroid/view/animation/LinearInterpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V
    .locals 7

    const-wide/16 v2, -0x1

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Landroid/view/WindowInsetsController;->controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V

    return-void
.end method

.method public static bridge synthetic x(Landroid/view/WindowInsets;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic y(Landroid/view/WindowInsetsAnimationController;)Z
    .locals 0

    invoke-interface {p0}, Landroid/view/WindowInsetsAnimationController;->isCancelled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic z(Landroid/app/blob/BlobHandle;)[B
    .locals 0

    invoke-virtual {p0}, Landroid/app/blob/BlobHandle;->getSha256Digest()[B

    move-result-object p0

    return-object p0
.end method
