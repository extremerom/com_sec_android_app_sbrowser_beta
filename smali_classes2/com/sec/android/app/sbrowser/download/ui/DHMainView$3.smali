.class Lcom/sec/android/app/sbrowser/download/ui/DHMainView$3;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->getFilterArrayAdaptor(I)Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/ui/DHMainView;

.field final synthetic val$isRTL:Z

.field final synthetic val$mCheckDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/DHMainView;Landroid/content/Context;ILjava/util/List;ZLandroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHMainView;

    iput-boolean p5, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$3;->val$isRTL:Z

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$3;->val$mCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0b045a

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckedTextView;

    if-eqz p3, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f08016f

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHMainView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getCurrentFilterType()I

    move-result v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$3;->val$isRTL:Z

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$3;->val$mCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v1, v1, p0, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$3;->val$mCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/4 p0, 0x1

    invoke-virtual {p3, v1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p3, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const p0, 0x7f1502ec

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setTextAppearance(I)V

    :goto_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEasyModeForSystemWindow()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "sec-roboto-condensed"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    return-object p2
.end method
