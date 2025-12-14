.class public Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemSelectedCallback;
.implements Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper$PermissionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;,
        Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;,
        Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LocationPermissionHelper;,
        Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$Builder;
    }
.end annotation


# instance fields
.field final mActivity:Landroid/app/Activity;

.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAdapterOff:Z

.field private final mAdapterOffStatus:Landroid/text/SpannableString;

.field mConnectedIcon:Landroid/graphics/drawable/Drawable;

.field mConnectedIconDescription:Ljava/lang/String;

.field mIsLocationModeChangedReceiverRegistered:Z

.field mItemChooserDialog:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;

.field final mLocationModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mObserver:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserObserver;

.field mOrigin:Ljava/lang/String;

.field mSignalStrengthLevelIcon:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserObserver;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mIsLocationModeChangedReceiverRegistered:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$1;-><init>(Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mLocationModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mOrigin:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mObserver:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserObserver;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const p3, 0x7f080240

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->getIconWithRowIconColorStateList(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mConnectedIcon:Landroid/graphics/drawable/Drawable;

    const p3, 0x7f140233

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mConnectedIconDescription:Ljava/lang/String;

    const p3, 0x7f080275

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->getIconWithRowIconColorStateList(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    const v0, 0x7f080276

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->getIconWithRowIconColorStateList(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f080277

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->getIconWithRowIconColorStateList(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f080278

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->getIconWithRowIconColorStateList(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f080279

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->getIconWithRowIconColorStateList(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    filled-new-array {p3, v0, v1, v2, v3}, [Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mSignalStrengthLevelIcon:[Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_0

    const-string p2, "BluetoothChooserDialog"

    const-string p3, "BluetoothChooserDialog: Default Bluetooth adapter not found."

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const p2, 0x7f140231

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;

    new-instance v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;

    sget-object v1, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;->ADAPTER_OFF_HELP:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    invoke-direct {v0, p0, v1, p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;-><init>(Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;Landroid/content/Context;)V

    const-string p1, "<link>"

    const-string v1, "</link>"

    invoke-direct {p3, p1, v1, v0}, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    filled-new-array {p3}, [Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier;->applySpans(Ljava/lang/String;[Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;)Landroid/text/SpannableString;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mAdapterOffStatus:Landroid/text/SpannableString;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mAdapterOff:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;)Landroid/text/SpannableString;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mAdapterOffStatus:Landroid/text/SpannableString;

    return-object p0
.end method

.method private static canRequestSystemPermissions(Landroid/app/Activity;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->canRequestPermission(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->canRequestPermission(Landroid/app/Activity;Ljava/lang/String;)Z

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

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->canRequestPermission(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private checkLocationServicesAndPermission()Z
    .locals 11

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->hasSystemPermissions(Landroid/app/Activity;)Z

    move-result v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x1f

    if-ge v1, v4, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LocationPermissionHelper;->isSystemLocationSettingEnabled(Landroid/app/Activity;)Z

    move-result v5

    xor-int/2addr v5, v2

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-nez v0, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->canRequestSystemPermissions(Landroid/app/Activity;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v0, ""

    invoke-direct {p0, v3, v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->finishDialog(ILjava/lang/String;)V

    return v3

    :cond_1
    new-instance v6, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;

    new-instance v7, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;

    sget-object v8, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;->REQUEST_PERMISSIONS:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v7, p0, v8, v9}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;-><init>(Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;Landroid/content/Context;)V

    const-string v8, "<permission_link>"

    const-string v9, "</permission_link>"

    invoke-direct {v6, v8, v9, v7}, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v7, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;

    new-instance v8, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;

    sget-object v9, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;->REQUEST_LOCATION_SERVICES:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v8, p0, v9, v10}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;-><init>(Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;Landroid/content/Context;)V

    const-string v9, "<services_link>"

    const-string v10, "</services_link>"

    invoke-direct {v7, v9, v10, v8}, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_3

    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mActivity:Landroid/app/Activity;

    const v1, 0x7f140238

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v7}, [Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier;->applySpans(Ljava/lang/String;[Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;)Landroid/text/SpannableString;

    move-result-object v0

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    if-eqz v5, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mActivity:Landroid/app/Activity;

    const v1, 0x7f140236

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v6, v7}, [Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier;->applySpans(Ljava/lang/String;[Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;)Landroid/text/SpannableString;

    move-result-object v0

    goto :goto_1

    :cond_4
    if-lt v1, v4, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mActivity:Landroid/app/Activity;

    const v1, 0x7f140239

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v6}, [Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier;->applySpans(Ljava/lang/String;[Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;)Landroid/text/SpannableString;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mActivity:Landroid/app/Activity;

    const v1, 0x7f140235

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v6}, [Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier;->applySpans(Ljava/lang/String;[Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;)Landroid/text/SpannableString;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mActivity:Landroid/app/Activity;

    const v2, 0x7f140237

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;

    new-instance v4, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;

    sget-object v5, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;->NEED_LOCATION_PERMISSION_HELP:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, p0, v5, v6}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;-><init>(Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;Landroid/content/Context;)V

    const-string v5, "<link>"

    const-string v6, "</link>"

    invoke-direct {v2, v5, v6, v4}, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    filled-new-array {v2}, [Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier;->applySpans(Ljava/lang/String;[Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;)Landroid/text/SpannableString;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mItemChooserDialog:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->setErrorState(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return v3
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->checkLocationServicesAndPermission()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic e(Landroid/app/Activity;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->canRequestSystemPermissions(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic f(Landroid/app/Activity;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->hasSystemPermissions(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method private finishDialog(ILjava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mIsLocationModeChangedReceiverRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mLocationModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mIsLocationModeChangedReceiverRegistered:Z

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mObserver:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserObserver;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserObserver;->dialogFinished(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private getIconWithRowIconColorStateList(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    new-instance v2, LZ2/r;

    invoke-direct {v2}, LZ2/r;-><init>()V

    sget-object v3, LW0/j;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v2, LZ2/i;->a:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mActivity:Landroid/app/Activity;

    const p1, 0x7f06049e

    invoke-static {p1, p0}, LV0/a;->c(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v2, p0}, LZ2/r;->setTintList(Landroid/content/res/ColorStateList;)V

    return-object v2
.end method

.method private static hasSystemPermissions(Landroid/app/Activity;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

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

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addOrUpdateDevice(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mConnectedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mConnectedIconDescription:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    if-eq p4, p3, :cond_1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mSignalStrengthLevelIcon:[Landroid/graphics/drawable/Drawable;

    aget-object p3, p3, p4

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f120059

    invoke-virtual {v0, v2, p4, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    move-object p4, p3

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mItemChooserDialog:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->addOrUpdateItem(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method public closeDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mItemChooserDialog:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->dismiss()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mObserver:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserObserver;

    invoke-interface {p0}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserObserver;->exitDialog()V

    return-void
.end method

.method public notifyAdapterTurnedOff()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mAdapterOff:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->checkLocationServicesAndPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mActivity:Landroid/app/Activity;

    const v1, 0x7f140230

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;

    new-instance v2, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;

    sget-object v3, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;->ADAPTER_OFF:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;-><init>(Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;Landroid/content/Context;)V

    const-string v3, "<link>"

    const-string v4, "</link>"

    invoke-direct {v1, v3, v4, v2}, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    filled-new-array {v1}, [Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier;->applySpans(Ljava/lang/String;[Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;)Landroid/text/SpannableString;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mItemChooserDialog:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mAdapterOffStatus:Landroid/text/SpannableString;

    invoke-virtual {v1, v0, p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->setErrorState(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public notifyAdapterTurnedOn()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mAdapterOff:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mItemChooserDialog:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->clear()V

    return-void
.end method

.method public notifyDiscoveryState(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mItemChooserDialog:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->setIdleState()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->checkLocationServicesAndPermission()Z

    :goto_0
    return-void
.end method

.method public onItemSelected(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->finishDialog(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->finishDialog(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult([Ljava/lang/String;[I)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mObserver:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserObserver;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->checkLocationServicesAndPermission()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mItemChooserDialog:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->clear()V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mAdapterOff:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->notifyAdapterTurnedOff()V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mObserver:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserObserver;

    invoke-interface {p0}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserObserver;->restartSearch()V

    :cond_2
    return-void
.end method

.method public removeDevice(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mItemChooserDialog:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->setEnabled(Ljava/lang/String;Z)V

    return-void
.end method

.method public show()V
    .locals 10

    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mOrigin:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mOrigin:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f140234

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mOrigin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    const/4 v1, 0x0

    move-object v4, v6

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mActivity:Landroid/app/Activity;

    const v1, 0x7f14023a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mActivity:Landroid/app/Activity;

    const v1, 0x7f140241

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;

    new-instance v2, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;

    sget-object v3, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;->EXPLAIN_BLUETOOTH:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;-><init>(Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;Landroid/content/Context;)V

    const-string v4, "<link>"

    const-string v7, "</link>"

    invoke-direct {v1, v4, v7, v2}, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    filled-new-array {v1}, [Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier;->applySpans(Ljava/lang/String;[Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;)Landroid/text/SpannableString;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mActivity:Landroid/app/Activity;

    const v2, 0x7f140232

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mActivity:Landroid/app/Activity;

    const v2, 0x7f14023b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;

    new-instance v4, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, p0, v3, v7}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;-><init>(Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;Landroid/content/Context;)V

    const-string v3, "<link1>"

    const-string v7, "</link1>"

    invoke-direct {v2, v3, v7, v4}, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;

    new-instance v4, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;

    sget-object v7, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;->RESTART_SEARCH:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, p0, v7, v8}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;-><init>(Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;Landroid/content/Context;)V

    const-string v7, "<link2>"

    const-string v8, "</link2>"

    invoke-direct {v3, v7, v8, v4}, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    filled-new-array {v2, v3}, [Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier;->applySpans(Ljava/lang/String;[Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;)Landroid/text/SpannableString;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserLabels;

    move-object v2, v1

    move-object v3, v6

    move-object v4, v0

    move-object v6, v0

    move-object v7, v8

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserLabels;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, p0, v1}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemSelectedCallback;Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserLabels;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mItemChooserDialog:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mLocationModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.location.MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/device/ContextUtils;->registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mIsLocationModeChangedReceiverRegistered:Z

    return-void
.end method
