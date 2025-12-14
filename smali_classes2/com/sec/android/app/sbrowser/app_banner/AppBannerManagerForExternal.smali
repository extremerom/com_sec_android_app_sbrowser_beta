.class public Lcom/sec/android/app/sbrowser/app_banner/AppBannerManagerForExternal;
.super Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;
.source "SourceFile"


# instance fields
.field private mSnackbar:LH6/o;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/terrace/Terrace;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;Landroid/view/View;Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager$AppBannerDelegate;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;-><init>(Landroid/content/Context;Lcom/sec/terrace/Terrace;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager$AppBannerDelegate;)V

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManagerForExternal;->mView:Landroid/view/View;

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/app_banner/AppBannerManagerForExternal;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManagerForExternal;->lambda$processAppBannerIfRequired$0(ILandroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$processAppBannerIfRequired$0(ILandroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->getWebappInfo()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->source()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->addShortcut(II)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManagerForExternal;->mSnackbar:LH6/o;

    if-eqz v0, :cond_1

    iget-object v0, v0, LH6/m;->i:LH6/l;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManagerForExternal;->mSnackbar:LH6/o;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LH6/m;->b(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManagerForExternal;->mSnackbar:LH6/o;

    :cond_1
    :goto_0
    return-void
.end method

.method public isSupportAppBanner(I)Z
    .locals 0

    const/4 p0, 0x5

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public processAppBannerIfRequired(Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManagerForExternal;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1410e8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p1

    new-instance v0, Laa/a;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p0}, Laa/a;-><init>(IILjava/lang/Object;)V

    const p2, 0x7f1410e5

    invoke-virtual {p1, p2, v0}, LH6/o;->j(ILandroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManagerForExternal;->mSnackbar:LH6/o;

    invoke-virtual {p1}, LH6/o;->l()V

    :cond_1
    :goto_0
    return-void
.end method
