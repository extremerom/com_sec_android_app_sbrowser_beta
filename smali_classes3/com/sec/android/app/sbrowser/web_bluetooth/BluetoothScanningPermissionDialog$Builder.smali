.class public Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field mObserver:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPromptObserver;

.field mOrigin:Ljava/lang/String;

.field mSecurityLevel:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog$Builder;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog$Builder;->mOrigin:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog$Builder;->mSecurityLevel:I

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog$Builder;->mObserver:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPromptObserver;

    return-void
.end method


# virtual methods
.method public addObserver(Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPromptObserver;)Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog$Builder;->mObserver:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPromptObserver;

    return-object p0
.end method

.method public build()Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog$Builder;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog$Builder;->mOrigin:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog$Builder;->mSecurityLevel:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog$Builder;->mObserver:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPromptObserver;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;ILcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPromptObserver;)V

    return-object v0
.end method

.method public setActivity(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog$Builder;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public setOrigin(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog$Builder;->mOrigin:Ljava/lang/String;

    return-object p0
.end method

.method public setSecurityLevel(I)Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog$Builder;->mSecurityLevel:I

    return-object p0
.end method
