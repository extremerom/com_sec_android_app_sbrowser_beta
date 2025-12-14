.class public Lorg/chromium/ui/widget/Toast$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/widget/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAnchoredView:Landroid/view/View;

.field private mBackgroundColor:Ljava/lang/Integer;

.field private final mContext:Landroid/content/Context;

.field private mDuration:I

.field private mPriority:I

.field private mText:Ljava/lang/CharSequence;

.field private mTextAppearance:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/ui/widget/Toast$Builder;->mDuration:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/chromium/ui/widget/Toast$Builder;->mPriority:I

    iput-object p1, p0, Lorg/chromium/ui/widget/Toast$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method private inflateTextView()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lorg/chromium/ui/widget/Toast$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/ui/R$layout;->custom_toast_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/chromium/ui/widget/Toast$Builder;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lorg/chromium/ui/widget/Toast$Builder;->mBackgroundColor:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/ui/widget/Toast$Builder;->mBackgroundColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_1
    iget-object p0, p0, Lorg/chromium/ui/widget/Toast$Builder;->mTextAppearance:Ljava/lang/Integer;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_2
    return-object v0
.end method


# virtual methods
.method public build()Lorg/chromium/ui/widget/Toast;
    .locals 3

    invoke-direct {p0}, Lorg/chromium/ui/widget/Toast$Builder;->inflateTextView()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lorg/chromium/ui/widget/Toast;

    iget-object v2, p0, Lorg/chromium/ui/widget/Toast$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lorg/chromium/ui/widget/Toast;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lorg/chromium/ui/widget/Toast$Builder;->mAnchoredView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/chromium/ui/widget/Toast$Builder;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lorg/chromium/ui/widget/Toast;->a(Lorg/chromium/ui/widget/Toast;Landroid/content/Context;Landroid/view/View;)V

    :cond_0
    iget v0, p0, Lorg/chromium/ui/widget/Toast$Builder;->mDuration:I

    invoke-virtual {v1, v0}, Lorg/chromium/ui/widget/Toast;->setDuration(I)V

    iget v0, p0, Lorg/chromium/ui/widget/Toast$Builder;->mPriority:I

    invoke-virtual {v1, v0}, Lorg/chromium/ui/widget/Toast;->setPriority(I)V

    iget-object p0, p0, Lorg/chromium/ui/widget/Toast$Builder;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, p0}, Lorg/chromium/ui/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method public withDuration(I)Lorg/chromium/ui/widget/Toast$Builder;
    .locals 0

    iput p1, p0, Lorg/chromium/ui/widget/Toast$Builder;->mDuration:I

    return-object p0
.end method

.method public withText(Ljava/lang/CharSequence;)Lorg/chromium/ui/widget/Toast$Builder;
    .locals 0

    iput-object p1, p0, Lorg/chromium/ui/widget/Toast$Builder;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public withTextStringRes(I)Lorg/chromium/ui/widget/Toast$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/chromium/ui/widget/Toast$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/ui/widget/Toast$Builder;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method
