.class Lcom/sec/android/app/sbrowser/webapp/WebappSplashController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mSplashScreen:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/webapp/WebappSplashController;Landroid/app/Activity;ILcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/webapp/WebappSplashController;->lambda$buildSplashScreen$0(Landroid/app/Activity;ILcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/webapp/WebappSplashController;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/webapp/WebappSplashController;->lambda$hideSplashScreen$1(Landroid/app/Activity;)V

    return-void
.end method

.method private getLayoutId(Landroid/content/Context;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;Landroid/graphics/Bitmap;)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0716f3

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->isIconGenerated()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    if-le p1, p0, :cond_2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-gt p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const p0, 0x7f0e0915

    goto :goto_2

    :cond_2
    :goto_0
    const p0, 0x7f0e0917

    goto :goto_2

    :cond_3
    :goto_1
    const p0, 0x7f0e0916

    :goto_2
    return p0
.end method

.method private initializeSplashScreenWidgets(Landroid/content/Context;ILandroid/graphics/Bitmap;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;)V
    .locals 3

    if-nez p3, :cond_0

    invoke-virtual {p4}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->icon()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;->bitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->icon()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;->bitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0, p1, p4, p3}, Lcom/sec/android/app/sbrowser/webapp/WebappSplashController;->getLayoutId(Landroid/content/Context;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;Landroid/graphics/Bitmap;)I

    move-result v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappSplashController;->mSplashScreen:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const v0, 0x7f0b0e43

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0e41

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p4}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->name()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p0, :cond_1

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/webapp/WebappUtil;->shoudUseLightForegroundOnBackground(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f060de0

    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$buildSplashScreen$0(Landroid/app/Activity;ILcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/sec/android/app/sbrowser/webapp/WebappSplashController;->initializeSplashScreenWidgets(Landroid/content/Context;ILandroid/graphics/Bitmap;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;)V

    return-void
.end method

.method private synthetic lambda$hideSplashScreen$1(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/webapp/WebappSplashController;->removeSplashScreen(Landroid/app/Activity;)V

    return-void
.end method

.method private removeSplashScreen(Landroid/app/Activity;)V
    .locals 1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappSplashController;->mSplashScreen:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/webapp/WebappSplashController;->mSplashScreen:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public buildSplashScreen(Landroid/app/Activity;Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;)V
    .locals 3
    .param p2    # Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->create(Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;)Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    move-result-object p2

    const v0, 0x7f060dde

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->backgroundColor(I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/webapp/WebappUtil;->getOpaqueColor(I)I

    move-result v0

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/webapp/WebappSplashController;->mSplashScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const v1, 0x1020002

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/webapp/WebappSplashController;->mSplashScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->open(Ljava/lang/String;)Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/webapp/f;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/webapp/f;-><init>(Lcom/sec/android/app/sbrowser/webapp/WebappSplashController;Landroid/app/Activity;ILcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;)V

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->getSplashScreenImage(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$FetchCallback;)V

    return-void
.end method

.method public hideSplashScreen(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappSplashController;->mSplashScreen:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/webapp/e;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/webapp/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
