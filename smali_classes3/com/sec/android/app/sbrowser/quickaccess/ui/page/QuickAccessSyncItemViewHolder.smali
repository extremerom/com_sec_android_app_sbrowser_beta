.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;
.super Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncViewHolder;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \"2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001\"B\u0019\u0008\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\rJ\u0017\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0019\u0010\u0015\u001a\u00020\u000b2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0019\u0010\u0018\u001a\u00020\u00172\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u001aR\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u001bR\u0016\u0010\u001d\u001a\u00020\u001c8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010 \u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006#"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;",
        "Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncViewHolder;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;",
        "Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;",
        "binding",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter$ItemListener;",
        "itemListener",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter$ItemListener;)V",
        "Ldb/r;",
        "updateItemIcon",
        "()V",
        "updateItemDominantChar",
        "",
        "payload",
        "bind",
        "(Ljava/lang/Object;)V",
        "Landroid/view/View;",
        "v",
        "onClick",
        "(Landroid/view/View;)V",
        "",
        "onLongClick",
        "(Landroid/view/View;)Z",
        "Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter$ItemListener;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;",
        "itemViewHolderItem",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;",
        "",
        "currentItemIconHash",
        "I",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentItemIconHash:I

.field private final itemListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter$ItemListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private itemViewHolderItem:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->$stable:I

    return-void
.end method

.method private constructor <init>(Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter$ItemListener;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->itemListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter$ItemListener;

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;->syncItem:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;->syncItem:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter$ItemListener;Ltb/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;-><init>(Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter$ItemListener;)V

    return-void
.end method

.method private final updateItemDominantChar()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;->syncItemIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->itemViewHolderItem:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;->getItem()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;->syncItemDominantChar:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getModifiedDominantColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v1, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getModifiedDominantColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getDominantChar()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getDominantChar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    :cond_4
    const-string p0, "itemViewHolderItem"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final updateItemIcon()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;->syncItemDominantChar:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;->syncItemIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->itemViewHolderItem:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;->getItem()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->currentItemIconHash:I

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getTouchIconHash()I

    move-result v3

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getTouchIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getTouchIconHash()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->currentItemIconHash:I

    :cond_2
    return-void

    :cond_3
    const-string p0, "itemViewHolderItem"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)V
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "payload"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    const/4 v1, 0x0

    const-string v2, "itemViewHolderItem"

    if-eqz v0, :cond_d

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->itemViewHolderItem:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;->getItem()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;->syncItemTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;->syncItemUrl:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getOriginalUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;->syncItemIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getTouchIconBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/QuickAccessUtils;->hasValidSyncItemIcon(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->updateItemIcon()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->updateItemDominantChar()V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->itemViewHolderItem:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;->isLastItem()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/16 p1, 0x8

    goto :goto_1

    :cond_3
    move p1, v0

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;->syncItemDivider:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, p1, :cond_4

    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->itemViewHolderItem:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;->isFirstItem()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->itemViewHolderItem:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;->isLastItem()Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 v0, 0xf

    goto :goto_2

    :cond_5
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->itemViewHolderItem:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;->isFirstItem()Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 v0, 0x3

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->itemViewHolderItem:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;->isLastItem()Z

    move-result p1

    if-eqz p1, :cond_8

    const/16 v0, 0xc

    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->getRoundMode()I

    move-result p1

    if-eq p1, v0, :cond_d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    goto :goto_3

    :cond_9
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_b
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_c
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_d
    :goto_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;->syncItemCheckbox:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->itemViewHolderItem:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;->isChecked()Z

    move-result v3

    if-eq v0, v3, :cond_f

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->itemViewHolderItem:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_4

    :cond_e
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_f
    :goto_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;->syncItem:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->itemViewHolderItem:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;->isChecked()Z

    move-result v3

    if-eq v0, v3, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->itemViewHolderItem:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;->isChecked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setActivatedWithBackground(Landroid/view/View;Z)V

    goto :goto_5

    :cond_10
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_11
    :goto_5
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->itemViewHolderItem:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;->isEnabled()Z

    move-result v3

    if-eq v0, v3, :cond_13

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->itemViewHolderItem:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;->isEnabled()Z

    move-result p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setEnabledWithAlpha(Landroid/view/View;Z)V

    goto :goto_6

    :cond_12
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_13
    :goto_6
    return-void

    :cond_14
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_15
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_16
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->itemListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter$ItemListener;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter$ItemListener;->getOnItemClick()Lsb/k;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->itemViewHolderItem:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const-string p0, "itemViewHolderItem"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncItemViewHolder;->itemListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter$ItemListener;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter$ItemListener;->getOnItemLongClick()Lsb/a;

    move-result-object p0

    invoke-interface {p0}, Lsb/a;->invoke()Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method
