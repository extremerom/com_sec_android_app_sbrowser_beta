.class public abstract Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0008\'\u0018\u0000 =2\u00020\u0001:\u0001=B\u0011\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J/\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH&\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH&\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u000eH&\u00a2\u0006\u0004\u0008\u0012\u0010\u0010J\u0017\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0019\u0010\u001c\u001a\u00020\u000b2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0019\u0010\u001f\u001a\u00020\u000b2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001eH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u001a\u0010#\u001a\u00020\u00132\u0008\u0010\"\u001a\u0004\u0018\u00010!H\u0096\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008%\u0010\u0010R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010&R\u001a\u0010(\u001a\u00020\'8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+R\u0014\u0010-\u001a\u00020,8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0018\u0010/\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0018\u00101\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u0016\u00103\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0016\u00105\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00104R$\u00107\u001a\u00020\u00132\u0006\u00106\u001a\u00020\u00138V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010\u0016R$\u0010;\u001a\u00020\u00132\u0006\u0010:\u001a\u00020\u00138V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008;\u00108\"\u0004\u0008<\u0010\u0016\u00a8\u0006>"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;",
        "Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;",
        "Landroid/app/Activity;",
        "mActivity",
        "<init>",
        "(Landroid/app/Activity;)V",
        "",
        "buttonScale",
        "animScale",
        "buttonAlpha",
        "animAlpha",
        "Ldb/r;",
        "setAnimationValues",
        "(FFFF)V",
        "",
        "imageResId",
        "()I",
        "stringResId",
        "id",
        "",
        "animation",
        "show",
        "(Z)V",
        "hide",
        "updateImageButtonVisibility",
        "()V",
        "Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$ClickListener;",
        "listener",
        "setOnClickListener",
        "(Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$ClickListener;)V",
        "Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$LongClickListener;",
        "setOnLongClickListener",
        "(Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$LongClickListener;)V",
        "",
        "o",
        "equals",
        "(Ljava/lang/Object;)Z",
        "hashCode",
        "Landroid/app/Activity;",
        "Landroid/view/View;",
        "view",
        "Landroid/view/View;",
        "getView",
        "()Landroid/view/View;",
        "Landroid/widget/ImageButton;",
        "mImageButton",
        "Landroid/widget/ImageButton;",
        "mClickListener",
        "Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$ClickListener;",
        "mLongClickListener",
        "Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$LongClickListener;",
        "mEnabled",
        "Z",
        "mDimmed",
        "dimmed",
        "isDimmed",
        "()Z",
        "setDimmed",
        "enabled",
        "isEnabled",
        "setEnabled",
        "Companion",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final mActivity:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mClickListener:Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$ClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mDimmed:Z

.field private mEnabled:Z

.field private final mImageButton:Landroid/widget/ImageButton;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mLongClickListener:Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$LongClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final view:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->Companion:Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->mActivity:Landroid/app/Activity;

    const v0, 0x7f0e04b6

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->view:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0755

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->imageResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->stringResId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/save_image/d;

    const/16 v2, 0x18

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/save_image/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->stringResId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/media/assistant/view/b;

    const/4 v1, 0x4

    invoke-direct {p1, v1, p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->mClickListener:Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$ClickListener;

    if-eqz p1, :cond_1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$ClickListener;->onClick(Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;)V

    :cond_1
    return-void
.end method

.method private static final _init_$lambda$1(Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->isEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->mLongClickListener:Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$LongClickListener;

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$LongClickListener;->onLongClick(Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->_init_$lambda$0(Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->_init_$lambda$1(Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private final setAnimationValues(FFFF)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p3}, Landroid/view/View;->setAlpha(F)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p3, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p3, p1}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut33()Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0, p4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->id()I

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->id()I

    move-result p0

    if-ne p1, p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getView()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->view:Landroid/view/View;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->id()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public hide(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x3e99999a    # 0.3f

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, p1, v1, v0}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->setAnimationValues(FFFF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract id()I
.end method

.method public abstract imageResId()I
.end method

.method public isDimmed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->mDimmed:Z

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->mEnabled:Z

    return p0
.end method

.method public setDimmed(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->mDimmed:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->mImageButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    const p1, 0x7f0803df

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_1
    const p1, 0x7f0803de

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->mEnabled:Z

    return-void
.end method

.method public setOnClickListener(Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$ClickListener;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$ClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->mClickListener:Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$ClickListener;

    return-void
.end method

.method public setOnLongClickListener(Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$LongClickListener;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$LongClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->mLongClickListener:Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$LongClickListener;

    return-void
.end method

.method public show(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x3e99999a    # 0.3f

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->setAnimationValues(FFFF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract stringResId()I
.end method

.method public updateImageButtonVisibility()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
