.class public Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field mObserver:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserObserver;

.field mOrigin:Ljava/lang/String;

.field mSecurityLevel:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$Builder;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$Builder;->mOrigin:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$Builder;->mSecurityLevel:I

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$Builder;->mObserver:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserObserver;

    return-void
.end method


# virtual methods
.method public addObserver(Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserObserver;)Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$Builder;->mObserver:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserObserver;

    return-object p0
.end method

.method public build()Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$Builder;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->f(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$Builder;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->e(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$Builder;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$Builder;->mOrigin:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$Builder;->mObserver:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserObserver;

    invoke-direct {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserObserver;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->show()V

    return-object v0
.end method

.method public setActivity(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$Builder;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public setOrigin(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$Builder;->mOrigin:Ljava/lang/String;

    return-object p0
.end method

.method public setSecurityLevel(I)Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$Builder;->mSecurityLevel:I

    return-object p0
.end method
