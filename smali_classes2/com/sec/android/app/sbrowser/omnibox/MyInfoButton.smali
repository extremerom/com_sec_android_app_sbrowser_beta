.class public Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;
.super Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;
.source "SourceFile"


# instance fields
.field private mIsDefaultIconShowing:Z

.field private mMyInfoButtonColor:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->lambda$getMyInfoButton$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->lambda$getMyInfoButton$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->mIsDefaultIconShowing:Z

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;)Landroid/widget/ImageButton;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->getMyInfoButton()Landroid/widget/ImageButton;

    move-result-object p0

    return-object p0
.end method

.method private getMyInfoButton()Landroid/widget/ImageButton;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mParent:Landroid/view/View;

    const v1, 0x7f0b07c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    const v1, 0x7f0802c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->getRightButtonKeyListener()Landroid/view/View$OnKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    new-instance v1, LK6/a;

    const/16 v2, 0x10

    invoke-direct {v1, v2, p0}, LK6/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->mIsDefaultIconShowing:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->updateButtonColor()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->getInstance()Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->getSamsungAccountSignInStatusLiveData()Landroidx/lifecycle/S;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    check-cast v1, Landroidx/lifecycle/J;

    new-instance v2, Landroidx/lifecycle/q;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0}, Landroidx/lifecycle/q;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method private synthetic lambda$getMyInfoButton$0(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSepLite()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->hasAccount()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->updateSAProfileImageUrl()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.samsungaccount.action.OPEN_SASETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$getMyInfoButton$1(Ljava/lang/Boolean;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getMyInfoButton isSignedIn: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MyInfoButton"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->setMyInfoButtonVisibility(I)V

    return-void
.end method

.method private loadAccountImage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070745

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->getMyInfoButton()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/l;->a()Lcom/bumptech/glide/j;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/j;->D(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Lh4/a;->g(II)Lh4/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LZ3/n;->c:LZ3/n;

    new-instance v1, LZ3/j;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v0, v1}, Lh4/a;->s(LZ3/n;LZ3/e;)Lh4/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    new-instance v0, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton$1;-><init>(Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;)V

    sget-object p0, Ll4/f;->a:LR5/n;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p1, p0}, Lcom/bumptech/glide/j;->A(Li4/d;Lh4/f;Lh4/a;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private setDefaultImage()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->getMyInfoButton()Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0802c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->updateButtonColor()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->getMyInfoButton()Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->mUrl:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->mIsDefaultIconShowing:Z

    return-void
.end method

.method private shouldShowMyInfoButton()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->checkSamsungAccountProfileSupportVersion()Z

    move-result v0

    const-string v2, "MyInfoButton"

    if-nez v0, :cond_1

    const-string p0, "Samsung Account profile not supported"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->isSamsungAccountSettingsSupported()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "Samsung Account settings not supported"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNativePage()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isUnifiedHomepageUrl()Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method private updateContentDescription()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->hasAccount()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f14068b

    goto :goto_0

    :cond_0
    const v1, 0x7f14068c

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->getMyInfoButton()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->getMyInfoButton()Landroid/widget/ImageButton;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method private updateSAProfileImageUrl()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->getSamsungAccountProfileImageUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MyInfoButton"

    const-string v2, "updateSAProfileImageUrl"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->mIsDefaultIconShowing:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->setDefaultImage()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->mIsDefaultIconShowing:Z

    if-eqz v1, :cond_2

    :cond_1
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->loadAccountImage(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public setButtonResource()V
    .locals 0

    return-void
.end method

.method public setMyInfoButtonVisibility(I)V
    .locals 2

    const-string v0, "setMyInfoButtonVisibility: "

    const-string v1, "MyInfoButton"

    invoke-static {p1, v0, v1}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->shouldShowMyInfoButton()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSepLite()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->hasAccount()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "setMyInfoButtonVisibility already signed in"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->updateSAProfileImageUrl()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->mUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->mIsDefaultIconShowing:Z

    if-nez p1, :cond_3

    :cond_2
    const-string p1, "setMyInfoButtonVisibility logged out"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->setDefaultImage()V

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->getMyInfoButton()Landroid/widget/ImageButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->updateContentDescription()V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_5

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public updateButtonColor()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->mIsDefaultIconShowing:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->mMyInfoButtonColor:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getIconColor()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->mMyInfoButtonColor:I

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getIconBackground()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method
