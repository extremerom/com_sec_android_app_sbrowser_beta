.class public Lorg/chromium/components/autofill/AutofillSelectionMenuItemHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mAutofillMenuItemTitle:I

.field private final mAutofillProvider:Lorg/chromium/components/autofill/AutofillProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/components/autofill/AutofillProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/chromium/components/autofill/AutofillSelectionMenuItemHelper;->mAutofillProvider:Lorg/chromium/components/autofill/AutofillProvider;

    const p1, 0x104001a

    iput p1, p0, Lorg/chromium/components/autofill/AutofillSelectionMenuItemHelper;->mAutofillMenuItemTitle:I

    return-void
.end method

.method public static synthetic a(Lorg/chromium/components/autofill/AutofillSelectionMenuItemHelper;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/autofill/AutofillSelectionMenuItemHelper;->lambda$getAdditionalItems$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$getAdditionalItems$0(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillSelectionMenuItemHelper;->mAutofillProvider:Lorg/chromium/components/autofill/AutofillProvider;

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillProvider;->queryAutofillSuggestion()V

    return-void
.end method


# virtual methods
.method public getAdditionalItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/chromium/content_public/browser/SelectionMenuItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lorg/chromium/components/autofill/AutofillSelectionMenuItemHelper;->mAutofillMenuItemTitle:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/components/autofill/AutofillSelectionMenuItemHelper;->mAutofillProvider:Lorg/chromium/components/autofill/AutofillProvider;

    invoke-virtual {v1}, Lorg/chromium/components/autofill/AutofillProvider;->shouldQueryAutofillSuggestion()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    iget v2, p0, Lorg/chromium/components/autofill/AutofillSelectionMenuItemHelper;->mAutofillMenuItemTitle:I

    invoke-direct {v1, v2}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;-><init>(I)V

    const v2, 0x1020043

    invoke-virtual {v1, v2}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setId(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v1

    const/high16 v2, 0x30000

    invoke-virtual {v1, v2}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setOrderInCategory(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setShowAsActionFlags(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/save_image/d;

    const/16 v3, 0x13

    invoke-direct {v2, v3, p0}, Lcom/sec/android/app/sbrowser/save_image/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->setClickListener(Landroid/view/View$OnClickListener;)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->build()Lorg/chromium/content_public/browser/SelectionMenuItem;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object v0
.end method
