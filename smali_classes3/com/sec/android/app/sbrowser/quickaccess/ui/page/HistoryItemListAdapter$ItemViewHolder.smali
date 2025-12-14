.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemViewHolder;
.super Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ItemViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemViewHolder$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0086\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B#\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001d\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0019\u0010\u0013\u001a\u00020\u00082\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J+\u0010\u001b\u001a\u00020\u001a2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u001dR \u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u001e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemViewHolder;",
        "Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnKeyListener;",
        "Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;",
        "binding",
        "Lkotlin/Function1;",
        "Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;",
        "Ldb/r;",
        "itemListener",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter;Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;Lsb/k;)V",
        "item",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;",
        "itemPosition",
        "bind",
        "(Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;)V",
        "Landroid/view/View;",
        "v",
        "onClick",
        "(Landroid/view/View;)V",
        "view",
        "",
        "code",
        "Landroid/view/KeyEvent;",
        "event",
        "",
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

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter;Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;Lsb/k;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemViewHolder;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemViewHolder;->itemListener:Lsb/k;

    iget-object p1, p2, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;->item:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final bind(Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;)V
    .locals 9
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemPosition"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon;->INSTANCE:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;->dominantChar:Landroid/widget/TextView;

    const-string v0, "dominantChar"

    invoke-static {v3, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;->icon:Landroid/widget/ImageView;

    const-string v0, "icon"

    invoke-static {v4, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    const/16 v7, 0x40

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon;->invoke(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;IILcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getBindingAdapterPosition()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "icon-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;->title:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;->url:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;->itemDivider:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getBindingAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemViewHolder;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/h0;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    const/16 v0, 0x8

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    sget-object p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemViewHolder$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v2, :cond_6

    const/4 p2, 0x2

    const/4 v0, 0x3

    if-eq p1, p2, :cond_5

    if-eq p1, v0, :cond_4

    goto :goto_1

    :cond_4
    const/16 v3, 0xc

    goto :goto_1

    :cond_5
    move v3, v0

    goto :goto_1

    :cond_6
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

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemViewHolder;->itemListener:Lsb/k;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemViewHolder;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getBindingAdapterPosition()I

    move-result p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter;->access$getItem(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter;I)Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;

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
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemViewHolder;->itemListener:Lsb/k;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemViewHolder;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getBindingAdapterPosition()I

    move-result p0

    invoke-static {p2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter;->access$getItem(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter;I)Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;

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
