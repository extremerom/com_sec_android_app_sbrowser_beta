.class Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;
.super Lcom/sec/android/app/sbrowser/web_bluetooth/NoUnderlineClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BluetoothClickableSpan"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLinkType:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/NoUnderlineClickableSpan;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;->mLinkType:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mObserver:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserObserver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$2;->$SwitchMap$com$sec$android$app$sbrowser$web_bluetooth$BluetoothChooserDialog$LinkType:[I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;->mLinkType:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mItemChooserDialog:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->clear()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mObserver:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserObserver;

    invoke-interface {p0}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserObserver;->restartSearch()V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mObserver:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserObserver;

    invoke-interface {v0}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserObserver;->showNeedLocationPermissionLink()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->closeDialog()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mItemChooserDialog:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->setIgnorePendingWindowFocusChangeForClose(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LocationPermissionHelper;->getSystemLocationSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mItemChooserDialog:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->setIgnorePendingWindowFocusChangeForClose(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mActivity:Landroid/app/Activity;

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper$PermissionCallback;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mActivity:Landroid/app/Activity;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper$PermissionCallback;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mObserver:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserObserver;

    invoke-interface {v0}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserObserver;->showBluetoothAdapterOffLink()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->closeDialog()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->a(Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->a(Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mItemChooserDialog:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->signalInitializingAdapter()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mActivity:Landroid/app/Activity;

    const v1, 0x7f140242

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mItemChooserDialog:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->c(Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;)Landroid/text/SpannableString;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->setErrorState(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$BluetoothClickableSpan;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;->mObserver:Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserObserver;

    invoke-interface {p0}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserObserver;->showBluetoothOverviewLink()V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
