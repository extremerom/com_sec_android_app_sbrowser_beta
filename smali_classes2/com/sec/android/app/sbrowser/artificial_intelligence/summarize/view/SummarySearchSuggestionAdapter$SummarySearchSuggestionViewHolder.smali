.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SummarySearchSuggestionViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\r\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;",
        "Landroidx/recyclerview/widget/h1;",
        "Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionItemBinding;",
        "binding",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionItemBinding;)V",
        "",
        "suggestionText",
        "Ldb/r;",
        "bind",
        "(Ljava/lang/String;)V",
        "setReaderModeViewColor",
        "()V",
        "Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionItemBinding;",
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
.field private final binding:Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionItemBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionItemBinding;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionItemBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionItemBinding;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionItemBinding;->searchSuggestionItemLayout:Landroid/widget/LinearLayout;

    new-instance v0, LFa/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1}, LFa/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionItemBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionItemBinding;->searchSuggestionText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;->access$getListener$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionListener;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionListener;->searchKeyword(Ljava/lang/String;)V

    const-string p0, "1000"

    const-string p1, "20020"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;->_init_$lambda$0(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final bind(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "suggestionText"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionItemBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionItemBinding;->searchSuggestionText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setReaderModeViewColor()V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->shouldChangeColorsForReaderMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionItemBinding;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionItemBinding;->searchSuggestionText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeSuggestionItemTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionItemBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionItemBinding;->searchSuggestionItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeSuggestionItemBgColor()I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionItemBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionItemBinding;->searchSuggestionText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    const v2, 0x7f060c1f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionItemBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SummarySearchSuggestionItemBinding;->searchSuggestionItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    const v2, 0x7f060c1e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    return-void
.end method
