.class public Lorg/chromium/components/permissions/PermissionUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final ANDROID_PERMISSION_HAND_TRACKING:Ljava/lang/String; = "android.permission.HAND_TRACKING"

.field public static final ANDROID_PERMISSION_SCENE_UNDERSTANDING_FINE:Ljava/lang/String; = "android.permission.SCENE_UNDERSTANDING_FINE"

.field private static final CAMERA_PERMISSIONS:[Ljava/lang/String;

.field private static final EMPTY_PERMISSIONS:[Ljava/lang/String;

.field private static final HAND_TRACKING_PERMISSIONS:[Ljava/lang/String;

.field private static final LOCATION_OPTIONAL_PERMISSIONS_POST_S:[Ljava/lang/String;

.field private static final LOCATION_PERMISSIONS_PRE_S:[Ljava/lang/String;

.field private static final LOCATION_REQUIRED_PERMISSIONS_POST_S:[Ljava/lang/String;

.field private static final MICROPHONE_PERMISSIONS:[Ljava/lang/String;

.field private static final NOTIFICATION_PERMISSIONS_POST_T:[Ljava/lang/String;

.field private static final OPENXR_PERMISSIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/chromium/components/permissions/PermissionUtil;->LOCATION_PERMISSIONS_PRE_S:[Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/chromium/components/permissions/PermissionUtil;->LOCATION_REQUIRED_PERMISSIONS_POST_S:[Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/components/permissions/PermissionUtil;->LOCATION_OPTIONAL_PERMISSIONS_POST_S:[Ljava/lang/String;

    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/components/permissions/PermissionUtil;->CAMERA_PERMISSIONS:[Ljava/lang/String;

    const-string v0, "android.permission.RECORD_AUDIO"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/components/permissions/PermissionUtil;->MICROPHONE_PERMISSIONS:[Ljava/lang/String;

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/components/permissions/PermissionUtil;->NOTIFICATION_PERMISSIONS_POST_T:[Ljava/lang/String;

    const-string v0, "android.permission.SCENE_UNDERSTANDING_FINE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/components/permissions/PermissionUtil;->OPENXR_PERMISSIONS:[Ljava/lang/String;

    const-string v0, "android.permission.HAND_TRACKING"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/components/permissions/PermissionUtil;->HAND_TRACKING_PERMISSIONS:[Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/chromium/components/permissions/PermissionUtil;->EMPTY_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic a([Ljava/lang/String;[I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/components/permissions/PermissionUtil;->lambda$requestSystemPermissionsForBluetooth$0([Ljava/lang/String;[I)V

    return-void
.end method

.method public static canRequestSystemPermission(ILorg/chromium/ui/base/WindowAndroid;)Z
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {p0}, Lorg/chromium/components/permissions/PermissionUtil;->getRequiredAndroidPermissionsForContentSetting(I)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {p1, v3}, Lorg/chromium/ui/base/WindowAndroid;->canRequestPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static canRequestSystemPermissionsForBluetooth(Lorg/chromium/ui/base/WindowAndroid;)Z
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    invoke-virtual {p0, v0}, Lorg/chromium/ui/base/WindowAndroid;->canRequestPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {p0, v0}, Lorg/chromium/ui/base/WindowAndroid;->canRequestPermission(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Lorg/chromium/ui/base/WindowAndroid;->canRequestPermission(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static doesAppLevelSettingsAllowSiteNotifications()Z
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/ui/permissions/ContextualNotificationPermissionRequester;->getInstance()Lorg/chromium/ui/permissions/ContextualNotificationPermissionRequester;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/ui/permissions/ContextualNotificationPermissionRequester;->doesAppLevelSettingsAllowSiteNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getOptionalAndroidPermissionsForContentSetting(I)[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    sget-object p0, Lorg/chromium/components/permissions/PermissionUtil;->EMPTY_PERMISSIONS:[Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-static {}, Lorg/chromium/components/permissions/PermissionUtil;->isApproximateLocationSupportEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lorg/chromium/components/permissions/PermissionUtil;->LOCATION_OPTIONAL_PERMISSIONS_POST_S:[Ljava/lang/String;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_1
    sget-object p0, Lorg/chromium/components/permissions/PermissionUtil;->EMPTY_PERMISSIONS:[Ljava/lang/String;

    return-object p0
.end method

.method public static getRequiredAndroidPermissionsForContentSetting(I)[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x4

    if-eq p0, v0, :cond_a

    const/4 v0, 0x5

    if-eq p0, v0, :cond_8

    const/16 v0, 0x8

    if-eq p0, v0, :cond_7

    const/16 v0, 0x9

    if-eq p0, v0, :cond_6

    const/16 v0, 0x36

    if-eq p0, v0, :cond_4

    const/16 v0, 0x37

    if-eq p0, v0, :cond_2

    const/16 v0, 0x71

    if-eq p0, v0, :cond_0

    sget-object p0, Lorg/chromium/components/permissions/PermissionUtil;->EMPTY_PERMISSIONS:[Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-static {}, Lorg/chromium/components/permissions/PermissionUtil;->handTrackingNeedsAdditionalPermissions()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lorg/chromium/components/permissions/PermissionUtil;->HAND_TRACKING_PERMISSIONS:[Ljava/lang/String;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_1
    sget-object p0, Lorg/chromium/components/permissions/PermissionUtil;->EMPTY_PERMISSIONS:[Ljava/lang/String;

    return-object p0

    :cond_2
    invoke-static {}, Lorg/chromium/components/permissions/PermissionUtil;->openXrNeedsAdditionalPermissions()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lorg/chromium/components/permissions/PermissionUtil;->OPENXR_PERMISSIONS:[Ljava/lang/String;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_3
    sget-object p0, Lorg/chromium/components/permissions/PermissionUtil;->CAMERA_PERMISSIONS:[Ljava/lang/String;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_4
    invoke-static {}, Lorg/chromium/components/permissions/PermissionUtil;->openXrNeedsAdditionalPermissions()Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lorg/chromium/components/permissions/PermissionUtil;->OPENXR_PERMISSIONS:[Ljava/lang/String;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_5
    sget-object p0, Lorg/chromium/components/permissions/PermissionUtil;->EMPTY_PERMISSIONS:[Ljava/lang/String;

    return-object p0

    :cond_6
    sget-object p0, Lorg/chromium/components/permissions/PermissionUtil;->CAMERA_PERMISSIONS:[Ljava/lang/String;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_7
    sget-object p0, Lorg/chromium/components/permissions/PermissionUtil;->MICROPHONE_PERMISSIONS:[Ljava/lang/String;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_8
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p0, v0, :cond_9

    sget-object p0, Lorg/chromium/components/permissions/PermissionUtil;->NOTIFICATION_PERMISSIONS_POST_T:[Ljava/lang/String;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_9
    sget-object p0, Lorg/chromium/components/permissions/PermissionUtil;->EMPTY_PERMISSIONS:[Ljava/lang/String;

    return-object p0

    :cond_a
    invoke-static {}, Lorg/chromium/components/permissions/PermissionUtil;->isApproximateLocationSupportEnabled()Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Lorg/chromium/components/permissions/PermissionUtil;->LOCATION_REQUIRED_PERMISSIONS_POST_S:[Ljava/lang/String;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_b
    sget-object p0, Lorg/chromium/components/permissions/PermissionUtil;->LOCATION_PERMISSIONS_PRE_S:[Ljava/lang/String;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static handTrackingNeedsAdditionalPermissions()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static isApproximateLocationSupportEnabled()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$requestSystemPermissionsForBluetooth$0([Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public static needsLocationPermissionForBluetooth(Lorg/chromium/ui/base/WindowAndroid;)Z
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static needsLocationServicesForBluetooth()Z
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    invoke-static {}, Lorg/chromium/components/location/LocationUtils;->getInstance()Lorg/chromium/components/location/LocationUtils;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/components/location/LocationUtils;->isSystemLocationSettingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static needsNearbyDevicesPermissionForBluetooth(Lorg/chromium/ui/base/WindowAndroid;)Z
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    invoke-virtual {p0, v0}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {p0, v0}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static openXrNeedsAdditionalPermissions()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    invoke-static {}, Lorg/chromium/device/vr/XrFeatureStatus;->isXrDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/components/webxr/WebXrAndroidFeatureMap;->isOpenXrEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static requestLocationServices(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-static {}, Lorg/chromium/components/location/LocationUtils;->getInstance()Lorg/chromium/components/location/LocationUtils;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/components/location/LocationUtils;->getSystemLocationSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static requestSystemPermissionsForBluetooth(Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/ui/permissions/PermissionCallback;)V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    aput-object v1, v0, v3

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    aput-object v1, v0, v2

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v3

    :goto_0
    if-nez p1, :cond_1

    new-instance p1, LA9/b;

    const/16 v1, 0x8

    invoke-direct {p1, v1}, LA9/b;-><init>(I)V

    :cond_1
    invoke-virtual {p0, v0, p1}, Lorg/chromium/ui/base/WindowAndroid;->requestPermissions([Ljava/lang/String;Lorg/chromium/ui/permissions/PermissionCallback;)V

    return-void
.end method
