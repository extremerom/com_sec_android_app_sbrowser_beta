.class public Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;
.super Landroid/app/AlertDialog;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/embedder_support/delegate/OnColorChangedListener;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mChosenColor:Landroid/view/View;

.field private mChosenColorContainer:Landroid/widget/LinearLayout;

.field private mCustomColorPickedCallback:Lorg/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomView:Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;

.field private mDialogContent:Landroid/view/View;

.field private mDialogDismissedCallback:Lorg/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMakeChoiceCallback:Lorg/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionsView:Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionsView;

.field private mViewSwitchedCallback:Lorg/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mViewSwitcher:Lorg/chromium/ui/widget/ButtonCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    sget v0, Lorg/chromium/components/embedder_support/delegate/R$layout;->color_picker_dialog_view:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/chromium/ui/LayoutInflaterUtils;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mDialogContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    sget v0, Lorg/chromium/components/embedder_support/delegate/R$string;->color_picker_dialog_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mDialogContent:Landroid/view/View;

    sget v1, Lorg/chromium/components/embedder_support/delegate/R$id;->color_picker_suggestions_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionsView;

    iput-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mSuggestionsView:Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionsView;

    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mDialogContent:Landroid/view/View;

    sget v1, Lorg/chromium/components/embedder_support/delegate/R$id;->color_picker_dialog_chosen_color_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mChosenColor:Landroid/view/View;

    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mDialogContent:Landroid/view/View;

    sget v1, Lorg/chromium/components/embedder_support/delegate/R$id;->color_picker_dialog_chosen_color_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mChosenColorContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mDialogContent:Landroid/view/View;

    sget v1, Lorg/chromium/components/embedder_support/delegate/R$id;->color_picker_custom_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;

    iput-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mCustomView:Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;

    invoke-virtual {v0, p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->setListener(Lorg/chromium/components/embedder_support/delegate/OnColorChangedListener;)V

    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mDialogContent:Landroid/view/View;

    sget v1, Lorg/chromium/components/embedder_support/delegate/R$id;->color_picker_view_switcher_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/widget/ButtonCompat;

    iput-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mViewSwitcher:Lorg/chromium/ui/widget/ButtonCompat;

    new-instance v1, Lcom/sec/android/app/sbrowser/save_image/d;

    const/16 v2, 0x14

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/save_image/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lorg/chromium/components/embedder_support/delegate/R$string;->color_picker_button_set:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/chromium/components/embedder_support/delegate/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/chromium/components/embedder_support/delegate/d;-><init>(Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;I)V

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    sget v0, Lorg/chromium/components/embedder_support/delegate/R$string;->color_picker_button_cancel:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/chromium/components/embedder_support/delegate/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/chromium/components/embedder_support/delegate/d;-><init>(Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;I)V

    const/4 v1, -0x2

    invoke-virtual {p0, v1, p1, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/common/utils/e;

    const/4 v0, 0x3

    invoke-direct {p1, v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public static synthetic a(Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->lambda$new$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->lambda$new$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->lambda$new$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mViewSwitchedCallback:Lorg/chromium/base/Callback;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/base/Callback;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mMakeChoiceCallback:Lorg/chromium/base/Callback;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/base/Callback;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mMakeChoiceCallback:Lorg/chromium/base/Callback;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/base/Callback;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mDialogDismissedCallback:Lorg/chromium/base/Callback;

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/base/Callback;

    iget-object p0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mChosenColor:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mDialogContent:Landroid/view/View;

    return-object p0
.end method

.method public onColorChanged(I)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mCustomColorPickedCallback:Lorg/chromium/base/Callback;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mCustomColorPickedCallback:Lorg/chromium/base/Callback;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method public setColor(I)V
    .locals 3

    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mChosenColor:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const v0, 0xffffff

    and-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "#%06X"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mChosenColorContainer:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v2, Lorg/chromium/components/embedder_support/delegate/R$string;->color_picker_label_chosen_color:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCustomColorPickedCallback(Lorg/chromium/base/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mCustomColorPickedCallback:Lorg/chromium/base/Callback;

    return-void
.end method

.method public setDialogDismissedCallback(Lorg/chromium/base/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mDialogDismissedCallback:Lorg/chromium/base/Callback;

    return-void
.end method

.method public setMakeChoiceCallback(Lorg/chromium/base/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mMakeChoiceCallback:Lorg/chromium/base/Callback;

    return-void
.end method

.method public setNumberOfColumns(I)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mSuggestionsView:Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionsView;

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    return-void
.end method

.method public setSuggestionsAdapter(Lorg/chromium/ui/modelutil/ModelListAdapter;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mSuggestionsView:Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionsView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mSuggestionsView:Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionsView;

    new-instance v1, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView$1;

    invoke-direct {v1, p0, p1}, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView$1;-><init>(Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;Lorg/chromium/ui/modelutil/ModelListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public setViewSwitchedCallback(Lorg/chromium/base/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mViewSwitchedCallback:Lorg/chromium/base/Callback;

    return-void
.end method

.method public switchViewType(Z)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mViewSwitcher:Lorg/chromium/ui/widget/ButtonCompat;

    sget v2, Lorg/chromium/components/embedder_support/delegate/R$string;->color_picker_button_suggestions:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mSuggestionsView:Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionsView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mCustomView:Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mViewSwitcher:Lorg/chromium/ui/widget/ButtonCompat;

    sget v2, Lorg/chromium/components/embedder_support/delegate/R$string;->color_picker_button_custom:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mSuggestionsView:Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionsView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->mCustomView:Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
