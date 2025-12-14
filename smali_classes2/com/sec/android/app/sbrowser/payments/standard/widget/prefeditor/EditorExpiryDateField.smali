.class public Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldView;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mErrorTextView:Landroid/widget/TextView;

.field private mExpirationMonth:Landroid/widget/EditText;

.field private mExpirationYear:Landroid/widget/EditText;

.field private final mFieldModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

.field private mLabelTextView:Landroid/widget/TextView;

.field private final mLayout:Landroid/view/View;

.field private mMonth:I

.field private mMonthErr:Z

.field private mPresentMonth:I

.field private mPresentYear:I

.field private mYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mMonthErr:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0e0558

    invoke-virtual {v2, v3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mLayout:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mFieldModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mContext:Landroid/content/Context;

    const p1, 0x7f0b065f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mLabelTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const p1, 0x7f0b04af

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mErrorTextView:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mPresentMonth:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    rem-int/lit8 p1, p1, 0x64

    iput p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mPresentYear:I

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getMonth()Ljava/lang/String;

    move-result-object p1

    const v3, 0x7f0b0494

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mExpirationMonth:Landroid/widget/EditText;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mExpirationMonth:Landroid/widget/EditText;

    new-instance v3, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$1;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getYear()Ljava/lang/String;

    move-result-object p1

    const p3, 0x7f0b0495

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mExpirationYear:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->createTextLengthFilter()Landroid/text/InputFilter;

    move-result-object p3

    new-array v0, v0, [Landroid/text/InputFilter;

    aput-object p3, v0, v1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, 0x4

    if-ne p2, p3, :cond_1

    invoke-virtual {p1, v2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mExpirationYear:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mExpirationYear:Landroid/widget/EditText;

    new-instance p2, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$2;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$2;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mExpirationYear:Landroid/widget/EditText;

    new-instance p2, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$3;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$3;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mExpirationMonth:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mExpirationYear:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mExpirationMonth:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$4;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$4;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mErrorTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mExpirationMonth:Landroid/widget/EditText;

    return-object p0
.end method

.method private createTextLengthFilter()Landroid/text/InputFilter;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$5;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$5;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;I)V

    return-object v0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mExpirationYear:Landroid/widget/EditText;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mLabelTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mMonth:I

    return p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mMonthErr:Z

    return p0
.end method

.method private getDpToPx(I)I
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p1, p0

    float-to-double p0, p1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mPresentMonth:I

    return p0
.end method

.method private handleExceptionForExpirationMonth()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mMonthErr:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mContext:Landroid/content/Context;

    const v1, 0x7f140140

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->show(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mLabelTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mContext:Landroid/content/Context;

    const v2, 0x7f0601c3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mExpirationMonth:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mExpirationMonth:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private handleExceptionForExpirationYear(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->show(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mLabelTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mContext:Landroid/content/Context;

    const v1, 0x7f0601c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mExpirationYear:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mExpirationYear:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mPresentYear:I

    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mYear:I

    return p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mMonth:I

    return-void
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mMonthErr:Z

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mYear:I

    return-void
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)I
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->getDpToPx(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->handleExceptionForExpirationMonth()V

    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->handleExceptionForExpirationYear(Ljava/lang/String;Z)V

    return-void
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;Landroid/widget/EditText;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->updateErrorMessage(Landroid/widget/EditText;ZLjava/lang/String;)V

    return-void
.end method

.method private updateErrorMessage(Landroid/widget/EditText;ZLjava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mContext:Landroid/content/Context;

    const v0, 0x7f0601c3

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mErrorTextView:Landroid/widget/TextView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mErrorTextView:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mLabelTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mContext:Landroid/content/Context;

    const p2, 0x7f060836

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getLayout()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mLayout:Landroid/view/View;

    return-object p0
.end method

.method public hide(Landroid/widget/TextView;)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public isValid()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mExpirationMonth:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc

    if-gt v1, v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mFieldModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->setMonth(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mFieldModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mExpirationYear:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->setYearFormatYY(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public scrollToAndFocus()V
    .locals 0

    return-void
.end method

.method public setFocusResetMonth()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mExpirationMonth:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->mExpirationMonth:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public show(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public updateDisplayedError(Z)V
    .locals 0

    return-void
.end method
