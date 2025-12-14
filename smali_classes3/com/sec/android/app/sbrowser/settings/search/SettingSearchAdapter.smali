.class public final Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0015\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0001[B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\'\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\'\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0019\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001c\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u001f\u0010#\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u001f\u0010%\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008%\u0010&J\u0015\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\u0017\u0010\'J\u0015\u0010)\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020\u001b\u00a2\u0006\u0004\u0008)\u0010*J\u000f\u0010+\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008+\u0010,J\u0015\u0010.\u001a\u00020\u001b2\u0006\u0010-\u001a\u00020\u001b\u00a2\u0006\u0004\u0008.\u0010*J\u0015\u0010/\u001a\u00020\u001b2\u0006\u0010-\u001a\u00020\u001b\u00a2\u0006\u0004\u0008/\u0010*J\u0017\u00100\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u00080\u0010*JU\u00109\u001a\u00020\u000b2\u0016\u00104\u001a\u0012\u0012\u0004\u0012\u00020201j\u0008\u0012\u0004\u0012\u000202`32.\u00108\u001a*\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0605j\u0014\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t06`7\u00a2\u0006\u0004\u00089\u0010:J\u0015\u0010<\u001a\u00020\u000b2\u0006\u0010;\u001a\u00020\u001b\u00a2\u0006\u0004\u0008<\u0010=J\u0015\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\u0018\u0010\'R\u0014\u0010>\u001a\u00020\u000f8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u0018\u0010@\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u0010AR\u0016\u0010B\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u0018\u0010D\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008D\u0010?R\u0018\u0010F\u001a\u0004\u0018\u00010E8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR*\u0010H\u001a\u0016\u0012\u0004\u0012\u000202\u0018\u000101j\n\u0012\u0004\u0012\u000202\u0018\u0001`38\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u001e\u0010K\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010J8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u0016\u0010M\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010NR0\u0010P\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000b\u0018\u00010O8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008P\u0010Q\u001a\u0004\u0008R\u0010S\"\u0004\u0008T\u0010URB\u0010V\u001a.\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t06\u0018\u000105j\u0016\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t06\u0018\u0001`78\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008V\u0010WR\u0018\u0010Y\u001a\u0004\u0018\u00010X8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Y\u0010Z\u00a8\u0006\\"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;",
        "Landroidx/recyclerview/widget/u0;",
        "Landroidx/recyclerview/widget/h1;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/view/View;",
        "view",
        "Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;",
        "item",
        "Ldb/r;",
        "setBackgroundForItem",
        "(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;)V",
        "Landroid/widget/TextView;",
        "",
        "suggestionResult",
        "query",
        "setHighlightedTextSuggestion",
        "(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V",
        "Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItemViewHolder;",
        "holder",
        "",
        "isLastChild",
        "isFirstChild",
        "setBackgroundForItems",
        "(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItemViewHolder;ZZ)V",
        "",
        "position",
        "Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;",
        "getViewType",
        "(I)Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateViewHolder",
        "(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;",
        "onBindViewHolder",
        "(Landroidx/recyclerview/widget/h1;I)V",
        "(I)Z",
        "adapterIndex",
        "getGroupPosition",
        "(I)I",
        "getItemCount",
        "()I",
        "groupPosition",
        "getChildrenCount",
        "groupPositionToBin",
        "getItemViewType",
        "Ljava/util/ArrayList;",
        "Lcom/sec/android/app/sbrowser/settings/search/SearchItemType;",
        "Lkotlin/collections/ArrayList;",
        "list",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "hm",
        "setListData",
        "(Ljava/util/ArrayList;Ljava/util/HashMap;)V",
        "groupCount",
        "setGroupCount",
        "(I)V",
        "TAG",
        "Ljava/lang/String;",
        "mContext",
        "Landroid/content/Context;",
        "mIsKorean",
        "Z",
        "mPreviousSearchedString",
        "Ljava/util/regex/Pattern;",
        "mPattern",
        "Ljava/util/regex/Pattern;",
        "mSitesResultList",
        "Ljava/util/ArrayList;",
        "Landroid/util/SparseArray;",
        "mViewTypes",
        "Landroid/util/SparseArray;",
        "mGroupCount",
        "I",
        "Lkotlin/Function1;",
        "onItemClick",
        "Lsb/k;",
        "getOnItemClick",
        "()Lsb/k;",
        "setOnItemClick",
        "(Lsb/k;)V",
        "mItemMap",
        "Ljava/util/HashMap;",
        "",
        "mSettingItemNums",
        "[I",
        "Listener",
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


# instance fields
.field private final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mGroupCount:I

.field private mIsKorean:Z

.field private mItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPattern:Ljava/util/regex/Pattern;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPreviousSearchedString:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSettingItemNums:[I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSitesResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/search/SearchItemType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mViewTypes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private onItemClick:Lsb/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsb/k;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    const-string v0, "SettingSearchAdapter"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isKorea()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mIsKorean:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->onBindViewHolder$lambda$0(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;Landroid/view/View;)V

    return-void
.end method

.method private final getViewType(I)Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    return-object p0
.end method

.method private static final onBindViewHolder$lambda$0(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->onItemClick:Lsb/k;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final setBackgroundForItem(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    const p2, 0x7f0806db

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawable(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final setBackgroundForItems(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItemViewHolder;ZZ)V
    .locals 3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItemViewHolder;->getRowView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    const v2, 0x7f060167

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    const/16 p0, 0xf

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItemViewHolder;->getMDivider()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const v1, 0x7f060bd0

    if-eqz p3, :cond_1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItemViewHolder;->getMDivider()Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/16 p0, 0xc

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItemViewHolder;->getMDivider()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItemViewHolder;->getMDivider()Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method private final setHighlightedTextSuggestion(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "getDefault(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "toLowerCase(...)"

    invoke-static {v2, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/16 v8, 0x21

    const v9, 0x7f06022d

    if-nez v1, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-boolean p3, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mIsKorean:Z

    if-eqz p3, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mPreviousSearchedString:Ljava/lang/String;

    invoke-virtual {v5, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mPreviousSearchedString:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "quote(...)"

    invoke-static {p3, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, " "

    const-string v3, "\\E\\s?\\Q"

    invoke-static {p3, v1, v3}, LKc/r;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "(?i)"

    invoke-virtual {v1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mPattern:Ljava/util/regex/Pattern;

    :cond_2
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mPattern:Ljava/util/regex/Pattern;

    if-eqz p3, :cond_3

    invoke-virtual {p3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    const-string v1, "matcher(...)"

    invoke-static {p3, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    invoke-static {v2, v5}, LKc/k;->q(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-static {v2, v5, v7, v7, v6}, LKc/k;->v(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p3

    if-ltz p3, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-gt v1, p2, :cond_6

    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, v9}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-direct {p2, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, p2, p3, v1, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ne p3, v5, :cond_5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p2, v7, v7, v6}, LKc/k;->v(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p3

    :goto_0
    add-int/2addr p3, p2

    goto :goto_1

    :cond_5
    invoke-static {p2, v1, v7, v7, v6}, LKc/k;->v(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p3

    goto :goto_0

    :goto_1
    if-ltz p2, :cond_6

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, v9}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-direct {v1, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v1, p2, p3, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final getChildrenCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mSettingItemNums:[I

    if-eqz v0, :cond_0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->groupPositionToBin(I)I

    move-result p0

    aget p0, v0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getGroupPosition(I)I
    .locals 1

    :goto_0
    const/4 v0, -0x1

    if-ge v0, p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mViewTypes:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->getViewType(I)Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->getDataIndex()I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getItemCount()I
    .locals 10

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mSitesResultList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mViewTypes:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mGroupCount:I

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mViewTypes:Landroid/util/SparseArray;

    if-eqz v4, :cond_1

    new-instance v5, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    invoke-direct {v5, v2, v1}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;-><init>(II)V

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mGroupCount:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-eq v2, v4, :cond_3

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->getChildrenCount(I)I

    move-result v4

    move v6, v1

    :goto_1
    if-ge v6, v4, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mViewTypes:Landroid/util/SparseArray;

    if-eqz v7, :cond_2

    new-instance v8, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    add-int/lit8 v9, v2, 0x1

    sub-int v9, v3, v9

    invoke-direct {v8, v9, v5}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;-><init>(II)V

    invoke-virtual {v7, v3, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v1, v3

    :cond_5
    return v1
.end method

.method public getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mSitesResultList:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/search/SearchItemType;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SearchItemType;->getType()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final groupPositionToBin(I)I
    .locals 4

    if-ltz p1, :cond_5

    sget v0, Lcom/sec/android/app/sbrowser/common/constants/settings/SettingsConstants;->SETTING_SEARCH_GROUP_COUNT:I

    if-lt p1, v0, :cond_0

    goto :goto_3

    :cond_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mGroupCount:I

    if-eq v0, v1, :cond_5

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    const/4 v0, -0x1

    move v1, v0

    :goto_0
    if-le p1, v0, :cond_4

    add-int/lit8 v2, v1, 0x1

    sget v3, Lcom/sec/android/app/sbrowser/common/constants/settings/SettingsConstants;->SETTING_SEARCH_GROUP_COUNT:I

    if-lt v2, v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mSettingItemNums:[I

    if-eqz v1, :cond_3

    aget v1, v1, v2

    if-nez v1, :cond_3

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_4
    :goto_2
    return v1

    :cond_5
    :goto_3
    return p1
.end method

.method public final isFirstChild(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->getType()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isLastChild(I)Z
    .locals 6

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->getGroupPosition(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ltz v0, :cond_0

    move v4, v3

    :goto_0
    add-int/2addr v2, v1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->getChildrenCount(I)I

    move-result v5

    add-int/2addr v2, v5

    if-eq v4, v0, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-ne v2, p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    return v1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 8
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBindViewHolder -- Position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/h1;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mSitesResultList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/search/SearchItemType;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    const-string v3, "null cannot be cast to non-null type com.sec.android.app.sbrowser.settings.search.SettingSearchItem"

    invoke-static {v0, v3}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItemViewHolder;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;->getMPrefTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    new-instance v5, LFa/b;

    const/16 v6, 0xf

    invoke-direct {v5, v6, p0, v0}, LFa/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->isLastChild(I)Z

    move-result v4

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->isFirstChild(I)Z

    move-result p2

    invoke-direct {p0, p1, v4, p2}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->setBackgroundForItems(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItemViewHolder;ZZ)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItemViewHolder;->getRowView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->isFocused()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItemViewHolder;->getRowView()Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->setBackgroundForItem(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;)V

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mContext:Landroid/content/Context;

    const-string v0, "null cannot be cast to non-null type com.sec.android.app.sbrowser.settings.SettingsActivity"

    invoke-static {p2, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->getSearchEditTextView()Landroid/widget/EditText;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    :cond_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    const/4 v1, 0x0

    move v4, v1

    move v5, v4

    :goto_1
    if-gt v4, v0, :cond_9

    if-nez v5, :cond_4

    move v6, v4

    goto :goto_2

    :cond_4
    move v6, v0

    :goto_2
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    invoke-static {v6, v7}, Ltb/k;->h(II)I

    move-result v6

    if-gtz v6, :cond_5

    move v6, v2

    goto :goto_3

    :cond_5
    move v6, v1

    :goto_3
    if-nez v5, :cond_7

    if-nez v6, :cond_6

    move v5, v2

    goto :goto_1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    if-nez v6, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_9
    :goto_4
    add-int/2addr v0, v2

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItemViewHolder;->getMTitleView()Landroid/widget/TextView;

    move-result-object p1

    invoke-direct {p0, p1, v3, p2}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->setHighlightedTextSuggestion(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mSitesResultList:Ljava/util/ArrayList;

    if-eqz p0, :cond_b

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/search/SearchItemType;

    :cond_b
    const-string p0, "null cannot be cast to non-null type com.sec.android.app.sbrowser.settings.search.SettingSearchHeader"

    invoke-static {v1, p0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchHeader;

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchHeaderViewHolder;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchHeader;->getMHeaderPrefKey()Ljava/lang/String;

    move-result-object p0

    const-string p2, "dummy"

    invoke-static {p0, p2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchHeaderViewHolder;->mSectionTitle:Landroid/widget/TextView;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_c
    iget-object p0, p1, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchHeaderViewHolder;->mSectionTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchHeader;->getMHeaderPrefTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "parent"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "inflate(...)"

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    const p2, 0x7f0e0885

    invoke-virtual {p0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItemViewHolder;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_0
    const p2, 0x7f0e0884

    invoke-virtual {p0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchHeaderViewHolder;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchHeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public final setGroupCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mGroupCount:I

    return-void
.end method

.method public final setListData(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 2
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/search/SearchItemType;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hm"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mSitesResultList:Ljava/util/ArrayList;

    new-instance p1, Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mSitesResultList:Ljava/util/ArrayList;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mViewTypes:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mItemMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mSettingItemNums:[I

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "next(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->mSettingItemNums:[I

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    aput v0, v1, p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setOnItemClick(Lsb/k;)V
    .locals 0
    .param p1    # Lsb/k;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsb/k;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->onItemClick:Lsb/k;

    return-void
.end method
