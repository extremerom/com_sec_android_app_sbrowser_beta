.class public final Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMinorPage;
.super Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMinorPage$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u000f\u0010\n\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u0008J\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMinorPage;",
        "Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;",
        "Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;",
        "tab",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V",
        "Ldb/r;",
        "launchWebContentRestriction",
        "()V",
        "initializeText",
        "initializeButtons",
        "",
        "detail",
        "sendClickLog",
        "(Ljava/lang/String;)V",
        "Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;",
        "getTab",
        "()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMinorPage$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final tab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMinorPage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMinorPage$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMinorPage;->Companion:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMinorPage$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMinorPage;->$stable:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tab"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;-><init>(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMinorPage;->tab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMinorPage;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMinorPage;->initializeButtons$lambda$1(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMinorPage;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMinorPage;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMinorPage;->initializeButtons$lambda$0(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMinorPage;Landroid/view/View;)V

    return-void
.end method

.method private static final initializeButtons$lambda$0(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMinorPage;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMinorPage;->launchWebContentRestriction()V

    const-string p1, "Restrictions"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMinorPage;->sendClickLog(Ljava/lang/String;)V

    return-void
.end method

.method private static final initializeButtons$lambda$1(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMinorPage;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->onGoBackButtonPressed()V

    return-void
.end method

.method private final launchWebContentRestriction()V
    .locals 3

    const-string v0, "ParentalControlMinorPage"

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "parentalcare://launch?action=website"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "Starting ParentalCare for web content restrictions."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v1, Ldb/r;->a:Ldb/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/content/ActivityNotFoundException;

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    const-string v1, "Failed to start ParentalCare because it is not installed or does not support \"Web content restrictions\"."

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->make(Landroid/app/Activity;Ljava/lang/CharSequence;)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-string v2, "Failed to start ParentalCare by unexpected error."

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    invoke-static {p0, v2}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->make(Landroid/app/Activity;Ljava/lang/CharSequence;)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to start ParentalCare by unexpected error. - "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public initializeButtons()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mAskPermissionButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mEnterPasswordButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mWebContentRestrictionButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mWebContentRestrictionButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/sbrowser/parental_control/i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/parental_control/i;-><init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMinorPage;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mGoBackButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/sbrowser/parental_control/i;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/parental_control/i;-><init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMinorPage;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initializeText()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f1408aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mDescriptionView:Landroid/widget/TextView;

    const v0, 0x7f1408a8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public sendClickLog(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "detail"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "201"

    const-string v0, "8221"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
