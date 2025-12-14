.class public Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogImpl;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mActivity:Lcom/sec/terrace/TerraceActivity;

.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Lcom/sec/terrace/browser/password_manager/TerraceCredential;",
            ">;"
        }
    .end annotation
.end field

.field private mClient:Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogClient;

.field private mCredential:Lcom/sec/terrace/browser/password_manager/TerraceCredential;

.field private mCredentials:[Lcom/sec/terrace/browser/password_manager/TerraceCredential;

.field private mDialog:Lm/l;

.field private mIsDestroyed:Z

.field private mWasDismissedByNative:Z


# direct methods
.method public constructor <init>(Lcom/sec/terrace/TerraceActivity;Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogClient;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mActivity:Lcom/sec/terrace/TerraceActivity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mClient:Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogClient;

    invoke-interface {p2, p0}, Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogClient;->setAccountChooserDialogImpl(Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogImpl;)V

    invoke-interface {p2}, Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogClient;->getCredentials()[Lcom/sec/terrace/browser/password_manager/TerraceCredential;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mCredentials:[Lcom/sec/terrace/browser/password_manager/TerraceCredential;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/sec/terrace/browser/password_manager/TerraceCredential;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/terrace/browser/password_manager/TerraceCredential;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/terrace/browser/password_manager/TerraceCredential;->getIndex()I

    move-result v2

    invoke-virtual {v1}, Lcom/sec/terrace/browser/password_manager/TerraceCredential;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->fetchAvatar(ILjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->lambda$show$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;)Lcom/sec/terrace/TerraceActivity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mActivity:Lcom/sec/terrace/TerraceActivity;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;)[Lcom/sec/terrace/browser/password_manager/TerraceCredential;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mCredentials:[Lcom/sec/terrace/browser/password_manager/TerraceCredential;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;)Lm/l;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mDialog:Lm/l;

    return-object p0
.end method

.method private destroy()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mIsDestroyed:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mIsDestroyed:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mClient:Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogClient;

    invoke-interface {v0}, Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogClient;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mClient:Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogClient;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mDialog:Lm/l;

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mIsDestroyed:Z

    return p0
.end method

.method private fetchAvatar(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog$2;-><init>(Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;Ljava/lang/String;I)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private generateAccountsArrayAdapter()Landroid/widget/ArrayAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter<",
            "Lcom/sec/terrace/browser/password_manager/TerraceCredential;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog$1;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mActivity:Lcom/sec/terrace/TerraceActivity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mCredentials:[Lcom/sec/terrace/browser/password_manager/TerraceCredential;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog$1;-><init>(Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;Landroid/content/Context;I[Lcom/sec/terrace/browser/password_manager/TerraceCredential;)V

    return-object v0
.end method

.method private lambda$show$0(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mCredentials:[Lcom/sec/terrace/browser/password_manager/TerraceCredential;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mDialog:Lm/l;

    iget-object v0, v0, Lm/l;->f:Lm/j;

    iget-object v0, v0, Lm/j;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p2, v0

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mCredential:Lcom/sec/terrace/browser/password_manager/TerraceCredential;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    const-string v0, "AccountChooserDialog"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mWasDismissedByNative:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mDialog:Lm/l;

    invoke-virtual {p0}, Lm/y;->dismiss()V

    return-void
.end method

.method public makeRoundAvatar(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const v4, 0x7f080384

    invoke-static {p1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v2, v2, p3, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v4, p0, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2, v2, p3, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, p2, p0, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p1, "AccountChooserDialog"

    const-string v0, "onClick"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mCredentials:[Lcom/sec/terrace/browser/password_manager/TerraceCredential;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mCredential:Lcom/sec/terrace/browser/password_manager/TerraceCredential;

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "AccountChooserDialog"

    const-string v0, "onDismiss"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mWasDismissedByNative:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mCredential:Lcom/sec/terrace/browser/password_manager/TerraceCredential;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mClient:Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogClient;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/password_manager/TerraceCredential;->getIndex()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogClient;->onCredentialClicked(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mClient:Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogClient;

    invoke-interface {p1}, Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogClient;->onCancelDialog()V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->destroy()V

    return-void
.end method

.method public show()V
    .locals 6

    const-string v0, "AccountChooserDialog"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e000b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->generateAccountsArrayAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mAdapter:Landroid/widget/ArrayAdapter;

    new-instance v1, Lm/k;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mActivity:Lcom/sec/terrace/TerraceActivity;

    const v4, 0x7f1501c5

    invoke-direct {v1, v3, v4}, Lm/k;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f14004a

    invoke-virtual {v1, v3}, Lm/k;->e(I)V

    const v3, 0x7f1402c1

    invoke-virtual {v1, v3, p0}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mAdapter:Landroid/widget/ArrayAdapter;

    new-instance v4, Lcom/sec/android/app/sbrowser/appshortcut/b;

    const/4 v5, 0x7

    invoke-direct {v4, v5, p0}, Lcom/sec/android/app/sbrowser/appshortcut/b;-><init>(ILjava/lang/Object;)V

    iget-object v5, v1, Lm/k;->a:Lm/h;

    iput-object v3, v5, Lm/h;->r:Landroid/widget/ListAdapter;

    iput-object v4, v5, Lm/h;->s:Landroid/content/DialogInterface$OnClickListener;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mCredentials:[Lcom/sec/terrace/browser/password_manager/TerraceCredential;

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const v3, 0x7f140047

    invoke-virtual {v1, v3, p0}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    :cond_0
    invoke-virtual {v1}, Lm/k;->create()Lm/l;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mDialog:Lm/l;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-virtual {v1}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07001f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-virtual {v3}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-virtual {v4}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07001c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mDialog:Lm/l;

    iget-object v5, v5, Lm/l;->f:Lm/j;

    iget-object v5, v5, Lm/j;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    invoke-virtual {v5, v1, v3, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mDialog:Lm/l;

    iget-object v1, v1, Lm/l;->f:Lm/j;

    iget-object v1, v1, Lm/j;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mDialog:Lm/l;

    const v1, 0x7f0b01ec

    invoke-virtual {v0, v1}, Lm/y;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-virtual {v1}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mDialog:Lm/l;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->mDialog:Lm/l;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
