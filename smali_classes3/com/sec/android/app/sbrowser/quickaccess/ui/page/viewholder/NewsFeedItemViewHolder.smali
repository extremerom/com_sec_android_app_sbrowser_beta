.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0017\u0018\u0000 >2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001>B\u001f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0010H\u0004\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000cH\u0004\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0017H\u0004\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0019\u0010\u001e\u001a\u00020\u00102\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0019\u0010!\u001a\u00020\u000e2\u0008\u0010 \u001a\u0004\u0018\u00010\u001cH\u0016\u00a2\u0006\u0004\u0008!\u0010\"J\r\u0010#\u001a\u00020\u0010\u00a2\u0006\u0004\u0008#\u0010\u0014J\u0015\u0010%\u001a\u00020\u00102\u0006\u0010$\u001a\u00020\u000e\u00a2\u0006\u0004\u0008%\u0010&R\u001a\u0010\u0005\u001a\u00020\u00048\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\'\u001a\u0004\u0008(\u0010)R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010*R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010+R\u0016\u0010,\u001a\u00020\u000c8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\"\u00100\u001a\n /*\u0004\u0018\u00010.0.8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103R\"\u00105\u001a\n /*\u0004\u0018\u000104048\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u00085\u00106\u001a\u0004\u00087\u00108R\u001a\u0010:\u001a\u0002098\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008:\u0010;\u001a\u0004\u0008<\u0010=\u00a8\u0006?"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;",
        "Landroidx/recyclerview/widget/h1;",
        "Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;",
        "binding",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter$ItemListener;",
        "itemListener",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;",
        "quickAccessViewModel",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter$ItemListener;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;)V",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;",
        "item",
        "",
        "isForPreview",
        "Ldb/r;",
        "bind",
        "(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;Z)V",
        "updateEditMode",
        "()V",
        "setupPlaceHolder",
        "(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;)V",
        "",
        "updatedTime",
        "",
        "getLastUpdatedTime",
        "(J)Ljava/lang/String;",
        "Landroid/view/View;",
        "p0",
        "onClick",
        "(Landroid/view/View;)V",
        "v",
        "onLongClick",
        "(Landroid/view/View;)Z",
        "hideDividerLine",
        "isSolidColorLightThemed",
        "updateTextColor",
        "(Z)V",
        "Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;",
        "getBinding",
        "()Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter$ItemListener;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;",
        "newsItem",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;",
        "Landroid/content/Context;",
        "kotlin.jvm.PlatformType",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "Landroid/content/res/Resources;",
        "resource",
        "Landroid/content/res/Resources;",
        "getResource",
        "()Landroid/content/res/Resources;",
        "",
        "placeHolderColor",
        "I",
        "getPlaceHolderColor",
        "()I",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final binding:Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final itemListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter$ItemListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private newsItem:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;

.field private final placeHolderColor:I

.field private final quickAccessViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final resource:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->$stable:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter$ItemListener;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter$ItemListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemListener"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "quickAccessViewModel"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->itemListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter$ItemListener;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->quickAccessViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->resource:Landroid/content/res/Resources;

    const p2, 0x7f0607e7

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->placeHolderColor:I

    return-void
.end method


# virtual methods
.method public bind(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;Z)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "item"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->newsItem:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->updateEditMode()V

    return-void
.end method

.method public final getBinding()Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getLastUpdatedTime(J)Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide p0

    const-wide/16 v0, 0x3c

    cmp-long p2, p0, v0

    const-wide/16 v0, 0x1

    if-gez p2, :cond_1

    cmp-long p2, p0, v0

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " min ago"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " mins ago"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x5a0

    cmp-long p2, p0, v2

    if-gez p2, :cond_3

    const/16 p2, 0x3c

    int-to-long v2, p2

    div-long/2addr p0, v2

    cmp-long p2, p0, v0

    if-nez p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " hour ago"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " hours ago"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/16 p2, 0x5a0

    int-to-long v2, p2

    div-long/2addr p0, v2

    cmp-long p2, p0, v0

    if-nez p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " day ago"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " days ago"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getPlaceHolderColor()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->placeHolderColor:I

    return p0
.end method

.method public final getResource()Landroid/content/res/Resources;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->resource:Landroid/content/res/Resources;

    return-object p0
.end method

.method public final hideDividerLine()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->newsFeedItemDivider:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getBindingAdapterPosition()I

    move-result p1

    const-string v0, "onClick pos "

    const-string v1, "NewsFeedItemViewHolder"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->itemListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter$ItemListener;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter$ItemListener;->getOnItemClick()Lsb/k;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->newsItem:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const-string p0, "newsItem"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getBindingAdapterPosition()I

    move-result p0

    const-string p1, "onLongClick pos "

    const-string v0, "NewsFeedItemViewHolder"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final setupPlaceHolder(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;)V
    .locals 6
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;->isPlaceHolder()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->placeHolderColor:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->newsTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;->isPlaceHolder()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinLines(I)V

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->newsSource:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;->isPlaceHolder()Z

    move-result v4

    const v5, 0x7f070b7a

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMinWidth(I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->newsLastUpdatedTime:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;->isPlaceHolder()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_3
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->newsIconImage:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/RoundedCornerImageView;

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->placeHolderColor:I

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final updateEditMode()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->quickAccessViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->getEditMode()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->newsFeedItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->shouldShowEditableView()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->newsFeedItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->shouldShowEditableView()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public final updateTextColor(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const p1, 0x7f060895

    goto :goto_0

    :cond_0
    const p1, 0x7f060887

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->newsTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->newsSource:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->newsLastUpdatedTime:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
