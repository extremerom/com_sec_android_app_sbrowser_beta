.class public Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;
.super Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/permissions/PermissionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate$Natives;
    }
.end annotation


# instance fields
.field private mActivityStateListener:Lorg/chromium/base/ApplicationStatus$ActivityStateListener;

.field private final mAndroidPermissions:[Ljava/lang/String;

.field private final mContentSettingsTypes:[I

.field private final mWebContents:Lorg/chromium/content_public/browser/WebContents;


# direct methods
.method public constructor <init>(JLorg/chromium/content_public/browser/WebContents;[I)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;-><init>(IJ)V

    iput-object p4, p0, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;->mContentSettingsTypes:[I

    iput-object p3, p0, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;->mContentSettingsTypes:[I

    array-length p4, p3

    if-ge p2, p4, :cond_1

    aget p3, p3, p2

    invoke-static {p3}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->getAndroidPermissionForContentSetting(I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;->mAndroidPermissions:[Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;->mActivityStateListener:Lorg/chromium/base/ApplicationStatus$ActivityStateListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;)J
    .locals 2

    invoke-virtual {p0}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->getNativePtr()J

    move-result-wide v0

    return-wide v0
.end method

.method private static create(JLorg/chromium/content_public/browser/WebContents;[I)Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;-><init>(JLorg/chromium/content_public/browser/WebContents;[I)V

    return-object v0
.end method


# virtual methods
.method public getAndroidPermissions()[Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;->mAndroidPermissions:[Ljava/lang/String;

    return-object p0
.end method

.method public getContentSettingsTypes()[I
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;->mContentSettingsTypes:[I

    return-object p0
.end method

.method public notifyPermissionResult()V
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;->mAndroidPermissions:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->getNativePtr()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegateJni;->get()Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate$Natives;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->getNativePtr()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p0, v1}, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate$Natives;->onPermissionResult(JLcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;Z)V

    :cond_2
    return-void
.end method

.method public onNativeDestroyed()V
    .locals 1

    invoke-super {p0}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->onNativeDestroyed()V

    iget-object v0, p0, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;->mActivityStateListener:Lorg/chromium/base/ApplicationStatus$ActivityStateListener;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->unregisterActivityStateListener(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;->mActivityStateListener:Lorg/chromium/base/ApplicationStatus$ActivityStateListener;

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult([Ljava/lang/String;[I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;->notifyPermissionResult()V

    return-void
.end method

.method public requestPermissions()V
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegateJni;->get()Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate$Natives;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->getNativePtr()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p0, v1}, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate$Natives;->onPermissionResult(JLcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;Z)V

    return-void

    :cond_0
    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    :goto_0
    iget-object v5, p0, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;->mAndroidPermissions:[Ljava/lang/String;

    array-length v6, v5

    if-ge v3, v6, :cond_3

    aget-object v5, v5, v3

    invoke-virtual {v0, v5}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;->mAndroidPermissions:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v0, v5}, Lorg/chromium/ui/base/WindowAndroid;->canRequestPermission(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v5, v2

    :goto_2
    and-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v0, v5, p0}, Lorg/chromium/ui/base/WindowAndroid;->requestPermissions([Ljava/lang/String;Lorg/chromium/ui/permissions/PermissionCallback;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    if-nez v2, :cond_5

    invoke-static {}, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegateJni;->get()Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate$Natives;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->getNativePtr()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p0, v1}, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate$Natives;->onPermissionResult(JLcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;Z)V

    return-void

    :cond_5
    new-instance v1, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate$1;

    invoke-direct {v1, p0}, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate$1;-><init>(Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;)V

    iput-object v1, p0, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;->mActivityStateListener:Lorg/chromium/base/ApplicationStatus$ActivityStateListener;

    invoke-static {v1, v2}, Lorg/chromium/base/ApplicationStatus;->registerStateListenerForActivity(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;Landroid/app/Activity;)V

    new-instance p0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "package:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_3
    return-void
.end method
