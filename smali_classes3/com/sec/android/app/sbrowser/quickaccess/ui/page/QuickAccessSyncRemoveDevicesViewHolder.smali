.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesViewHolder;
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
        Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesViewHolder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u001c2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001\u001cB\u0019\u0008\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0019\u0010\u0012\u001a\u00020\r2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0019\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0017R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0018R\u0016\u0010\u001a\u001a\u00020\u00198\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesViewHolder;",
        "Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncViewHolder;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;",
        "Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesItemBinding;",
        "binding",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter$Listener;",
        "listener",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesItemBinding;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter$Listener;)V",
        "",
        "payload",
        "Ldb/r;",
        "bind",
        "(Ljava/lang/Object;)V",
        "Landroid/view/View;",
        "v",
        "onClick",
        "(Landroid/view/View;)V",
        "",
        "onLongClick",
        "(Landroid/view/View;)Z",
        "Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesItemBinding;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter$Listener;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;",
        "viewHolderItem",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesViewHolder$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesItemBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final listener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter$Listener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private viewHolderItem:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesViewHolder$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesViewHolder;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesViewHolder$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesViewHolder;->$stable:I

    return-void
.end method

.method private constructor <init>(Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesItemBinding;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter$Listener;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesItemBinding;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesViewHolder;->listener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter$Listener;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesItemBinding;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter$Listener;Ltb/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesViewHolder;-><init>(Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesItemBinding;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter$Listener;)V

    return-void
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

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesItemBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesItemBinding;->syncItemCheckbox:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesItemBinding;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->isActivated()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setActivatedWithBackground(Landroid/view/View;Z)V

    goto/16 :goto_2

    :cond_1
    instance-of v0, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;

    const/4 v1, 0x0

    const-string v2, "viewHolderItem"

    if-eqz v0, :cond_f

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesViewHolder;->viewHolderItem:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;->component1()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDeviceInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesItemBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesItemBinding;->deviceName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesViewHolder;->viewHolderItem:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;->isLastItem()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/16 p1, 0x8

    goto :goto_0

    :cond_3
    move p1, v0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesItemBinding;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesItemBinding;->removeDeviceDivider:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, p1, :cond_4

    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesViewHolder;->viewHolderItem:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;->isFirstItem()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesViewHolder;->viewHolderItem:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;->isLastItem()Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 v0, 0xf

    goto :goto_1

    :cond_5
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesViewHolder;->viewHolderItem:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;->isFirstItem()Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 v0, 0x3

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesViewHolder;->viewHolderItem:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;->isLastItem()Z

    move-result p1

    if-eqz p1, :cond_8

    const/16 v0, 0xc

    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->getRoundMode()I

    move-result p1

    if-eq p1, v0, :cond_9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    :cond_9
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesViewHolder;->viewHolderItem:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;->isChecked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesViewHolder;->bind(Ljava/lang/Object;)V

    goto :goto_2

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
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_e
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_f
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesViewHolder;->viewHolderItem:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;->isChecked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesViewHolder;->bind(Ljava/lang/Object;)V

    :cond_10
    :goto_2
    return-void

    :cond_11
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesViewHolder;->listener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter$Listener;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter$Listener;->getOnItemClick()Lsb/n;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesViewHolder;->viewHolderItem:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getBindingAdapterPosition()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const-string p0, "viewHolderItem"

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesViewHolder;->listener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter$Listener;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter$Listener;->getOnItemLongClick()Lsb/a;

    move-result-object p0

    invoke-interface {p0}, Lsb/a;->invoke()Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method
