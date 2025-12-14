.class public final Lorg/chromium/content_public/browser/SelectionMenuItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/chromium/content_public/browser/SelectionMenuItem;",
        ">;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field public final alphabeticShortcut:Ljava/lang/Character;

.field public final clickListener:Landroid/view/View$OnClickListener;

.field public final contentDescription:Ljava/lang/CharSequence;

.field public final id:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field public final intent:Landroid/content/Intent;

.field public final isEnabled:Z

.field public final isIconTintable:Z

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconAttr:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field private final mTitle:Ljava/lang/CharSequence;

.field private final mTitleRes:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field public final orderInCategory:I

.field public final showAsActionFlags:I


# direct methods
.method private constructor <init>(IILandroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;Ljava/lang/Character;IILjava/lang/CharSequence;Landroid/view/View$OnClickListener;Landroid/content/Intent;ZZ)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/chromium/content_public/browser/SelectionMenuItem;->mIconAttr:I

    iput-object p3, p0, Lorg/chromium/content_public/browser/SelectionMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    iput p4, p0, Lorg/chromium/content_public/browser/SelectionMenuItem;->mTitleRes:I

    iput-object p5, p0, Lorg/chromium/content_public/browser/SelectionMenuItem;->mTitle:Ljava/lang/CharSequence;

    iput p1, p0, Lorg/chromium/content_public/browser/SelectionMenuItem;->id:I

    iput-object p6, p0, Lorg/chromium/content_public/browser/SelectionMenuItem;->alphabeticShortcut:Ljava/lang/Character;

    iput p7, p0, Lorg/chromium/content_public/browser/SelectionMenuItem;->orderInCategory:I

    iput p8, p0, Lorg/chromium/content_public/browser/SelectionMenuItem;->showAsActionFlags:I

    iput-object p9, p0, Lorg/chromium/content_public/browser/SelectionMenuItem;->contentDescription:Ljava/lang/CharSequence;

    iput-object p10, p0, Lorg/chromium/content_public/browser/SelectionMenuItem;->clickListener:Landroid/view/View$OnClickListener;

    iput-object p11, p0, Lorg/chromium/content_public/browser/SelectionMenuItem;->intent:Landroid/content/Intent;

    iput-boolean p12, p0, Lorg/chromium/content_public/browser/SelectionMenuItem;->isEnabled:Z

    iput-boolean p13, p0, Lorg/chromium/content_public/browser/SelectionMenuItem;->isIconTintable:Z

    return-void
.end method

.method public synthetic constructor <init>(IILandroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;Ljava/lang/Character;IILjava/lang/CharSequence;Landroid/view/View$OnClickListener;Landroid/content/Intent;ZZI)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Lorg/chromium/content_public/browser/SelectionMenuItem;-><init>(IILandroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;Ljava/lang/Character;IILjava/lang/CharSequence;Landroid/view/View$OnClickListener;Landroid/content/Intent;ZZ)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/chromium/content_public/browser/SelectionMenuItem;

    invoke-virtual {p0, p1}, Lorg/chromium/content_public/browser/SelectionMenuItem;->compareTo(Lorg/chromium/content_public/browser/SelectionMenuItem;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/chromium/content_public/browser/SelectionMenuItem;)I
    .locals 0

    iget p0, p0, Lorg/chromium/content_public/browser/SelectionMenuItem;->orderInCategory:I

    iget p1, p1, Lorg/chromium/content_public/browser/SelectionMenuItem;->orderInCategory:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget v0, p0, Lorg/chromium/content_public/browser/SelectionMenuItem;->mIconAttr:I

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    :try_start_0
    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-nez v1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    invoke-static {v1, p1}, Ll5/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/chromium/content_public/browser/SelectionMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    iget v0, p0, Lorg/chromium/content_public/browser/SelectionMenuItem;->mTitleRes:I

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/chromium/content_public/browser/SelectionMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method
