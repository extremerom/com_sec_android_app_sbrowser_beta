.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001\u0019B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001d\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001d\u0010\u0010\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\u001d\u0010\u0011\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0011\u0010\u000fJ\u0015\u0010\u0012\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001d\u0010\u0014\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\r\u0010\u0016\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0016\u0010\u0003R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;",
        "",
        "<init>",
        "()V",
        "Landroid/content/DialogInterface;",
        "dialog",
        "Ldb/r;",
        "onDismissFTUDialog",
        "(Landroid/content/DialogInterface;)V",
        "Landroid/app/Activity;",
        "activity",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;",
        "callback",
        "Lm/l;",
        "getSummarizeTurnOnDialog",
        "(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;)Lm/l;",
        "getTranslateTurnOnDialog",
        "getReadArticlesAloudTurnOnDialog",
        "showAllowOnlineProcessingDialog",
        "(Landroid/app/Activity;)V",
        "showFTUDialog",
        "(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;)V",
        "dismissFTUDialog",
        "ftuAlertDialog",
        "Lm/l;",
        "Callback",
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

.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static ftuAlertDialog:Lm/l;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(LB9/b;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->showFTUDialog$lambda$15(Lsb/a;Lsb/a;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;Landroid/view/View;IIII)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->showFTUDialog$lambda$18$lambda$16(Lsb/a;Landroid/view/View;IIII)V

    return-void
.end method

.method public static synthetic c(Ltb/s;Lcom/sec/android/app/sbrowser/databinding/AiSummarizeFtuDialogViewBinding;Ltb/s;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->showFTUDialog$lambda$12$lambda$11(Ltb/s;Lcom/sec/android/app/sbrowser/databinding/AiSummarizeFtuDialogViewBinding;Ltb/s;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->getReadArticlesAloudTurnOnDialog$lambda$2(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/databinding/AiSummarizeFtuDialogViewBinding;Ltb/s;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->showFTUDialog$lambda$5(Lcom/sec/android/app/sbrowser/databinding/AiSummarizeFtuDialogViewBinding;Ltb/s;)I

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;Ltb/s;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->showFTUDialog$lambda$7(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;Ltb/s;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic g(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->showAllowOnlineProcessingDialog$lambda$3(Landroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static final getReadArticlesAloudTurnOnDialog$lambda$2(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;->onResult(Z)V

    return-void
.end method

.method private static final getSummarizeTurnOnDialog$lambda$0(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;->onResult(Z)V

    return-void
.end method

.method private static final getTranslateTurnOnDialog$lambda$1(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;->onResult(Z)V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->getTranslateTurnOnDialog$lambda$1(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->showFTUDialog$lambda$18$lambda$17(Lsb/a;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic j(Landroidx/core/widget/NestedScrollView;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->showFTUDialog$lambda$12$lambda$11$lambda$10$lambda$9(Landroidx/core/widget/NestedScrollView;)V

    return-void
.end method

.method public static synthetic k()Landroid/widget/Button;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->showFTUDialog$lambda$8()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic l(Ltb/s;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->showFTUDialog$lambda$6(Ltb/s;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->getSummarizeTurnOnDialog$lambda$0(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic n(LB9/b;Ltb/s;Lcom/sec/android/app/sbrowser/databinding/AiSummarizeFtuDialogViewBinding;Ltb/s;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->showFTUDialog$lambda$12(Lsb/a;Ltb/s;Lcom/sec/android/app/sbrowser/databinding/AiSummarizeFtuDialogViewBinding;Ltb/s;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private final onDismissFTUDialog(Landroid/content/DialogInterface;)V
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->ftuAlertDialog:Lm/l;

    if-eq p1, p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    sput-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->ftuAlertDialog:Lm/l;

    return-void
.end method

.method private static final showAllowOnlineProcessingDialog$lambda$3(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->startIntelligenceGlobalSettings(Landroid/app/Activity;)V

    return-void
.end method

.method private static final showFTUDialog$lambda$12(Lsb/a;Ltb/s;Lcom/sec/android/app/sbrowser/databinding/AiSummarizeFtuDialogViewBinding;Ltb/s;Landroid/content/DialogInterface;)V
    .locals 1

    invoke-interface {p0}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    if-eqz p0, :cond_0

    new-instance p4, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/a;

    const/4 v0, 0x1

    invoke-direct {p4, p1, v0, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private static final showFTUDialog$lambda$12$lambda$11(Ltb/s;Lcom/sec/android/app/sbrowser/databinding/AiSummarizeFtuDialogViewBinding;Ltb/s;Landroid/view/View;)V
    .locals 0

    iget-boolean p0, p0, Ltb/s;->a:Z

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/databinding/AiSummarizeFtuDialogViewBinding;->scrollView:Landroidx/core/widget/NestedScrollView;

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/a;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBrowsingAssistFTU(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setSummarizeEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setReadArticlesAloudEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setTranslatorEnabled(Z)V

    iput-boolean p1, p2, Ltb/s;->a:Z

    const-string p0, "201"

    const-string p1, "20026"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->dismissFTUDialog()V

    :goto_0
    return-void
.end method

.method private static final showFTUDialog$lambda$12$lambda$11$lambda$10$lambda$9(Landroidx/core/widget/NestedScrollView;)V
    .locals 1

    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->fullScroll(I)Z

    return-void
.end method

.method private static final showFTUDialog$lambda$15(Lsb/a;Lsb/a;)Ldb/r;
    .locals 2

    invoke-interface {p0}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static final showFTUDialog$lambda$18$lambda$16(Lsb/a;Landroid/view/View;IIII)V
    .locals 0

    invoke-interface {p0}, Lsb/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final showFTUDialog$lambda$18$lambda$17(Lsb/a;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-interface {p0}, Lsb/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final showFTUDialog$lambda$5(Lcom/sec/android/app/sbrowser/databinding/AiSummarizeFtuDialogViewBinding;Ltb/s;)I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/AiSummarizeFtuDialogViewBinding;->scrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-boolean p0, p1, Ltb/s;->a:Z

    if-eqz p0, :cond_0

    const p0, 0x7f1405ac

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    iput-boolean p0, p1, Ltb/s;->a:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isKorea()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f14059a

    goto :goto_0

    :cond_1
    const p0, 0x7f1402ad

    :goto_0
    return p0
.end method

.method private static final showFTUDialog$lambda$6(Ltb/s;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Ltb/s;->a:Z

    const-string p0, "201"

    const-string p1, "20025"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final showFTUDialog$lambda$7(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;Ltb/s;Landroid/content/DialogInterface;)V
    .locals 0

    :try_start_0
    iget-boolean p1, p1, Ltb/s;->a:Z

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;->onResult(Z)V

    sget-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->onDismissFTUDialog(Landroid/content/DialogInterface;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NullPointerException happened: "

    const-string p2, "IntelligenceMenuPopupController"

    invoke-static {p1, p0, p2}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final showFTUDialog$lambda$8()Landroid/widget/Button;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->ftuAlertDialog:Lm/l;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final dismissFTUDialog()V
    .locals 2

    sget-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->ftuAlertDialog:Lm/l;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lm/y;->dismiss()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->onDismissFTUDialog(Landroid/content/DialogInterface;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final getReadArticlesAloudTurnOnDialog(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;)Lm/l;
    .locals 6
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "activity"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callback"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/databinding/AiReadHighlightsAloudTurnOnDialogViewBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/sec/android/app/sbrowser/databinding/AiReadHighlightsAloudTurnOnDialogViewBinding;

    move-result-object p0

    const-string v0, "inflate(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isKorea()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f140b9f

    goto :goto_0

    :cond_0
    const v0, 0x7f140b9e

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isKorea()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f140ba2

    goto :goto_1

    :cond_1
    const v1, 0x7f140ba1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%s\n\n%s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/databinding/AiReadHighlightsAloudTurnOnDialogViewBinding;->bodyTextPNTC:Landroid/widget/TextView;

    sget-object v3, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/SamsungAccountPrivacyUtils;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/SamsungAccountPrivacyUtils$Companion;

    const-string v4, "PN"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/SamsungAccountPrivacyUtils$Companion;->getSATermsAndConditionsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "TC"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/SamsungAccountPrivacyUtils$Companion;->getSATermsAndConditionsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v4, v3, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->getLinkedText(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/databinding/AiReadHighlightsAloudTurnOnDialogViewBinding;->bodyTextPNTC:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v0, Lm/k;

    const v1, 0x7f1501c5

    invoke-direct {v0, p1, v1}, Lm/k;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/databinding/AiReadHighlightsAloudTurnOnDialogViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {v0, p0}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isKorea()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f1403db

    goto :goto_2

    :cond_2
    const p1, 0x7f1402ad

    :goto_2
    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/m;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/m;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;I)V

    invoke-virtual {p0, p1, v0}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    const p1, 0x7f1402ac

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    invoke-virtual {p0}, Lm/k;->create()Lm/l;

    move-result-object p0

    const-string p1, "create(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getSummarizeTurnOnDialog(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;)Lm/l;
    .locals 5
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "activity"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callback"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/databinding/AiSummarizeTurnOnDialogViewBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/sec/android/app/sbrowser/databinding/AiSummarizeTurnOnDialogViewBinding;

    move-result-object p0

    const-string v0, "inflate(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isKorea()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f140fef

    goto :goto_0

    :cond_0
    const v0, 0x7f140fec

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isKorea()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f1402a7

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const v1, 0x7f140fee

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s\n\n%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/databinding/AiSummarizeTurnOnDialogViewBinding;->bodyTextPNTC:Landroid/widget/TextView;

    sget-object v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/SamsungAccountPrivacyUtils;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/SamsungAccountPrivacyUtils$Companion;

    const-string v3, "PN"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/SamsungAccountPrivacyUtils$Companion;->getSATermsAndConditionsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "TC"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/SamsungAccountPrivacyUtils$Companion;->getSATermsAndConditionsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    invoke-static {p1, v0, v3, v2, v4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->getLinkedText(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/databinding/AiSummarizeTurnOnDialogViewBinding;->bodyTextPNTC:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v0, Lm/k;

    const v1, 0x7f1501c5

    invoke-direct {v0, p1, v1}, Lm/k;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/databinding/AiSummarizeTurnOnDialogViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {v0, p0}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isKorea()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f1403db

    goto :goto_2

    :cond_2
    const p1, 0x7f1402ad

    :goto_2
    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/m;

    const/4 v1, 0x2

    invoke-direct {v0, p2, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/m;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;I)V

    invoke-virtual {p0, p1, v0}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    const p1, 0x7f1402ac

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    invoke-virtual {p0}, Lm/k;->create()Lm/l;

    move-result-object p0

    const-string p1, "create(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getTranslateTurnOnDialog(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;)Lm/l;
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "activity"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callback"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/databinding/AiTranslateTurnOnDialogViewBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/sec/android/app/sbrowser/databinding/AiTranslateTurnOnDialogViewBinding;

    move-result-object p0

    const-string v0, "inflate(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isKorea()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1400b7

    goto :goto_0

    :cond_0
    const v0, 0x7f1400b6

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isKorea()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f1400b9

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const v1, 0x7f1400b8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s\n\n%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/databinding/AiTranslateTurnOnDialogViewBinding;->bodyTextTC:Landroid/widget/TextView;

    sget-object v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/SamsungAccountPrivacyUtils;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/SamsungAccountPrivacyUtils$Companion;

    const-string v3, "TC"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/SamsungAccountPrivacyUtils$Companion;->getSATermsAndConditionsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->getLinkedText(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/databinding/AiTranslateTurnOnDialogViewBinding;->bodyTextTC:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v0, Lm/k;

    const v1, 0x7f1501c5

    invoke-direct {v0, p1, v1}, Lm/k;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/databinding/AiTranslateTurnOnDialogViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {v0, p0}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isKorea()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f1403db

    goto :goto_2

    :cond_2
    const p1, 0x7f1402ad

    :goto_2
    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/m;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/m;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;I)V

    invoke-virtual {p0, p1, v0}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    const p1, 0x7f1402ac

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    invoke-virtual {p0}, Lm/k;->create()Lm/l;

    move-result-object p0

    const-string p1, "create(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final showAllowOnlineProcessingDialog(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "activity"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lm/k;

    const v0, 0x7f1501c5

    invoke-direct {p0, p1, v0}, Lm/k;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f14058c

    invoke-virtual {p0, v0}, Lm/k;->e(I)V

    const v0, 0x7f140244

    invoke-virtual {p0, v0}, Lm/k;->a(I)V

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/l;-><init>(ILjava/lang/Object;)V

    const p1, 0x7f140ed0

    invoke-virtual {p0, p1, v0}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    const p1, 0x7f1402c1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    iget-object p1, p0, Lm/k;->a:Lm/h;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lm/h;->m:Z

    invoke-virtual {p0}, Lm/k;->create()Lm/l;

    move-result-object p0

    const-string p1, "create(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final showFTUDialog(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;)V
    .locals 6
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->dismissFTUDialog()V

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/databinding/AiSummarizeFtuDialogViewBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/sec/android/app/sbrowser/databinding/AiSummarizeFtuDialogViewBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0802bc

    goto :goto_0

    :cond_1
    const v1, 0x7f0802bb

    :goto_0
    iget-object v2, v0, Lcom/sec/android/app/sbrowser/databinding/AiSummarizeFtuDialogViewBinding;->bodyImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isReadArticlesAloudSupported()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/AiSummarizeFtuDialogViewBinding;->bodyTextTop:Landroid/widget/TextView;

    const v2, 0x7f140092

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isKorea()Z

    move-result v1

    const/16 v2, 0x4f1b

    if-eqz v1, :cond_6

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->shouldUseTabletDid(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->getConfigAiVersion()I

    move-result v1

    if-lt v1, v2, :cond_3

    const v1, 0x7f140097

    goto :goto_1

    :cond_3
    const v1, 0x7f140096

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->getConfigAiVersion()I

    move-result v1

    if-lt v1, v2, :cond_5

    const v1, 0x7f140094

    goto :goto_1

    :cond_5
    const v1, 0x7f140095

    goto :goto_1

    :cond_6
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->shouldUseTabletDid(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->getConfigAiVersion()I

    move-result v1

    if-lt v1, v2, :cond_7

    const v1, 0x7f14009a

    goto :goto_1

    :cond_7
    const v1, 0x7f140099

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->getConfigAiVersion()I

    move-result v1

    if-lt v1, v2, :cond_9

    const v1, 0x7f140093

    goto :goto_1

    :cond_9
    const v1, 0x7f140098

    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isKorea()Z

    move-result v2

    if-eqz v2, :cond_a

    const v2, 0x7f1402a7

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_a
    const v2, 0x7f1402a8

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s\n\n%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/databinding/AiSummarizeFtuDialogViewBinding;->bodyTextPNTC:Landroid/widget/TextView;

    sget-object v3, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/SamsungAccountPrivacyUtils;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/SamsungAccountPrivacyUtils$Companion;

    const-string v4, "PN"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/SamsungAccountPrivacyUtils$Companion;->getSATermsAndConditionsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "TC"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/SamsungAccountPrivacyUtils$Companion;->getSATermsAndConditionsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    invoke-static {p1, v1, v4, v3, v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->getLinkedText(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/AiSummarizeFtuDialogViewBinding;->bodyTextPNTC:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v1, Ltb/s;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Ltb/s;->a:Z

    new-instance v2, Ltb/s;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lm/k;

    const v5, 0x7f1501c5

    invoke-direct {v4, p1, v5}, Lm/k;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/databinding/AiSummarizeFtuDialogViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {v4, p1}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    move-result-object p1

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    new-instance v4, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/l;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/l;-><init>(ILjava/lang/Object;)V

    const v5, 0x7f1402ac

    invoke-virtual {p1, v5, v4}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    new-instance v4, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/n;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p2, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p1, Lm/k;->a:Lm/h;

    iput-object v4, p2, Lm/h;->o:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1}, Lm/k;->create()Lm/l;

    move-result-object p1

    sput-object p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->ftuAlertDialog:Lm/l;

    new-instance p2, LB9/b;

    const/16 v4, 0xe

    invoke-direct {p2, v4}, LB9/b;-><init>(I)V

    if-eqz p1, :cond_b

    new-instance v4, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/o;

    invoke-direct {v4, p2, v1, v0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/o;-><init>(LB9/b;Ltb/s;Lcom/sec/android/app/sbrowser/databinding/AiSummarizeFtuDialogViewBinding;Ltb/s;)V

    invoke-virtual {p1, v4}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :cond_b
    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;

    const/4 v1, 0x1

    invoke-direct {p1, v1, p2, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, v0, Lcom/sec/android/app/sbrowser/databinding/AiSummarizeFtuDialogViewBinding;->scrollView:Landroidx/core/widget/NestedScrollView;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/e;

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/f;

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :try_start_0
    sget-object p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->ftuAlertDialog:Lm/l;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string p2, "IntelligenceMenuPopupController"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->dismissFTUDialog()V

    :cond_c
    :goto_3
    return-void
.end method
