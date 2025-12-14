.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder;
.super Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ItemViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B#\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001f\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u000eJ\u001d\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0019\u0010\u001a\u001a\u00020\u00082\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ+\u0010!\u001a\u00020\u000f2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u001e\u001a\u00020\u001d2\u0008\u0010 \u001a\u0004\u0018\u00010\u001fH\u0016\u00a2\u0006\u0004\u0008!\u0010\"R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010#R \u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010$\u00a8\u0006%"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder;",
        "Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnKeyListener;",
        "Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;",
        "binding",
        "Lkotlin/Function1;",
        "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
        "Ldb/r;",
        "itemListener",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter;Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;Lsb/k;)V",
        "item",
        "setTouchIcon",
        "(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;)V",
        "",
        "isDarkTheme",
        "updateValidIconWithTheme",
        "(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;Z)V",
        "updateDominantIcon",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemPosition;",
        "itemPosition",
        "bind",
        "(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemPosition;)V",
        "Landroid/view/View;",
        "v",
        "onClick",
        "(Landroid/view/View;)V",
        "view",
        "",
        "code",
        "Landroid/view/KeyEvent;",
        "event",
        "onKey",
        "(Landroid/view/View;ILandroid/view/KeyEvent;)Z",
        "Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;",
        "Lsb/k;",
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


# instance fields
.field private final binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final itemListener:Lsb/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsb/k;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter;Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;Lsb/k;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;",
            "Lsb/k;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemListener"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder;->itemListener:Lsb/k;

    iget-object p1, p2, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;->item:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final setTouchIcon(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getThemeTouchIcon(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder;->updateValidIconWithTheme(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder;->updateDominantIcon(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;)V

    :goto_0
    return-void
.end method

.method private final updateDominantIcon(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getDominantColor()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0608a5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;->icon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;->icon:Landroid/widget/ImageView;

    const v2, 0x7f080384

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;->icon:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;->icon:Landroid/widget/ImageView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v2, 0x7f0b05ef

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;->icon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainNameFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getDomainNameFirstLetter(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;->dominantChar:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;->dominantChar:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;->dominantChar:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private final updateValidIconWithTheme(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;->icon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;->icon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getThemeTouchIcon(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;->icon:Landroid/widget/ImageView;

    const v1, 0x7f0b05ef

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getThemeTouchIcon(Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;->dominantChar:Landroid/widget/TextView;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final bind(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemPosition;)V
    .locals 4
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemPosition"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder;->setTouchIcon(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;->title:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;->url:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;->itemDivider:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getBindingAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/h0;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    sget-object p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v2, :cond_5

    const/4 p2, 0x2

    const/4 v0, 0x3

    if-eq p1, p2, :cond_4

    if-eq p1, v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v3, 0xc

    goto :goto_1

    :cond_4
    move v3, v0

    goto :goto_1

    :cond_5
    const/16 v3, 0xf

    :goto_1
    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder;->itemListener:Lsb/k;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getBindingAdapterPosition()I

    move-result p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter;->access$getItem(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter;I)Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;

    move-result-object p0

    const-string v0, "access$getItem(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 v1, 0x17

    if-eq p2, v1, :cond_0

    const/16 v1, 0x3e

    if-eq p2, v1, :cond_0

    const/16 v1, 0x42

    if-eq p2, v1, :cond_0

    const/16 v1, 0xa0

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder;->itemListener:Lsb/k;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemViewHolder;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getBindingAdapterPosition()I

    move-result p0

    invoke-static {p2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter;->access$getItem(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter;I)Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;

    move-result-object p0

    const-string p2, "access$getItem(...)"

    invoke-static {p0, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1, p3}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
