.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IntelligentFeaturesUtil$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IntelligentFeaturesUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001d\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IntelligentFeaturesUtil$Companion;",
        "",
        "<init>",
        "()V",
        "Landroid/app/Activity;",
        "activity",
        "Landroid/text/Spannable;",
        "getInfoText",
        "(Landroid/app/Activity;)Landroid/text/Spannable;",
        "Landroid/content/Context;",
        "context",
        "Landroid/widget/ImageButton;",
        "button",
        "Lm/l;",
        "getInfoDialog",
        "(Landroid/content/Context;Landroid/widget/ImageButton;)Lm/l;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ltb/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IntelligentFeaturesUtil$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/widget/ImageButton;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IntelligentFeaturesUtil$Companion;->getInfoDialog$lambda$0(Landroid/widget/ImageButton;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private static final getInfoDialog$lambda$0(Landroid/widget/ImageButton;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private final getInfoText(Landroid/app/Activity;)Landroid/text/Spannable;
    .locals 4

    const p0, 0x7f140082

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "%1$s"

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {p0, v0, v1, v1, v2}, LKc/k;->v(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v0

    const-string v3, "%2$s"

    invoke-static {p0, v3, v1, v1, v2}, LKc/k;->v(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const-string v2, ""

    filled-new-array {v2, v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-ltz v0, :cond_1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IntelligentFeaturesUtil$Companion$getInfoText$privacySpan$1;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IntelligentFeaturesUtil$Companion$getInfoText$privacySpan$1;-><init>(Landroid/app/Activity;)V

    const/16 p1, 0x21

    invoke-virtual {v2, p0, v0, v1, p1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    :goto_0
    return-object v2
.end method


# virtual methods
.method public final getInfoDialog(Landroid/content/Context;Landroid/widget/ImageButton;)Lm/l;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ImageButton;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "button"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    new-instance v1, Lm/k;

    const v2, 0x7f1501c5

    invoke-direct {v1, p1, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    new-instance v2, LFa/c;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p2}, LFa/c;-><init>(ILjava/lang/Object;)V

    iget-object p2, v1, Lm/k;->a:Lm/h;

    iput-object v2, p2, Lm/h;->o:Landroid/content/DialogInterface$OnDismissListener;

    const p2, 0x7f1402ad

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p2

    iget-object v1, p2, Lm/k;->a:Lm/h;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lm/h;->m:Z

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/databinding/AiSummarizeInfoDetailLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/sec/android/app/sbrowser/databinding/AiSummarizeInfoDetailLayoutBinding;

    move-result-object v1

    const-string v4, "inflate(...)"

    invoke-static {v1, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/sec/android/app/sbrowser/databinding/AiSummarizeInfoDetailLayoutBinding;->aiSummarizeInfoLegalText:Landroid/widget/TextView;

    const-string v5, "aiSummarizeInfoLegalText"

    invoke-static {v4, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v5

    const-string v6, "getActivity(...)"

    invoke-static {v5, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IntelligentFeaturesUtil$Companion;->getInfoText(Landroid/app/Activity;)Landroid/text/Spannable;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletOrDesktopMode(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getPaddingStart()I

    move-result p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0700a8

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v4, p0, v3, v5, v6}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    :cond_0
    invoke-virtual {p2}, Lm/k;->create()Lm/l;

    move-result-object p0

    const-string p2, "create(...)"

    invoke-static {p0, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/databinding/AiSummarizeInfoDetailLayoutBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object p2

    iget-object v1, p0, Lm/l;->f:Lm/j;

    iput-object p2, v1, Lm/j;->g:Landroid/view/View;

    iput v0, v1, Lm/j;->h:I

    iput-boolean v0, v1, Lm/j;->j:Z

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    const v1, 0x1020002

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/view/ViewGroup;

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    if-eqz v2, :cond_3

    const p2, 0x7f060031

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07007e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-static {p1, v2, p2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBlurUiHighUltraThick(Landroid/content/Context;Landroid/view/View;I)Z

    return-object p0
.end method
