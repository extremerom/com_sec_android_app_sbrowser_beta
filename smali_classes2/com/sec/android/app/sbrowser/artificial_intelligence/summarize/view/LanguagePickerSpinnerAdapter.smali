.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter$Companion;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter$SpinnerDelegate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \'2\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0002\'(B5\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J)\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u00052\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J)\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u00052\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0017J\u000f\u0010\u001a\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\r\u0010\u001c\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001c\u0010\u001bR\u001d\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u0017\u0010\n\u001a\u00020\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010 \u001a\u0004\u0008!\u0010\"R\u0014\u0010\u000c\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010#R\u0016\u0010%\u001a\u00020$8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008%\u0010&\u00a8\u0006)"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter;",
        "Landroid/widget/ArrayAdapter;",
        "",
        "Landroid/content/Context;",
        "context",
        "",
        "textViewResourceId",
        "",
        "items",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;",
        "viewModel",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter$SpinnerDelegate;",
        "spinnerDelegate",
        "<init>",
        "(Landroid/content/Context;ILjava/util/List;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter$SpinnerDelegate;)V",
        "position",
        "Landroid/view/View;",
        "getCustomView",
        "(I)Landroid/view/View;",
        "convertView",
        "Landroid/view/ViewGroup;",
        "parent",
        "getDropDownView",
        "(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;",
        "getView",
        "Ldb/r;",
        "notifyDataSetChanged",
        "()V",
        "updateSpinnerLanguageTextViewColor",
        "Ljava/util/List;",
        "getItems",
        "()Ljava/util/List;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;",
        "getViewModel",
        "()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter$SpinnerDelegate;",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "spinnerLanguageTextView",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "Companion",
        "SpinnerDelegate",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final spinnerDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter$SpinnerDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private spinnerLanguageTextView:Landroidx/appcompat/widget/AppCompatTextView;

.field private final viewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter$SpinnerDelegate;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter$SpinnerDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter$SpinnerDelegate;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModel"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spinnerDelegate"

    invoke-static {p5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter;->items:Ljava/util/List;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter;->viewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter;->spinnerDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter$SpinnerDelegate;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter;->getCustomView$lambda$0(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter;ILandroid/view/View;)V

    return-void
.end method

.method private final getCustomView(I)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter;->items:Ljava/util/List;

    invoke-static {v0}, Lfb/o;->f(Ljava/util/List;)I

    move-result v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0e0485

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Laa/a;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2, p0}, Laa/a;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f14075b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->shouldChangeColorsForReaderMode()Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f0b0678

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeTextColor()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0e0484

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter;->viewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getTranslateTargetLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sget-object v3, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils$Companion;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils$Companion;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;

    move-result-object v3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter;->items:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v3, p0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->getDisplayName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_2

    const p0, 0x7f1502eb

    goto :goto_1

    :cond_2
    const p0, 0x7f1502ec

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextAppearance(I)V

    sget-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->shouldChangeColorsForReaderMode()Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeTextColor()I

    move-result p0

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz v1, :cond_4

    const p1, 0x7f060206

    goto :goto_2

    :cond_4
    const p1, 0x7f060106

    :goto_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    :goto_3
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    :goto_4
    return-object v0
.end method

.method private static final getCustomView$lambda$0(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter;ILandroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter;->spinnerDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter$SpinnerDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter$SpinnerDelegate;->setSelection(I)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p3, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter;->viewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getTranslateSourceLanguage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->isValidSourceLanguage(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter;->spinnerDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter$SpinnerDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter$SpinnerDelegate;->dismissDropDown()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter;->getCustomView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const-string p3, "getView(...)"

    invoke-static {p2, p3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p3, p2, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p3, :cond_0

    move-object p3, p2

    check-cast p3, Landroidx/appcompat/widget/AppCompatTextView;

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils$Companion;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils$Companion;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter;->items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->getDisplayName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter;->spinnerLanguageTextView:Landroidx/appcompat/widget/AppCompatTextView;

    sget-object p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->shouldChangeColorsForReaderMode()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter;->updateSpinnerLanguageTextViewColor()V

    :cond_0
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter;->spinnerDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter$SpinnerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter$SpinnerDelegate;->dismissDropDown()V

    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final updateSpinnerLanguageTextViewColor()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter;->spinnerLanguageTextView:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const-string p0, "spinnerLanguageTextView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter;->notifyDataSetChanged()V

    return-void
.end method
