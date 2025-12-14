.class Lcom/sec/android/app/sbrowser/authentication/IntelligentScanMultiBackend;
.super Lcom/sec/android/app/sbrowser/authentication/MultipleBackend;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/ImageView;Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/MultipleBackend;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->FINGERPRINT:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    invoke-static {p1, v0, p3}, Lcom/sec/android/app/sbrowser/authentication/BackendFactory;->create(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;)Lcom/sec/android/app/sbrowser/authentication/Backend;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/authentication/MultipleBackend;->addBackend(Lcom/sec/android/app/sbrowser/authentication/Backend;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->INTELLIGENT_SCAN:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    invoke-static {p1, v0, p3, p2}, Lcom/sec/android/app/sbrowser/authentication/BackendFactory;->create(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;Landroid/widget/ImageView;)Lcom/sec/android/app/sbrowser/authentication/Backend;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/MultipleBackend;->addBackend(Lcom/sec/android/app/sbrowser/authentication/Backend;)V

    return-void
.end method


# virtual methods
.method public authenticate()V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFlipClosed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/sbrowser/authentication/MultipleBackend;->authenticate()V

    return-void
.end method
