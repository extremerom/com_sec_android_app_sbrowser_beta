.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter;
.super Landroidx/recyclerview/widget/h0;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter$Companion;,
        Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter$ItemListener;,
        Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter$NewsFeedItemDiffCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/h0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\u0013\u0008\u0007\u0018\u0000 ,2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0003,-.B\u001f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0015\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001f\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ/\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u00132\u000e\u0010\u001d\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u001bH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001eJ\u0017\u0010\u001f\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\r\u0010!\u001a\u00020\u000e\u00a2\u0006\u0004\u0008!\u0010\"J\u0015\u0010$\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020\u0006\u00a2\u0006\u0004\u0008$\u0010%R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010&R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\'R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010(R\u0016\u0010)\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0016\u0010+\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010\'\u00a8\u0006/"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter;",
        "Landroidx/recyclerview/widget/h0;",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;",
        "Landroid/app/Activity;",
        "activity",
        "",
        "isForPreview",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;",
        "quickAccessViewModel",
        "<init>",
        "(Landroid/app/Activity;ZLcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;)V",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsType;",
        "newsType",
        "Ldb/r;",
        "updateType",
        "(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsType;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "onCreateViewHolder",
        "(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;",
        "holder",
        "position",
        "onBindViewHolder",
        "(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;I)V",
        "",
        "",
        "payloads",
        "(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;ILjava/util/List;)V",
        "getItemViewType",
        "(I)I",
        "updateEditMode",
        "()V",
        "solidColorLightThemed",
        "setSolidColorLightThemed",
        "(Z)V",
        "Landroid/app/Activity;",
        "Z",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;",
        "type",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsType;",
        "isSolidColorLightThemed",
        "Companion",
        "ItemListener",
        "NewsFeedItemDiffCallback",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final activity:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isForPreview:Z

.field private isSolidColorLightThemed:Z

.field private final quickAccessViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private type:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZLcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "quickAccessViewModel"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter$NewsFeedItemDiffCallback;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter$NewsFeedItemDiffCallback;-><init>()V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/h0;-><init>(Landroidx/recyclerview/widget/A;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter;->activity:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter;->isForPreview:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter;->quickAccessViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;

    sget-object p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsType;->TYPE_SINGLE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsType;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter;->type:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsType;

    return-void
.end method

.method public static synthetic a()Ldb/r;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter;->onCreateViewHolder$lambda$1()Ldb/r;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter;Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter;->onCreateViewHolder$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter;Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method private static final onCreateViewHolder$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter;Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;)Ldb/r;
    .locals 1

    const-string v0, "newsItem"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;->getArticleUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessIntentUtils;->launchQuickAccessNewsInNewTab(Landroid/app/Activity;Ljava/lang/String;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private static final onCreateViewHolder$lambda$1()Ldb/r;
    .locals 1

    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter;->type:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter;->onBindViewHolder(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/h1;ILjava/util/List;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter;->onBindViewHolder(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;I)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/h0;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getItem(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter;->isForPreview:Z

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->bind(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;Z)V

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->hideDividerLine()V

    :cond_0
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter;->isSolidColorLightThemed:Z

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->updateTextColor(Z)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;ILjava/util/List;)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;",
            "I",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter;->onBindViewHolder(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;I)V

    return-void

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "solid_color_theme_changed"

    invoke-static {v1, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter;->isSolidColorLightThemed:Z

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->updateTextColor(Z)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemSingleViewHolder;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemSingleViewHolder;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/h0;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "getItem(...)"

    invoke-static {p0, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;

    invoke-virtual {p1, p0, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemSingleViewHolder;->bind(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;Ljava/util/List;)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown viewHolder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "NewsFeedItemAdapter"

    const-string v1, "NewsFeedItemAdapter:onCreateViewHolder: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter$ItemListener;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/i;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/i;-><init>(ILjava/lang/Object;)V

    new-instance v2, LB9/b;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, LB9/b;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter$ItemListener;-><init>(Lsb/k;Lsb/a;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsType;->TYPE_SINGLE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "inflate(...)"

    const/4 v3, 0x0

    if-ne p2, v1, :cond_0

    new-instance p2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemSingleViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1, p1, v3}, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    move-result-object p1

    invoke-static {p1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter;->quickAccessViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;

    invoke-direct {p2, p1, v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemSingleViewHolder;-><init>(Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter$ItemListener;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;)V

    return-object p2

    :cond_0
    new-instance p2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemHeroViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1, p1, v3}, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    move-result-object p1

    invoke-static {p1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter;->quickAccessViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;

    invoke-direct {p2, p1, v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemHeroViewHolder;-><init>(Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter$ItemListener;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;)V

    return-object p2
.end method

.method public final setSolidColorLightThemed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter;->isSolidColorLightThemed:Z

    return-void
.end method

.method public final updateEditMode()V
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h0;->getItemCount()I

    move-result v0

    const-string v1, "editmode"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Landroidx/recyclerview/widget/u0;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public final updateType(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsType;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newsType"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter;->type:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsType;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(I)V

    return-void
.end method
