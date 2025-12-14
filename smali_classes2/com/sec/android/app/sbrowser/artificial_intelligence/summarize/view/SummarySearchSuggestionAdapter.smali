.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;
.super Landroidx/recyclerview/widget/h0;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionDiffCallback;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionListener;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/h0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0008\u0012\u00060\u0003R\u00020\u00000\u0001:\u0003\u001b\u001c\u001dB\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J#\u0010\u000c\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ#\u0010\u0011\u001a\u00020\u00102\n\u0010\u000e\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u000f\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0013R$\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;",
        "Landroidx/recyclerview/widget/h0;",
        "",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionListener;",
        "listener",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionListener;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "onCreateViewHolder",
        "(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;",
        "holder",
        "position",
        "Ldb/r;",
        "onBindViewHolder",
        "(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;I)V",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionListener;",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "SummarySearchSuggestionListener",
        "SummarySearchSuggestionViewHolder",
        "SummarySearchSuggestionDiffCallback",
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
.field private context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final listener:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionListener;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionDiffCallback;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionDiffCallback;-><init>()V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/h0;-><init>(Landroidx/recyclerview/widget/A;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;->listener:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionListener;

    return-void
.end method

.method public static final synthetic access$getListener$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;->listener:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionListener;

    return-object p0
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;->onBindViewHolder(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;I)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/h0;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "getItem(...)"

    invoke-static {p0, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;->bind(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;->setReaderModeViewColor()V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionItemBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionItemBinding;)V

    return-object p2
.end method
