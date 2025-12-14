.class Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/parental_control/ParentalControl$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage$1;->this$0:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage$1;->lambda$onSuccess$0()V

    return-void
.end method

.method private synthetic lambda$onSuccess$0()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage$1;->this$0:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mAskPermissionButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage$1;->this$0:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mEnterPasswordButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage$1;->this$0:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mTitleView:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1408a5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage$1;->this$0:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mDescriptionView:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage$1;->this$0:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mTab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getParentalControlBlockedUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v2, 0x7f14089f

    invoke-virtual {v0, v2, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onDuplicateRequest()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage$1;->this$0:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1408a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onFailed()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage$1;->this$0:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1408a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/parental_control/k;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/parental_control/k;-><init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
