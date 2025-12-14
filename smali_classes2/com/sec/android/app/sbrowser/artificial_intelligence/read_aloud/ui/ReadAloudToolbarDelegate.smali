.class public interface abstract Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->EMPTY:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    return-void
.end method


# virtual methods
.method public canNext()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canPlay()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canPrev()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canTranslate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getArticleTitle(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAvailableLanguages()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBottomBarHeightBasedOnConfiguration()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentArticleIndex()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getCurrentPosition()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSourceLanguage()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupplierType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTargetLanguage()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getToolbarHeight()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getVisibleBottomMargin()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isArticleHomepage()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFromCustomTab()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFromSBrowser()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isListEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isListPage()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMaximized()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMinimized()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isPlaying()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isReadArticlesAloud()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isResultView()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isResultViewInBottomMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isResultViewInFloatingMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isResultViewInSideMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSummaryOnGoing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTranslationEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTranslationOnGoing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTranslationSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public requestTranslate(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler$TranslationResultCallback;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler$TranslationResultCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public setTranslationOnGoing(Z)V
    .locals 0

    return-void
.end method

.method public shouldShowError()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public stopNavigationBarColorUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateTranslateState()V
    .locals 0

    return-void
.end method
