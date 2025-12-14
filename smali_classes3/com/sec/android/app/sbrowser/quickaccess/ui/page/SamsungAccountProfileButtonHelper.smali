.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0015\u0008\u0007\u0018\u0000 +2\u00020\u0001:\u0001+B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u000eJ\u0017\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u000eJ\u0015\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0015\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010!\u001a\u0004\u0008\"\u0010#R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010$R\u0019\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010%\u001a\u0004\u0008&\u0010\'R\u0016\u0010(\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010$R\u0016\u0010)\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010*\u00a8\u0006,"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;",
        "",
        "Landroid/content/Context;",
        "context",
        "Landroid/widget/ImageButton;",
        "button",
        "",
        "isForPreview",
        "Landroid/view/View$OnClickListener;",
        "callback",
        "<init>",
        "(Landroid/content/Context;Landroid/widget/ImageButton;ZLandroid/view/View$OnClickListener;)V",
        "Ldb/r;",
        "updateContentDescription",
        "()V",
        "shouldShowAccountButton",
        "()Z",
        "updateSAProfileImageUrl",
        "",
        "url",
        "loadAccountImage",
        "(Ljava/lang/String;)V",
        "setDefaultImage",
        "",
        "visibility",
        "setAccountButtonVisibility",
        "(I)V",
        "isSolidColorLightThemed",
        "updateIconColor",
        "(Z)V",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "Landroid/widget/ImageButton;",
        "getButton",
        "()Landroid/widget/ImageButton;",
        "Z",
        "Landroid/view/View$OnClickListener;",
        "getCallback",
        "()Landroid/view/View$OnClickListener;",
        "isDefaultIconShowing",
        "profileImageUrl",
        "Ljava/lang/String;",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final button:Landroid/widget/ImageButton;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final callback:Landroid/view/View$OnClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isDefaultIconShowing:Z

.field private final isForPreview:Z

.field private profileImageUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageButton;ZLandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ImageButton;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "button"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->button:Landroid/widget/ImageButton;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->isForPreview:Z

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->callback:Landroid/view/View$OnClickListener;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->isDefaultIconShowing:Z

    const-string p3, ""

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->profileImageUrl:Ljava/lang/String;

    sget-object p3, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->Companion:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$Companion;

    const/4 p4, 0x0

    invoke-static {p3, p4, p2, p4}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$Companion;->getInstance$default(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$Companion;Landroid/content/Context;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->getSamsungAccountSignInStatusLiveData()Landroidx/lifecycle/S;

    move-result-object p2

    check-cast p1, Landroidx/lifecycle/J;

    new-instance p3, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/i;

    const/4 p4, 0x2

    invoke-direct {p3, p4, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/i;-><init>(ILjava/lang/Object;)V

    new-instance p4, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p4, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {p2, p1, p4}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->updateIconColor(Z)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;Ljava/lang/Boolean;)Ldb/r;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Account Button isSignedIn: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SamsungAccountProfileButtonHelper"

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->button:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->setAccountButtonVisibility(I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;Ljava/lang/Boolean;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->_init_$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;Ljava/lang/Boolean;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setDefaultIconShowing$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->isDefaultIconShowing:Z

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->setAccountButtonVisibility$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;Landroid/view/View;)V

    return-void
.end method

.method private final loadAccountImage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070745

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/l;->a()Lcom/bumptech/glide/j;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/j;->D(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Lh4/a;->g(II)Lh4/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LZ3/n;->c:LZ3/n;

    new-instance v1, LZ3/j;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v0, v1}, Lh4/a;->s(LZ3/n;LZ3/e;)Lh4/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper$loadAccountImage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper$loadAccountImage$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;)V

    sget-object p0, Ll4/f;->a:LR5/n;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p1, p0}, Lcom/bumptech/glide/j;->A(Li4/d;Lh4/f;Lh4/a;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private static final setAccountButtonVisibility$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSepLite()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->updateSAProfileImageUrl()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->callback:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private final setDefaultImage()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->button:Landroid/widget/ImageButton;

    const v1, 0x7f0802be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->button:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->profileImageUrl:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->isDefaultIconShowing:Z

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->updateIconColor(Z)V

    return-void
.end method

.method private final shouldShowAccountButton()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->checkSamsungAccountProfileSupportVersion()Z

    move-result v0

    const-string v2, "SamsungAccountProfileButtonHelper"

    if-nez v0, :cond_1

    const-string p0, "Samsung Account profile not supported"

    invoke-static {v2, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->isSamsungAccountSettingsSupported()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "Samsung Account settings not supported"

    invoke-static {v2, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->context:Landroid/content/Context;

    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {p0, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabUtils;->getCurrentTab(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isUnifiedHomepageUrl()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method private final updateContentDescription()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->hasAccount()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f14068b

    goto :goto_0

    :cond_0
    const v1, 0x7f14068c

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->isForPreview:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->button:Landroid/widget/ImageButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->button:Landroid/widget/ImageButton;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->button:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->button:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    :goto_1
    return-void
.end method

.method private final updateSAProfileImageUrl()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->getSamsungAccountProfileImageUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateSAProfileImageUrl isNull="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SamsungAccountProfileButtonHelper"

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->isDefaultIconShowing:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->setDefaultImage()V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->profileImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->isDefaultIconShowing:Z

    if-eqz v1, :cond_3

    :cond_2
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->profileImageUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->loadAccountImage(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final getButton()Landroid/widget/ImageButton;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->button:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public final setAccountButtonVisibility(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setAccountButtonVisibility: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SamsungAccountProfileButtonHelper"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->shouldShowAccountButton()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSepLite()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->hasAccount()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "setAccountButtonVisibility: already signed in"

    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->updateSAProfileImageUrl()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->profileImageUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->isDefaultIconShowing:Z

    if-nez p1, :cond_3

    :cond_2
    const-string p1, "setAccountButtonVisibility: logged out"

    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->setDefaultImage()V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->button:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->updateContentDescription()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->button:Landroid/widget/ImageButton;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/c;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->button:Landroid/widget/ImageButton;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->button:Landroid/widget/ImageButton;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    return-void
.end method

.method public final updateIconColor(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->button:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->isDefaultIconShowing:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->context:Landroid/content/Context;

    if-eqz p1, :cond_0

    const p1, 0x7f060895

    goto :goto_0

    :cond_0
    const p1, 0x7f060896

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
