.class Lcom/sec/android/app/sbrowser/authentication/AuthenticationViewFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static create(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationViewFactory$1;->$SwitchMap$com$sec$android$app$sbrowser$authentication$Authenticator$Type:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationViewFactory;->createViewForIntelligentScanMulti(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationViewFactory;->createViewForIntelligentScan(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationViewFactory;->createViewForBiometrics(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationViewFactory;->createViewForIris(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationViewFactory;->createViewForFingerprint(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static createViewForBiometrics(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationViewFactory;->getIrisBasedBiometricsLayout()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0b00f9

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationViewFactory;->show(Landroid/view/View;I)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationViewFactory;->setupTitle(Landroid/view/View;)V

    return-object p0
.end method

.method private static createViewForFingerprint(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0e002e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationViewFactory;->setupTitle(Landroid/view/View;)V

    return-object p0
.end method

.method private static createViewForIntelligentScan(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationViewFactory;->getIrisBasedBiometricsLayout()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationViewFactory;->setupTitle(Landroid/view/View;)V

    return-object p0
.end method

.method private static createViewForIntelligentScanMulti(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationViewFactory;->getIrisBasedBiometricsLayout()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0b00fe

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationViewFactory;->show(Landroid/view/View;I)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationViewFactory;->setupTitle(Landroid/view/View;)V

    return-object p0
.end method

.method private static createViewForIris(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationViewFactory;->getIrisBasedBiometricsLayout()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationViewFactory;->setupTitle(Landroid/view/View;)V

    return-object p0
.end method

.method private static getIrisBasedBiometricsLayout()I
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e002f

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const v0, 0x7f0e0031

    return v0

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    const v0, 0x7f0e0030

    return v0

    :cond_2
    return v1
.end method

.method private static setupTitle(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->enableSamsungPass()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b00ff

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationViewFactory;->show(Landroid/view/View;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0a20

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Landroid/widget/ImageView;

    const v0, 0x7f0803c5

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f0b0100

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationViewFactory;->show(Landroid/view/View;I)V

    return-void
.end method

.method private static show(Landroid/view/View;I)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
