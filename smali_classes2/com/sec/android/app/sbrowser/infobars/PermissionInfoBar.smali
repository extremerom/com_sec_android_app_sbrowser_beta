.class Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;
.super Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate$EmbargoHandler;


# instance fields
.field private mAllPermissionsToRequest:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentSettingsToPermissionsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;[I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;-><init>(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;)V

    invoke-direct {p0, p5}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->setContentSettings([I)V

    return-void
.end method

.method public static synthetic b(Landroid/app/Activity;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->lambda$requestAndroidPermissions$1(Landroid/app/Activity;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;[Ljava/lang/String;[I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->lambda$requestAndroidPermissions$0([Ljava/lang/String;[I)V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;)Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;
    .locals 8

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarResourceMapper;->getResources(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;)Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate;->getPermissionType()I

    move-result v6

    const/16 v0, 0x9

    const/16 v1, 0x8

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    new-instance v7, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;

    const/16 v0, 0x33

    filled-new-array {v0}, [I

    move-result-object v5

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;-><init>(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;[I)V

    goto/16 :goto_0

    :pswitch_2
    new-instance v7, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;

    const/16 v0, 0x71

    filled-new-array {v0}, [I

    move-result-object v5

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;-><init>(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;[I)V

    goto/16 :goto_0

    :pswitch_3
    new-instance v7, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;

    const/16 v0, 0x36

    filled-new-array {v0}, [I

    move-result-object v5

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;-><init>(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;[I)V

    goto/16 :goto_0

    :pswitch_4
    new-instance v7, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;

    const/16 v0, 0x37

    filled-new-array {v0}, [I

    move-result-object v5

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;-><init>(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;[I)V

    goto :goto_0

    :pswitch_5
    new-instance v7, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;

    const/4 v0, 0x5

    filled-new-array {v0}, [I

    move-result-object v5

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;-><init>(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;[I)V

    goto :goto_0

    :pswitch_6
    new-instance v7, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;

    filled-new-array {v1}, [I

    move-result-object v5

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;-><init>(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;[I)V

    goto :goto_0

    :pswitch_7
    new-instance v7, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;

    filled-new-array {v0, v1}, [I

    move-result-object v5

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;-><init>(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;[I)V

    goto :goto_0

    :pswitch_8
    new-instance v7, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;

    filled-new-array {v0}, [I

    move-result-object v5

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;-><init>(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;[I)V

    goto :goto_0

    :pswitch_9
    new-instance v7, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;

    const/4 v0, 0x4

    filled-new-array {v0}, [I

    move-result-object v5

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;-><init>(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;[I)V

    :goto_0
    const-string p0, "Permission Infobar type: "

    const-string p2, " created"

    const-string v0, "PermissionInfoBar"

    invoke-static {v6, p0, p2, v0}, Landroidx/recyclerview/widget/P;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate;->setEmbargoHandler(Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate$EmbargoHandler;)V

    return-object v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static create(Landroid/content/Context;Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;)Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;
    .locals 7

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->getPermissionUpdateResources(Landroid/content/Context;Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;)Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;->getContentSettingsTypes()[I

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;-><init>(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;[I)V

    return-object v6
.end method

.method private generatePermissionsMapping([I)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    invoke-static {v3}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->getAndroidPermissionForContentSetting(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getPermissionInfoBarType()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getDelegate()Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->getInfoBarType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getDelegate()Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate;->getPermissionType()I

    move-result p0

    return p0
.end method

.method private static getPermissionUpdateResources(Landroid/content/Context;Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;)Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;
    .locals 10

    invoke-virtual {p1}, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;->getContentSettingsTypes()[I

    move-result-object p1

    array-length v0, p1

    const v1, 0x7f140609

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_6

    aget v5, p1, v2

    invoke-static {v5}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->getAndroidPermissionForContentSetting(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-static {p0, v5}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    add-int/lit8 v5, v3, 0x1

    if-lez v3, :cond_0

    goto :goto_3

    :cond_0
    aget v3, p1, v2

    const/4 v6, 0x4

    if-eq v3, v6, :cond_4

    const/16 v6, 0x71

    if-eq v3, v6, :cond_3

    const/16 v6, 0x8

    if-eq v3, v6, :cond_2

    const/16 v6, 0x9

    if-eq v3, v6, :cond_1

    :goto_1
    move v3, v5

    goto :goto_2

    :cond_1
    const v4, 0x7f140605

    goto :goto_1

    :cond_2
    const v4, 0x7f140608

    goto :goto_1

    :cond_3
    const v4, 0x7f140606

    goto :goto_1

    :cond_4
    const v4, 0x7f140607

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    move v1, v4

    :goto_3
    new-instance p1, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v0, 0x7f14061e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v3, 0x7f080288

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;-><init>(ILjava/lang/CharSequence;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private hasRequiredAndroidPermissionsForContentSetting([I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->generatePermissionsMapping([I)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    return p0
.end method

.method private isGeolocationPermissionInfoBar()Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->getPermissionInfoBarType()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNotificationPermissionInfoBar()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->getPermissionInfoBarType()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$requestAndroidPermissions$0([Ljava/lang/String;[I)V
    .locals 9

    array-length v0, p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v0, :cond_3

    aget v6, p2, v3

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    move v6, v2

    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->mContentSettingsToPermissionsMap:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->mContentSettingsToPermissionsMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    aget-object v8, p1, v3

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    aget-object v6, p1, v3

    invoke-static {v1, v6}, LU0/b;->e(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    aget-object v7, p1, v3

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-lez v4, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->onCloseButtonClicked()V

    goto :goto_2

    :cond_4
    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->onButtonClickedInternal(Z)V

    :goto_2
    return-void
.end method

.method private static synthetic lambda$requestAndroidPermissions$1(Landroid/app/Activity;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private onButtonClickedInternal(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->onButtonClicked(I)V

    return-void
.end method

.method private requestAndroidPermissions()V
    .locals 10

    new-instance v0, Lcom/sec/android/app/sbrowser/infobars/d;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/infobars/d;-><init>(Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->mAllPermissionsToRequest:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->mAllPermissionsToRequest:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v6, v1, :cond_2

    aget-object v8, v4, v6

    invoke-interface {v3, v8, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    aget-object v9, v4, v6

    invoke-static {v2, v9}, LU0/b;->e(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    aget-object v9, v4, v6

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v8, v5

    :cond_0
    if-nez v7, :cond_1

    if-eqz v8, :cond_1

    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-eqz v7, :cond_3

    const v0, 0x7f140f10

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f140ed0

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-static {v3}, LB/e;->i(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "package"

    const-string v6, "com.sec.android.app.sbrowser.beta"

    invoke-static {v5, v6, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->onCloseButtonClicked()V

    new-instance v4, Lcom/sec/android/app/sbrowser/infobars/e;

    invoke-direct {v4, v2, v3}, Lcom/sec/android/app/sbrowser/infobars/e;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-direct {p0, v2, v0, v1, v4}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->showSnackBar(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->mAllPermissionsToRequest:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {v2, p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper$PermissionCallback;)V

    return-void
.end method

.method private sendSAEvent(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getContext()Landroid/content/Context;

    move-result-object p0

    instance-of v0, p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setContentSettings([I)V
    .locals 6

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->mContentSettingsToPermissionsMap:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->mAllPermissionsToRequest:Ljava/util/Set;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p1, v1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->hasRequiredAndroidPermissionsForContentSetting([I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->getAndroidPermissionForContentSetting(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->mAllPermissionsToRequest:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->getOptionalAndroidPermissionForContentSetting(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->mAllPermissionsToRequest:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->mContentSettingsToPermissionsMap:Landroid/util/SparseArray;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/utils/CollectionUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private showSnackBar(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    move-object p0, p1

    check-cast p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "PermissionInfoBar"

    const-string p1, "Can\'t show snackbar, no terrace"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContainerView()Landroid/view/ViewGroup;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 v0, -0x1

    const/16 v1, 0xdac

    invoke-static {p0, p2, v1, v0}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, LH6/o;->k(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    const p2, 0x7f060223

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iget-object p2, p0, LH6/m;->i:LH6/l;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-virtual {p2}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, LH6/o;->l()V

    return-void
.end method


# virtual methods
.method public onCloseButtonClicked()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->isGeolocationPermissionInfoBar()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "2196"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLogWithoutScreenID(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->isNotificationPermissionInfoBar()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "2054"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->sendSAEvent(Ljava/lang/String;)V

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Permission Infobar type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->getPermissionInfoBarType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " closed without any action"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PermissionInfoBar"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;->onCloseButtonClicked()V

    return-void
.end method

.method public onPermissionEmbargoed(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPermissionEmbargoed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PermissionInfoBar"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/permissions/PermissionEmbargoHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getDelegate()Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate;->getRequestingOrigin()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/sbrowser/permissions/PermissionEmbargoHandler;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/permissions/PermissionEmbargoHandler;->onPermissionEmbargoed()V

    return-void
.end method

.method public onPrimaryButtonClicked()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->mContentSettingsToPermissionsMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->mAllPermissionsToRequest:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->requestAndroidPermissions()V

    return-void

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->isGeolocationPermissionInfoBar()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "2195"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLogWithoutScreenID(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->isNotificationPermissionInfoBar()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "2057"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->sendSAEvent(Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-super {p0}, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;->onPrimaryButtonClicked()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->onButtonClickedInternal(Z)V

    return-void
.end method

.method public onSecondaryButtonClicked()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->isGeolocationPermissionInfoBar()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "2194"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLogWithoutScreenID(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->isNotificationPermissionInfoBar()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "2056"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->sendSAEvent(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;->onSecondaryButtonClicked()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->mContentSettingsToPermissionsMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->onButtonClickedInternal(Z)V

    return-void
.end method
