.class public final Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListRecyclerView;
.super Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListRecyclerView;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListRecyclerView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0007\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u001d\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rR*\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u00088\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListRecyclerView;",
        "Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListRecyclerView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "widthSpec",
        "heightSpec",
        "Ldb/r;",
        "onMeasure",
        "(II)V",
        "height",
        "maxHeight",
        "I",
        "getMaxHeight",
        "()I",
        "setMaxHeight",
        "(I)V",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListRecyclerView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private maxHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListRecyclerView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListRecyclerView$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListRecyclerView;->Companion:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListRecyclerView$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListRecyclerView;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListRecyclerView;->maxHeight:I

    return-void
.end method


# virtual methods
.method public final getMaxHeight()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListRecyclerView;->maxHeight:I

    return p0
.end method

.method public onMeasure(II)V
    .locals 4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListRecyclerView;->maxHeight:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-le v1, v2, :cond_0

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    return-void
.end method

.method public final setMaxHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListRecyclerView;->maxHeight:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method
