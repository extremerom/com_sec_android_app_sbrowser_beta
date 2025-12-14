.class public Lcom/sec/android/app/sbrowser/settings/CameraPermissionPreferenceFragment;
.super Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment$PermissionListenerInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public fetchPermission()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->getWebsiteInfoFetcher()Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;

    move-result-object v0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mIsSecretMode:Z

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;->fetchCameraPreferences(Z)V

    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    const-string p0, "android.permission-group.CAMERA"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->getGroupLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()I
    .locals 0

    const/16 p0, 0x9

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->setListener(Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment$PermissionListenerInterface;)V

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
