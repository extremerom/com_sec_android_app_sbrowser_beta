.class public Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageDelegate;

.field private mFindOnPageKeyword:Ljava/lang/String;

.field private mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

.field private final mListener:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageDelegate;Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageListener;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageDelegate;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->mListener:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageListener;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;)Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageDelegate;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->mFindOnPageKeyword:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;)Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->mListener:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageListener;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->mFindOnPageKeyword:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public finishFindOnPage()V
    .locals 2

    const-string v0, "CustomTabFindOnPage"

    const-string v1, "finishFindOnPage()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->hide()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->mListener:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageListener;->onFindToolbarHidden()V

    return-void
.end method

.method public isShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onVoiceRecognizerResult(Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->onVoiceRecognizerResult(Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;)V

    return-void
.end method

.method public setFindResult(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->setFindResult(II)V

    return-void
.end method

.method public startFindOnPage(Ljava/lang/String;)V
    .locals 4

    const-string v0, "CustomTabFindOnPage"

    const-string v1, "startFindOnPage()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0e0218

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage$1;-><init>(Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->setListener(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage$2;-><init>(Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->notifyBackgroundColorChanged()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->mActivity:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->updateToolbarBtn()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->mFindOnPageToolbar:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->show(Landroid/view/ViewGroup;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->mListener:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageListener;->onFindToolbarShown()V

    return-void
.end method
