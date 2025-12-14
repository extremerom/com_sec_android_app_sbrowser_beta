.class public Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldView;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# static fields
.field private static sObserverForTest:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorObserverForTest;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private mActionIcon:Landroid/widget/ImageView;

.field private mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mEditorDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mEditorFieldModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

.field private mHasFocusedAtLeastOnce:Z

.field private mIconsLayer:Landroid/view/View;

.field private mInput:Landroid/widget/AutoCompleteTextView;

.field private mInputLayout:Lcom/sec/android/app/sbrowser/payments/standard/widget/CustomTextInputLayout;

.field private mIsShowMaximumLengthError:Z

.field private mValueIcon:Landroid/widget/ImageView;

.field private mValueIconId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;Landroid/widget/TextView$OnEditorActionListener;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;Landroid/text/InputFilter;Landroid/text/TextWatcher;)V
    .locals 4
    .param p4    # Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/text/InputFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/text/TextWatcher;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mEditorFieldModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mEditorDialog:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mIsShowMaximumLengthError:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const p4, 0x7f0e055c

    invoke-virtual {p3, p4, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p3, 0x7f0b0d41

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/sec/android/app/sbrowser/payments/standard/widget/CustomTextInputLayout;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mInputLayout:Lcom/sec/android/app/sbrowser/payments/standard/widget/CustomTextInputLayout;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getLabel()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->isRequired()Z

    move-result p4

    if-eqz p4, :cond_0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "*"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_0
    iget-object p4, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mInputLayout:Lcom/sec/android/app/sbrowser/payments/standard/widget/CustomTextInputLayout;

    invoke-virtual {p4, p3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/CustomTextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mInputLayout:Lcom/sec/android/app/sbrowser/payments/standard/widget/CustomTextInputLayout;

    const v2, 0x7f0b0d49

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/AutoCompleteTextView;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mInput:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getValue()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mInput:Landroid/widget/AutoCompleteTextView;

    const-string v2, "disableImage=true"

    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mInput:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p4, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mInput:Landroid/widget/AutoCompleteTextView;

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const p3, 0x7f0b0601

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mIconsLayer:Landroid/view/View;

    new-instance p4, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$1;

    invoke-direct {p4, p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$1;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;)V

    invoke-virtual {p3, p4}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getActionIconAction()Ljava/lang/Runnable;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mIconsLayer:Landroid/view/View;

    const p4, 0x7f0b0061

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mActionIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getActionIconResourceId()I

    move-result p4

    const v2, 0x7f060836

    invoke-static {p1, p4, v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/TintedDrawable;->constructTintedDrawable(Landroid/content/Context;II)Lcom/sec/android/app/sbrowser/payments/standard/widget/TintedDrawable;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mActionIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getActionIconDescriptionForAccessibility()I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mActionIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mActionIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getValueIconGenerator()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorValueIconGenerator;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mIconsLayer:Landroid/view/View;

    const p3, 0x7f0b0e01

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mValueIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mInput:Landroid/widget/AutoCompleteTextView;

    new-instance p3, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$2;

    invoke-direct {p3, p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$2;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mInput:Landroid/widget/AutoCompleteTextView;

    new-instance p3, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$3;

    invoke-direct {p3, p0, p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$3;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;)V

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getSuggestions()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getSuggestions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mInput:Landroid/widget/AutoCompleteTextView;

    new-instance p3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    const v2, 0x1090009

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getSuggestions()Ljava/util/List;

    move-result-object v3

    invoke-direct {p3, p4, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, p3}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mInput:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    :cond_3
    if-eqz p5, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mInput:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->createTextLengthFilter()Landroid/text/InputFilter;

    move-result-object p3

    const/4 p4, 0x2

    new-array p4, p4, [Landroid/text/InputFilter;

    aput-object p3, p4, v1

    aput-object p5, p4, v0

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mInput:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->createTextLengthFilter()Landroid/text/InputFilter;

    move-result-object p3

    new-array p4, v0, [Landroid/text/InputFilter;

    aput-object p3, p4, v1

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    :goto_0
    if-eqz p6, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mInput:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1, p6}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mInput:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p6, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    :cond_5
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getInputTypeHint()I

    move-result p1

    const/16 p2, 0x2071

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mInput:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mInput:Landroid/widget/AutoCompleteTextView;

    const/16 p1, 0x1071

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_1

    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mInput:Landroid/widget/AutoCompleteTextView;

    const/16 p1, 0x2061

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_1

    :pswitch_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mInput:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_1

    :pswitch_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mInput:Landroid/widget/AutoCompleteTextView;

    const/16 p1, 0x21

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_1

    :pswitch_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mInput:Landroid/widget/AutoCompleteTextView;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setInputType(I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mEditorDialog:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mEditorFieldModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mHasFocusedAtLeastOnce:Z

    return p0
.end method

.method private createTextLengthFilter()Landroid/text/InputFilter;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$4;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->getMaximumLength()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$4;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;I)V

    return-object v0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mIconsLayer:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mInput:Landroid/widget/AutoCompleteTextView;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mIsShowMaximumLengthError:Z

    return p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mHasFocusedAtLeastOnce:Z

    return-void
.end method

.method private getMaximumLength()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->getFieldModel()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getInputTypeHint()I

    move-result p0

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    const/16 p0, 0x1f

    return p0

    :cond_0
    const/16 p0, 0x100

    return p0
.end method

.method private getMaximumLengthErrorMessage()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->getFieldModel()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getInputTypeHint()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f14013f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f140677

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mIsShowMaximumLengthError:Z

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->updateFieldValueIcon(Z)V

    return-void
.end method

.method public static bridge synthetic j()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorObserverForTest;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->sObserverForTest:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorObserverForTest;

    return-object v0
.end method

.method public static setEditorObserverForTest(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorObserverForTest;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sput-object p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->sObserverForTest:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorObserverForTest;

    return-void
.end method

.method private translationIconLayer()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mValueIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c02

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mInputLayout:Lcom/sec/android/app/sbrowser/payments/standard/widget/CustomTextInputLayout;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mInput:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v2, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mInput:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mIconsLayer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mIconsLayer:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private updateFieldValueIcon(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mValueIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mEditorFieldModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getValueIconGenerator()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorValueIconGenerator;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mInput:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorValueIconGenerator;->getIconResourceId(Ljava/lang/CharSequence;)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mValueIconId:I

    if-ne v1, v0, :cond_1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iput v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mValueIconId:I

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mValueIcon:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mValueIcon:Landroid/widget/ImageView;

    const v0, 0x7f0804ba

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mValueIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mValueIconId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mValueIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->translationIconLayer()V

    return-void
.end method


# virtual methods
.method public getEditText()Landroid/widget/AutoCompleteTextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mInput:Landroid/widget/AutoCompleteTextView;

    return-object p0
.end method

.method public getFieldModel()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mEditorFieldModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    return-object p0
.end method

.method public isValid()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mEditorFieldModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->isValid()Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mEditorFieldModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getActionIconAction()Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->translationIconLayer()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->updateFieldValueIcon(Z)V

    :cond_0
    return-void
.end method

.method public scrollToAndFocus()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p0}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public updateDisplayedError(Z)V
    .locals 0

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mIsShowMaximumLengthError:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mInputLayout:Lcom/sec/android/app/sbrowser/payments/standard/widget/CustomTextInputLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/CustomTextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mIsShowMaximumLengthError:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mInputLayout:Lcom/sec/android/app/sbrowser/payments/standard/widget/CustomTextInputLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->getMaximumLengthErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/CustomTextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mInputLayout:Lcom/sec/android/app/sbrowser/payments/standard/widget/CustomTextInputLayout;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->mEditorFieldModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getErrorMessage()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/CustomTextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
