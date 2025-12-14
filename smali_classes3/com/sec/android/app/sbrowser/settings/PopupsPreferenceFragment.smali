.class public Lcom/sec/android/app/sbrowser/settings/PopupsPreferenceFragment;
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
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->getWebsiteInfoFetcher()Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;->fetchPopupPreferences()V

    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1406c3

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->setListener(Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment$PermissionListenerInterface;)V

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->onResume()V

    const v0, 0x7f140a19

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->setDescription(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->hideMainSwitch()V

    return-void
.end method
