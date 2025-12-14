.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageSpinner;
.super Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageSpinner$Delegate;
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageSpinner$Delegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private isMoreLanguageItem(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public setDelegate(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageSpinner$Delegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageSpinner;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageSpinner$Delegate;

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageSpinner;->isMoreLanguageItem(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageSpinner;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageSpinner$Delegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageSpinner$Delegate;->onMoreLanguageItemSelected()V

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void
.end method

.method public setSelection(IZ)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageSpinner;->isMoreLanguageItem(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageSpinner;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageSpinner$Delegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageSpinner$Delegate;->onMoreLanguageItemSelected()V

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    return-void
.end method
