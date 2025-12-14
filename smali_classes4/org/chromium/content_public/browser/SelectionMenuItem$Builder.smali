.class public Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content_public/browser/SelectionMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAlphabeticShortcut:Ljava/lang/Character;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconAttr:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field public mId:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private mIntent:Landroid/content/Intent;

.field private mIsEnabled:Z

.field private mIsIconTintable:Z

.field private mOrderInCategory:I

.field private mShowAsActionFlags:I

.field private final mTitle:Ljava/lang/CharSequence;

.field private final mTitleRes:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mTitleRes:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->initDefaults()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mTitle:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput p1, p0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mTitleRes:I

    invoke-direct {p0}, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->initDefaults()V

    return-void
.end method

.method private initDefaults()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mId:I

    iput v0, p0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mIconAttr:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mAlphabeticShortcut:Ljava/lang/Character;

    iput v0, p0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mOrderInCategory:I

    iput v0, p0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mShowAsActionFlags:I

    iput-object v1, p0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mContentDescription:Ljava/lang/CharSequence;

    iput-object v1, p0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mClickListener:Landroid/view/View$OnClickListener;

    iput-object v1, p0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mIsEnabled:Z

    iput-boolean v0, p0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mIsIconTintable:Z

    return-void
.end method


# virtual methods
.method public build()Lorg/chromium/content_public/browser/SelectionMenuItem;
    .locals 16

    move-object/from16 v0, p0

    new-instance v15, Lorg/chromium/content_public/browser/SelectionMenuItem;

    iget v1, v0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mId:I

    iget v2, v0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mIconAttr:I

    iget-object v3, v0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    iget v4, v0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mTitleRes:I

    iget-object v5, v0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v6, v0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mAlphabeticShortcut:Ljava/lang/Character;

    iget v7, v0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mOrderInCategory:I

    iget v8, v0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mShowAsActionFlags:I

    iget-object v9, v0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mContentDescription:Ljava/lang/CharSequence;

    iget-object v10, v0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mClickListener:Landroid/view/View$OnClickListener;

    iget-object v11, v0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mIntent:Landroid/content/Intent;

    iget-boolean v12, v0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mIsEnabled:Z

    iget-boolean v13, v0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mIsIconTintable:Z

    const/4 v14, 0x0

    move-object v0, v15

    invoke-direct/range {v0 .. v14}, Lorg/chromium/content_public/browser/SelectionMenuItem;-><init>(IILandroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;Ljava/lang/Character;IILjava/lang/CharSequence;Landroid/view/View$OnClickListener;Landroid/content/Intent;ZZI)V

    return-object v15
.end method

.method public setAlphabeticShortcut(Ljava/lang/Character;)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;
    .locals 0

    iput-object p1, p0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mAlphabeticShortcut:Ljava/lang/Character;

    return-object p0
.end method

.method public setClickListener(Landroid/view/View$OnClickListener;)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;
    .locals 0

    iput-object p1, p0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;
    .locals 0

    iput-object p1, p0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;
    .locals 0

    iput-object p1, p0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIconAttr(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    iput p1, p0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mIconAttr:I

    return-object p0
.end method

.method public setId(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    iput p1, p0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mId:I

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;
    .locals 0

    iput-object p1, p0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public setIsEnabled(Z)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mIsEnabled:Z

    return-object p0
.end method

.method public setIsIconTintable(Z)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mIsIconTintable:Z

    return-object p0
.end method

.method public setOrderInCategory(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mOrderInCategory:I

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid order in category. Must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setShowAsActionFlags(I)Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;
    .locals 0

    iput p1, p0, Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;->mShowAsActionFlags:I

    return-object p0
.end method
