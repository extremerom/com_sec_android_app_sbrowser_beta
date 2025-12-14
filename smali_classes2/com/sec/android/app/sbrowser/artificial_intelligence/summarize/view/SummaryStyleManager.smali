.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager$Companion;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager$ViewHolder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 A2\u00020\u0001:\u0002ABB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J!\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u000f2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0012\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0011\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0019\u0010\u001c\u001a\u00020\u00042\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0004H\u0003\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u000cJ\r\u0010\u001f\u001a\u00020\n\u00a2\u0006\u0004\u0008\u001f\u0010\u000cJ\u0015\u0010!\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u0004\u00a2\u0006\u0004\u0008!\u0010\"J\u0015\u0010#\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u0004\u00a2\u0006\u0004\u0008#\u0010\"J\r\u0010$\u001a\u00020\n\u00a2\u0006\u0004\u0008$\u0010\u000cJ\r\u0010%\u001a\u00020\n\u00a2\u0006\u0004\u0008%\u0010\u000cR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010&\u001a\u0004\u0008\'\u0010(R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010)\u001a\u0004\u0008*\u0010+R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010,R\u0016\u0010-\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0017\u00100\u001a\u00020/8\u0006\u00a2\u0006\u000c\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103R\u0016\u00104\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u0010)R\u0018\u00106\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0018\u00109\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u001f\u0010=\u001a\r\u0012\t\u0012\u00070\u0016\u00a2\u0006\u0002\u0008<0;8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u001c\u0010?\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u000c\n\u0004\u0008?\u0010.\u0012\u0004\u0008@\u0010\u000c\u00a8\u0006C"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;",
        "",
        "Landroid/app/Activity;",
        "activity",
        "Landroid/view/View;",
        "contentView",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;",
        "aiViewController",
        "<init>",
        "(Landroid/app/Activity;Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;)V",
        "Ldb/r;",
        "showPopupForOneUI8",
        "()V",
        "Landroid/widget/BaseAdapter;",
        "adapter",
        "",
        "measureMaxContentWidth",
        "(Landroid/widget/BaseAdapter;)I",
        "position",
        "convertView",
        "getViewForMeasure",
        "(ILandroid/view/View;)Landroid/view/View;",
        "",
        "getItem",
        "(I)Ljava/lang/String;",
        "Landroid/graphics/drawable/Drawable;",
        "getButtonDrawable",
        "()Landroid/graphics/drawable/Drawable;",
        "inflate",
        "(Landroid/view/View;)Landroid/view/View;",
        "onDoneSummaryStyleDialog",
        "initClickListener",
        "view",
        "setAnchorView",
        "(Landroid/view/View;)V",
        "onSummaryStyleButtonClick",
        "onConfigurationChanged",
        "onDismiss",
        "Landroid/app/Activity;",
        "getActivity",
        "()Landroid/app/Activity;",
        "Landroid/view/View;",
        "getContentView",
        "()Landroid/view/View;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;",
        "curSummaryStyle",
        "I",
        "Landroid/widget/ImageButton;",
        "summaryStyleButton",
        "Landroid/widget/ImageButton;",
        "getSummaryStyleButton",
        "()Landroid/widget/ImageButton;",
        "anchorViewOneUI8",
        "Lm/l;",
        "summaryStyleDialog",
        "Lm/l;",
        "Landroid/widget/ListPopupWindow;",
        "popupWindowForOneUI8",
        "Landroid/widget/ListPopupWindow;",
        "",
        "Lkotlin/jvm/internal/EnhancedNullability;",
        "styleOptions",
        "Ljava/util/List;",
        "selectedStyle",
        "getSelectedStyle$annotations",
        "Companion",
        "ViewHolder",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final activity:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private anchorViewOneUI8:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final contentView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private curSummaryStyle:I

.field private popupWindowForOneUI8:Landroid/widget/ListPopupWindow;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private selectedStyle:I

.field private final styleOptions:Ljava/util/List;
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

.field private final summaryStyleButton:Landroid/widget/ImageButton;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private summaryStyleDialog:Lm/l;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentView"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aiViewController"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->contentView:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getBrowsingAssistSummaryStyle()I

    move-result p3

    iput p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->curSummaryStyle:I

    const p3, 0x7f0b0c19

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(...)"

    invoke-static {p2, p3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->summaryStyleButton:Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->anchorViewOneUI8:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1400b2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f1400b1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->styleOptions:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;Landroid/widget/ImageButton;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->onSummaryStyleButtonClick$lambda$2(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;Landroid/widget/ImageButton;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static final synthetic access$getStyleOptions$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->styleOptions:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->onConfigurationChanged$lambda$5(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->onSummaryStyleButtonClick$lambda$1(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public static synthetic d(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->onSummaryStyleButtonClick$lambda$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic e(Ltb/u;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;Landroid/widget/ListPopupWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->showPopupForOneUI8$lambda$7$lambda$6(Ltb/u;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;Landroid/widget/ListPopupWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->initClickListener$lambda$0(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->onSummaryStyleButtonClick$lambda$3(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private final getButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->activity:Landroid/app/Activity;

    const v0, 0x7f08027f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private final getItem(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->styleOptions:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private final getViewForMeasure(ILandroid/view/View;)Landroid/view/View;
    .locals 2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->inflate(Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.sec.android.app.sbrowser.artificial_intelligence.summarize.view.SummaryStyleManager.ViewHolder"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager$ViewHolder;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager$ViewHolder;->getMText()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->getItem(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager$ViewHolder;->getMIcon()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object p2
.end method

.method private final inflate(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager$ViewHolder;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager$ViewHolder;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0e001e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0b00be

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager$ViewHolder;->setMLayout(Landroid/widget/RelativeLayout;)V

    const v0, 0x7f0b086c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager$ViewHolder;->setMText(Landroid/widget/TextView;)V

    const v0, 0x7f0b023a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager$ViewHolder;->setMIcon(Landroid/widget/ImageView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p1, p0

    :cond_0
    return-object p1
.end method

.method private static final initClickListener$lambda$0(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->onSummaryStyleButtonClick(Landroid/view/View;)V

    return-void
.end method

.method private final measureMaxContentWidth(Landroid/widget/BaseAdapter;)I
    .locals 12

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result p1

    const/4 v4, 0x0

    move-object v5, v4

    move v4, v1

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-direct {p0, v1, v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->getViewForMeasure(ILandroid/view/View;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/view/View;->measure(II)V

    int-to-double v6, v4

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-double v8, v4

    int-to-double v10, v0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    double-to-int v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700bd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p1, v4

    int-to-double v0, p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0700be

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method private static final onConfigurationChanged$lambda$5(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->popupWindowForOneUI8:Landroid/widget/ListPopupWindow;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->showPopupForOneUI8()V

    :cond_0
    return-void
.end method

.method private final onDoneSummaryStyleDialog()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getBrowsingAssistSummaryStyle()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->selectedStyle:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->selectedStyle:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBrowsingAssistSummaryStyle(I)V

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->curSummaryStyle:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->selectedStyle:I

    if-eq v0, v1, :cond_1

    iput v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->curSummaryStyle:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->onSummaryStyleChanged()V

    :cond_1
    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->curSummaryStyle:I

    if-nez p0, :cond_2

    const-string p0, "Standard"

    goto :goto_0

    :cond_2
    const-string p0, "Detailed"

    :goto_0
    const-string v0, "1000"

    const-string v1, "20018"

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final onSummaryStyleButtonClick$lambda$1(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;Landroid/widget/RadioGroup;I)V
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x7f0b00c9

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->selectedStyle:I

    return-void
.end method

.method private static final onSummaryStyleButtonClick$lambda$2(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;Landroid/widget/ImageButton;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->summaryStyleDialog:Lm/l;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private static final onSummaryStyleButtonClick$lambda$3(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->onDoneSummaryStyleDialog()V

    return-void
.end method

.method private static final onSummaryStyleButtonClick$lambda$4(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "1000"

    const-string p1, "20019"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final showPopupForOneUI8()V
    .locals 7

    new-instance v0, Ltb/u;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->curSummaryStyle:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, v0, Ltb/u;->a:I

    new-instance v1, Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->activity:Landroid/app/Activity;

    const v4, 0x7f150307

    const/4 v5, 0x0

    const v6, 0x7f040317

    invoke-direct {v1, v3, v5, v6, v4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->popupWindowForOneUI8:Landroid/widget/ListPopupWindow;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager$showPopupForOneUI8$adapter$1;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager$showPopupForOneUI8$adapter$1;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;Ltb/u;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->popupWindowForOneUI8:Landroid/widget/ListPopupWindow;

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->anchorViewOneUI8:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    invoke-virtual {v3, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v4, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/u;

    invoke-direct {v4, v0, p0, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/u;-><init>(Ltb/u;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v3, v2}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->measureMaxContentWidth(Landroid/widget/BaseAdapter;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    const/4 v0, -0x2

    invoke-virtual {v3, v0}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->summaryStyleButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v3, v0}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->summaryStyleButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    neg-int p0, p0

    invoke-virtual {v3, p0}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method

.method private static final showPopupForOneUI8$lambda$7$lambda$6(Ltb/u;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;Landroid/widget/ListPopupWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iput p5, p0, Ltb/u;->a:I

    if-nez p5, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    iput p0, p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->selectedStyle:I

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->onDoneSummaryStyleDialog()V

    invoke-virtual {p2}, Landroid/widget/ListPopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public final getActivity()Landroid/app/Activity;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public final getSummaryStyleButton()Landroid/widget/ImageButton;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->summaryStyleButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public final initClickListener()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->summaryStyleButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/b;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onConfigurationChanged()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->popupWindowForOneUI8:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->popupWindowForOneUI8:Landroid/widget/ListPopupWindow;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/a;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/a;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final onDismiss()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->popupWindowForOneUI8:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->popupWindowForOneUI8:Landroid/widget/ListPopupWindow;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->summaryStyleDialog:Lm/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->summaryStyleDialog:Lm/l;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lm/y;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onSummaryStyleButtonClick(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->showPopupForOneUI8()V

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->curSummaryStyle:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->selectedStyle:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/databinding/AiSummaryStyleDialogBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/sec/android/app/sbrowser/databinding/AiSummaryStyleDialogBinding;

    move-result-object v1

    const-string v2, "inflate(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/databinding/AiSummaryStyleDialogBinding;->aiSummaryStyleRadioGroup:Landroid/widget/RadioGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/databinding/AiSummaryStyleDialogBinding;->aiSummaryStyleRadioGroup:Landroid/widget/RadioGroup;

    iget v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->curSummaryStyle:I

    if-nez v4, :cond_1

    const v4, 0x7f0b00c9

    goto :goto_0

    :cond_1
    const v4, 0x7f0b00c8

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->check(I)V

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/databinding/AiSummaryStyleDialogBinding;->aiSummaryStyleRadioGroup:Landroid/widget/RadioGroup;

    new-instance v4, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/v;

    invoke-direct {v4, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/v;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;)V

    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    new-instance v2, Lm/k;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->activity:Landroid/app/Activity;

    const v5, 0x7f1501c5

    invoke-direct {v2, v4, v5}, Lm/k;-><init>(Landroid/content/Context;I)V

    new-instance v4, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/n;

    const/4 v5, 0x1

    invoke-direct {v4, v5, p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v2, Lm/k;->a:Lm/h;

    iput-object v4, v0, Lm/h;->o:Landroid/content/DialogInterface$OnDismissListener;

    const v0, 0x7f1400b0

    invoke-virtual {v2, v0}, Lm/k;->e(I)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/databinding/AiSummaryStyleDialogBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v2, v0}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/l;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/l;-><init>(ILjava/lang/Object;)V

    const v2, 0x7f14045c

    invoke-virtual {v0, v2, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;-><init>(I)V

    const v2, 0x7f1402c1

    invoke-virtual {v0, v2, v1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    iget-object v1, v0, Lm/k;->a:Lm/h;

    iput-boolean v3, v1, Lm/h;->m:Z

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->summaryStyleDialog:Lm/l;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->activity:Landroid/app/Activity;

    invoke-static {v1, v0, p1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->setAnchor(Landroid/content/Context;Landroid/app/Dialog;Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->summaryStyleDialog:Lm/l;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    const-string p0, "1000"

    const-string p1, "20100"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setAnchorView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->anchorViewOneUI8:Landroid/view/View;

    return-void
.end method
