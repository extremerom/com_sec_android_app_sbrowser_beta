.class public final Lcom/sec/android/app/sbrowser/settings/AboutFragment;
.super Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/AboutFragment$Companion;,
        Lcom/sec/android/app/sbrowser/settings/AboutFragment$State;,
        Lcom/sec/android/app/sbrowser/settings/AboutFragment$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 f2\u00020\u0001:\u0002fgB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J+\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J!\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\r2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0017\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0003J\u000f\u0010\u0018\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0003J\u000f\u0010\u0019\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0003J\u0017\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u0003J\u001f\u0010\"\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\n\u001a\u00020!H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010\'\u001a\u00020&2\u0006\u0010%\u001a\u00020$H\u0016\u00a2\u0006\u0004\u0008\'\u0010(J\u000f\u0010)\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008)\u0010\u0003J\u000f\u0010*\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008*\u0010\u0003J\u000f\u0010+\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008+\u0010\u0003J\u000f\u0010,\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008,\u0010\u0003J\u000f\u0010-\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008-\u0010\u0003J\u0017\u0010/\u001a\u00020\u00062\u0006\u0010.\u001a\u00020&H\u0002\u00a2\u0006\u0004\u0008/\u00100J\u000f\u00101\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u00081\u0010\u0003J!\u00104\u001a\u00020\u00062\u0008\u0010\u0014\u001a\u0004\u0018\u00010\r2\u0006\u00103\u001a\u000202H\u0002\u00a2\u0006\u0004\u00084\u00105J\u000f\u00106\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u00086\u0010\u0003J\u000f\u00107\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u00087\u0010\u0003J\u000f\u00108\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u00088\u0010\u0003J\u000f\u00109\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u00089\u0010\u0003J\u000f\u0010:\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008:\u0010\u0003J\u000f\u0010;\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008;\u0010\u0003J\u000f\u0010<\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008<\u0010\u0003J\u0017\u0010?\u001a\u00020\u00062\u0006\u0010>\u001a\u00020=H\u0002\u00a2\u0006\u0004\u0008?\u0010@J\u000f\u0010A\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008A\u0010\u0003R\u0018\u0010C\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0016\u0010E\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0016\u0010G\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010FR\u0016\u0010H\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010FR\u0016\u0010I\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010FR\u0018\u0010J\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\u0014\u0010L\u001a\u0002028\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR\u0018\u0010O\u001a\u0004\u0018\u00010N8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010PR\u0018\u0010Q\u001a\u0004\u0018\u00010N8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Q\u0010PR\u0018\u0010S\u001a\u0004\u0018\u00010R8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008S\u0010TR\u0018\u0010U\u001a\u0004\u0018\u00010R8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008U\u0010TR\u0018\u0010V\u001a\u0004\u0018\u00010R8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008V\u0010TR\u0018\u0010W\u001a\u0004\u0018\u00010R8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010TR\u0018\u0010Y\u001a\u0004\u0018\u00010X8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Y\u0010ZR\u0018\u0010[\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008[\u0010\\R\u0018\u0010]\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008]\u0010\\R\u0018\u0010^\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008^\u0010\\R\u0018\u0010_\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008_\u0010\\R\u0018\u0010a\u001a\u0004\u0018\u00010`8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008a\u0010bR\u0018\u0010d\u001a\u0004\u0018\u00010c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008d\u0010e\u00a8\u0006h"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/settings/AboutFragment;",
        "Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ldb/r;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "",
        "getScreenID",
        "()Ljava/lang/String;",
        "getNavigateUpID",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onStart",
        "onResume",
        "onDestroyView",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "(Landroid/content/res/Configuration;)V",
        "onDestroy",
        "Landroid/view/Menu;",
        "menu",
        "Landroid/view/MenuInflater;",
        "onCreateOptionsMenu",
        "(Landroid/view/Menu;Landroid/view/MenuInflater;)V",
        "Landroid/view/MenuItem;",
        "item",
        "",
        "onOptionsItemSelected",
        "(Landroid/view/MenuItem;)Z",
        "checkUpdateByCache",
        "checkUpdateByCase",
        "showTermsNConditions",
        "showOpenSourceLicense",
        "updateViewHeight",
        "isDivided",
        "updateLayout",
        "(Z)V",
        "setVariables",
        "",
        "visibility",
        "setVisibility",
        "(Landroid/view/View;I)V",
        "initVersionCheck",
        "checkUpdate",
        "checkUpdateOnGooglePlay",
        "checkUpdateOnGalaxyStore",
        "handleVersionUpdateViaPlayStore",
        "handleVersionUpdate",
        "updateButtonWidth",
        "Lcom/sec/android/app/sbrowser/settings/AboutFragment$State;",
        "state",
        "updateViews",
        "(Lcom/sec/android/app/sbrowser/settings/AboutFragment$State;)V",
        "setListeners",
        "Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;",
        "binding",
        "Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;",
        "isMultiWindow",
        "Z",
        "isDexMode",
        "bigDisplay",
        "dividedPage",
        "isNeededInfoSnackbar",
        "Ljava/lang/Boolean;",
        "maxDisplaySize",
        "I",
        "Landroid/view/View$OnClickListener;",
        "updateListener",
        "Landroid/view/View$OnClickListener;",
        "retryListener",
        "Landroid/widget/Button;",
        "openSourceLicense",
        "Landroid/widget/Button;",
        "openSourceLicenseLand",
        "termsNConditions",
        "termsNConditionsLand",
        "Landroid/widget/LinearLayout;",
        "openSourceLicenseLandscapeLayout",
        "Landroid/widget/LinearLayout;",
        "aboutPageBottomLayout",
        "Landroid/view/View;",
        "aboutPageAppDetails",
        "aboutPageUpdateButtonLayout",
        "aboutPageMidLayout",
        "Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;",
        "listener",
        "Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;",
        "Lcom/sec/android/app/sbrowser/common/stub/StubUtil$PlayListener;",
        "pListener",
        "Lcom/sec/android/app/sbrowser/common/stub/StubUtil$PlayListener;",
        "Companion",
        "State",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/settings/AboutFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private aboutPageAppDetails:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private aboutPageBottomLayout:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private aboutPageMidLayout:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private aboutPageUpdateButtonLayout:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private bigDisplay:Z

.field private binding:Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private dividedPage:Z

.field private isDexMode:Z

.field private isMultiWindow:Z

.field private isNeededInfoSnackbar:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private listener:Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final maxDisplaySize:I

.field private openSourceLicense:Landroid/widget/Button;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private openSourceLicenseLand:Landroid/widget/Button;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private openSourceLicenseLandscapeLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pListener:Lcom/sec/android/app/sbrowser/common/stub/StubUtil$PlayListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private retryListener:Landroid/view/View$OnClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private termsNConditions:Landroid/widget/Button;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private termsNConditionsLand:Landroid/widget/Button;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private updateListener:Landroid/view/View$OnClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/AboutFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/AboutFragment$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->Companion:Lcom/sec/android/app/sbrowser/settings/AboutFragment$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;-><init>()V

    const/16 v0, 0x438

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->maxDisplaySize:I

    return-void
.end method

.method public static final synthetic access$checkUpdate(Lcom/sec/android/app/sbrowser/settings/AboutFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->checkUpdate()V

    return-void
.end method

.method public static final synthetic access$checkUpdateOnGalaxyStore(Lcom/sec/android/app/sbrowser/settings/AboutFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->checkUpdateOnGalaxyStore()V

    return-void
.end method

.method public static final synthetic access$handleVersionUpdate(Lcom/sec/android/app/sbrowser/settings/AboutFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->handleVersionUpdate()V

    return-void
.end method

.method public static final synthetic access$handleVersionUpdateViaPlayStore(Lcom/sec/android/app/sbrowser/settings/AboutFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->handleVersionUpdateViaPlayStore()V

    return-void
.end method

.method public static final synthetic access$isNeededInfoSnackbar$p(Lcom/sec/android/app/sbrowser/settings/AboutFragment;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->isNeededInfoSnackbar:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static final synthetic access$updateViews(Lcom/sec/android/app/sbrowser/settings/AboutFragment;Lcom/sec/android/app/sbrowser/settings/AboutFragment$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->updateViews(Lcom/sec/android/app/sbrowser/settings/AboutFragment$State;)V

    return-void
.end method

.method private final checkUpdate()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->getBetaInstallPackage()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->isAppStoreAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->initVersionCheck()V

    const-string v0, "com.android.vending"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->isPkgAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->checkUpdateOnGooglePlay()V

    goto :goto_0

    :cond_1
    const-string v0, "com.sec.android.app.samsungapps"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->isPkgAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->checkUpdateOnGalaxyStore()V

    :cond_2
    :goto_0
    return-void
.end method

.method private final checkUpdateByCache()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->setListeners()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/AboutFragment$State;->RETRY:Lcom/sec/android/app/sbrowser/settings/AboutFragment$State;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->updateViews(Lcom/sec/android/app/sbrowser/settings/AboutFragment$State;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f140803

    const/4 v1, -0x1

    invoke-static {v0, v1, p0}, LH6/o;->h(IILandroid/view/View;)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    goto :goto_0

    :cond_0
    const-string v0, "AboutFragment"

    const-string v1, "condition check to update"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->is24HoursPassedAfterLastChecking()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->checkUpdateByCase()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->hasNewUpdate()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/AboutFragment$State;->UPDATE:Lcom/sec/android/app/sbrowser/settings/AboutFragment$State;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->updateViews(Lcom/sec/android/app/sbrowser/settings/AboutFragment$State;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/android/app/sbrowser/settings/AboutFragment$State;->NO_UPDATE:Lcom/sec/android/app/sbrowser/settings/AboutFragment$State;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->updateViews(Lcom/sec/android/app/sbrowser/settings/AboutFragment$State;)V

    :goto_0
    return-void
.end method

.method private final checkUpdateByCase()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->checkUpdate()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "AboutFragment"

    const-string v1, "Samsung Account not signed in"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "NONE"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setCountryCode(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->checkUpdate()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateByCase$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateByCase$1;-><init>(Lcom/sec/android/app/sbrowser/settings/AboutFragment;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->getAccessToken(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;Z)V

    :goto_0
    return-void
.end method

.method private final checkUpdateOnGalaxyStore()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateOnGalaxyStore$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateOnGalaxyStore$1;-><init>(Lcom/sec/android/app/sbrowser/settings/AboutFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->listener:Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->progressBar:Landroidx/appcompat/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->listener:Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->checkUpdateOnGalaxyStore(Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;)V

    return-void
.end method

.method private final checkUpdateOnGooglePlay()V
    .locals 2

    const-string v0, "AboutFragment"

    const-string v1, "[Play] checkUpdateOnGooglePlay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateOnGooglePlay$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateOnGooglePlay$1;-><init>(Lcom/sec/android/app/sbrowser/settings/AboutFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->pListener:Lcom/sec/android/app/sbrowser/common/stub/StubUtil$PlayListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->progressBar:Landroidx/appcompat/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->pListener:Lcom/sec/android/app/sbrowser/common/stub/StubUtil$PlayListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->checkUpdateOnGooglePlay(Lcom/sec/android/app/sbrowser/common/stub/StubUtil$PlayListener;)V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/settings/AboutFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->onViewCreated$lambda$0(Lcom/sec/android/app/sbrowser/settings/AboutFragment;Landroid/view/View;)V

    return-void
.end method

.method private final handleVersionUpdate()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/AboutFragment$State;->UPDATE:Lcom/sec/android/app/sbrowser/settings/AboutFragment$State;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->updateViews(Lcom/sec/android/app/sbrowser/settings/AboutFragment$State;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setLastCheckTime()V

    return-void
.end method

.method private final handleVersionUpdateViaPlayStore()V
    .locals 2

    const-string v0, "AboutFragment"

    const-string v1, "update via Play Store"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->handleVersionUpdate()V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/AboutFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->onViewCreated$lambda$2(Lcom/sec/android/app/sbrowser/settings/AboutFragment;Landroid/view/View;)V

    return-void
.end method

.method private final initVersionCheck()V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setGooglePlayUpdateAvailable(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->clearUpdateAvailableVersionCode()V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/settings/AboutFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->setListeners$lambda$6(Lcom/sec/android/app/sbrowser/settings/AboutFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/settings/AboutFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->onViewCreated$lambda$3(Lcom/sec/android/app/sbrowser/settings/AboutFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/settings/AboutFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->onViewCreated$lambda$1(Lcom/sec/android/app/sbrowser/settings/AboutFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/settings/AboutFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->setListeners$lambda$7(Lcom/sec/android/app/sbrowser/settings/AboutFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final onViewCreated$lambda$0(Lcom/sec/android/app/sbrowser/settings/AboutFragment;Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->openSourceLicense:Landroid/widget/Button;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->showOpenSourceLicense()V

    return-void
.end method

.method private static final onViewCreated$lambda$1(Lcom/sec/android/app/sbrowser/settings/AboutFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->showTermsNConditions()V

    return-void
.end method

.method private static final onViewCreated$lambda$2(Lcom/sec/android/app/sbrowser/settings/AboutFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->showTermsNConditions()V

    return-void
.end method

.method private static final onViewCreated$lambda$3(Lcom/sec/android/app/sbrowser/settings/AboutFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->showOpenSourceLicense()V

    return-void
.end method

.method private final setListeners()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->updateListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/a;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/a;-><init>(Lcom/sec/android/app/sbrowser/settings/AboutFragment;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->updateListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/a;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/a;-><init>(Lcom/sec/android/app/sbrowser/settings/AboutFragment;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->retryListener:Landroid/view/View$OnClickListener;

    :cond_0
    return-void
.end method

.method private static final setListeners$lambda$6(Lcom/sec/android/app/sbrowser/settings/AboutFragment;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f140c40

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->callAppStore(Landroid/app/Activity;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setLastCheckTime()V

    return-void
.end method

.method private static final setListeners$lambda$7(Lcom/sec/android/app/sbrowser/settings/AboutFragment;Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->listener:Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;

    if-nez p1, :cond_0

    const-string p1, "AboutFragment"

    const-string v0, "slistener is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->isNeededInfoSnackbar:Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->progressBar:Landroidx/appcompat/widget/SeslProgressBar;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->setVisibility(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->updateButton:Landroid/widget/Button;

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    const/4 v1, 0x4

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->setVisibility(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->versionStatus:Landroid/widget/TextView;

    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->setVisibility(Landroid/view/View;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->isGooglePlayUpdateAvailable()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->checkUpdateOnGalaxyStore()V

    :cond_4
    return-void
.end method

.method private final setVariables()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->isMultiWindow:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->isDexMode:Z

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v4

    invoke-static {v4}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    if-nez v0, :cond_2

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->maxDisplaySize:I

    if-le v0, v4, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->bigDisplay:Z

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge v0, v3, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->dividedPage:Z

    return-void
.end method

.method private final setVisibility(Landroid/view/View;I)V
    .locals 0

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eq p0, p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private final showOpenSourceLicense()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f140c3e

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const-string v0, "https://www.internet.apps.samsung.com/license/index.html"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->openWebPageInCustomTab(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private final showTermsNConditions()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f140c3f

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/public_things/PublicPages;->termsOfService()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->openWebPageInCustomTab(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private final updateButtonWidth()V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;

    if-eqz v0, :cond_b

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0712bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v3

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0712bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletOrDesktopMode(Landroid/app/Activity;)Z

    move-result v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v5

    invoke-static {v5}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableStandardViewMode(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v5

    invoke-static {v5}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-eq v6, v5, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableStandardViewMode(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v3, v3, 0x3c

    div-int/lit8 v3, v3, 0x64

    goto :goto_0

    :cond_4
    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->isDexMode:Z

    if-eqz v5, :cond_5

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v3, v3, 0x3c

    div-int/lit8 v3, v3, 0x64

    goto :goto_0

    :cond_5
    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->bigDisplay:Z

    if-nez v5, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v5

    invoke-static {v5}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v6, v5, :cond_7

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscape(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_7

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v3, v3, 0x32

    div-int/lit8 v3, v3, 0x64

    :cond_7
    :goto_0
    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->isMultiWindow:Z

    if-eqz v5, :cond_9

    if-eqz v4, :cond_9

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->dividedPage:Z

    if-eqz v3, :cond_8

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v2, v2, 0x3c

    div-int/lit8 v3, v2, 0x64

    goto :goto_1

    :cond_8
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v3, v3, 0x3c

    div-int/lit8 v3, v3, 0x64

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_9
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableStandardViewMode(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->dividedPage:Z

    if-eqz v2, :cond_a

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const v2, 0x3efd0

    mul-int/2addr v1, v2

    const v2, 0xf4240

    div-int v3, v1, v2

    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->openSourceLicense:Landroid/widget/Button;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->openSourceLicenseLand:Landroid/widget/Button;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->termsNConditions:Landroid/widget/Button;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setWidth(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->termsNConditionsLand:Landroid/widget/Button;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setWidth(I)V

    iget-object p0, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->updateButton:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setWidth(I)V

    iget-object p0, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->appName:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setWidth(I)V

    iget-object p0, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->versionStatus:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setWidth(I)V

    :cond_b
    return-void
.end method

.method private final updateLayout(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->openSourceLicenseLandscapeLayout:Landroid/widget/LinearLayout;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->openSourceLicenseLand:Landroid/widget/Button;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->openSourceLicense:Landroid/widget/Button;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->termsNConditionsLand:Landroid/widget/Button;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->aboutPageMidLayout:Landroid/view/View;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->termsNConditions:Landroid/widget/Button;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->openSourceLicense:Landroid/widget/Button;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->openSourceLicenseLandscapeLayout:Landroid/widget/LinearLayout;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->openSourceLicenseLand:Landroid/widget/Button;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->termsNConditions:Landroid/widget/Button;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->aboutPageMidLayout:Landroid/view/View;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->termsNConditionsLand:Landroid/widget/Button;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private final updateViewHeight()V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->aboutPageBottomLayout:Landroid/view/View;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {v1, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->aboutPageBottomLayout:Landroid/view/View;

    invoke-static {v4}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->openSourceLicenseLandscapeLayout:Landroid/widget/LinearLayout;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v1, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x11

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->openSourceLicenseLandscapeLayout:Landroid/widget/LinearLayout;

    invoke-static {v5}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->aboutPageAppDetails:Landroid/view/View;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v1, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->aboutPageAppDetails:Landroid/view/View;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->aboutPageBottomLayout:Landroid/view/View;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    const/4 v1, -0x2

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->aboutPageUpdateButtonLayout:Landroid/view/View;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->aboutPageAppDetails:Landroid/view/View;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v1}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private final updateViews(Lcom/sec/android/app/sbrowser/settings/AboutFragment$State;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->progressBar:Landroidx/appcompat/widget/SeslProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    sget-object v1, Lcom/sec/android/app/sbrowser/settings/AboutFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    const/4 v3, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    if-ne p1, v3, :cond_0

    iget-object p1, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->updateButton:Landroid/widget/Button;

    const v1, 0x7f140ebd

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->updateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->retryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->versionStatus:Landroid/widget/TextView;

    const v1, 0x7f140ebc

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->versionStatus:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->setVisibility(Landroid/view/View;I)V

    iget-object p1, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->updateButton:Landroid/widget/Button;

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->setVisibility(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    iget-object p1, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->versionStatus:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->setVisibility(Landroid/view/View;I)V

    iget-object p1, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->updateButton:Landroid/widget/Button;

    invoke-direct {p0, p1, v3}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->setVisibility(Landroid/view/View;I)V

    iget-object p0, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->versionStatus:Landroid/widget/TextView;

    const p1, 0x7f140ec0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object p1, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->updateButton:Landroid/widget/Button;

    const v1, 0x7f140ebe

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->updateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->updateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->versionStatus:Landroid/widget/TextView;

    const v1, 0x7f140ebf

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->versionStatus:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->setVisibility(Landroid/view/View;I)V

    iget-object p1, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->updateButton:Landroid/widget/Button;

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->setVisibility(Landroid/view/View;I)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public getNavigateUpID()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const v0, 0x7f140c3d

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "528"

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->setVariables()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->dividedPage:Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->updateLayout(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->updateButtonWidth()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->updateViewHeight()V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "menu"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f100025

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0b00ec

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140ebb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p3, "inflater"

    invoke-static {p1, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    const p2, 0x7f0b02ee

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lt/k0;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->updateListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->retryListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->listener:Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->pListener:Lcom/sec/android/app/sbrowser/common/stub/StubUtil$PlayListener;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setAboutFragment(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "AboutFragment"

    const-string v1, "Activity started with intent flags: "

    const-string v2, "package:"

    const-string v3, "item"

    invoke-static {p1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v3, 0x7f0b00ec

    if-ne p1, v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const v3, 0x7f140c3c

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v4

    invoke-static {v4}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v2, 0x10008000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, 0x1

    return p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    const-string p1, "startAppInfo failed e="

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;->onResume()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_NIGHT:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_SETTINGS_ABOUT_FRAGMENT:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarColor(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->shouldUseDarkStatusBar()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f060bac

    goto :goto_1

    :cond_1
    const v0, 0x7f060d8d

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setStatusBarColor(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->setVariables()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->openSourceLicense:Landroid/widget/Button;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->dividedPage:Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->updateLayout(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->updateButtonWidth()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->updateViewHeight()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->isNeededInfoSnackbar:Ljava/lang/Boolean;

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->isMultiWindow:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->isDexMode:Z

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->appName:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->getAppNameId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    const p2, 0x7f060baa

    goto :goto_0

    :cond_0
    const p2, 0x7f06024d

    :goto_0
    invoke-virtual {v0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    const v1, 0x7f0b0b40

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    const v2, 0x7f0b0b31

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    const v3, 0x7f0b02c4

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v2, p2}, Landroid/view/View;->setBackgroundColor(I)V

    const p2, 0x7f0b00ee

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isDisasterNetModel()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->checkUpdateByCache()V

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f140ec1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    const-string v2, "AboutFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "-"

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const p2, 0x7f0b0866

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->openSourceLicense:Landroid/widget/Button;

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    const v1, 0x7f14085f

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->openSourceLicense:Landroid/widget/Button;

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/settings/a;-><init>(Lcom/sec/android/app/sbrowser/settings/AboutFragment;I)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0b0d30

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->termsNConditions:Landroid/widget/Button;

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    const v2, 0x7f1404c4

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->termsNConditions:Landroid/widget/Button;

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->termsNConditions:Landroid/widget/Button;

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/settings/a;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/settings/a;-><init>(Lcom/sec/android/app/sbrowser/settings/AboutFragment;I)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0b0868

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->openSourceLicenseLandscapeLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f0b0d31

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->termsNConditionsLand:Landroid/widget/Button;

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->termsNConditionsLand:Landroid/widget/Button;

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->termsNConditionsLand:Landroid/widget/Button;

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/a;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/sbrowser/settings/a;-><init>(Lcom/sec/android/app/sbrowser/settings/AboutFragment;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0b0867

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->openSourceLicenseLand:Landroid/widget/Button;

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->openSourceLicenseLand:Landroid/widget/Button;

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/a;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/a;-><init>(Lcom/sec/android/app/sbrowser/settings/AboutFragment;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->updateButtonWidth()V

    const p2, 0x7f0b001c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->aboutPageBottomLayout:Landroid/view/View;

    const p2, 0x7f0b00eb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->aboutPageAppDetails:Landroid/view/View;

    const p2, 0x7f0b0df4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->aboutPageUpdateButtonLayout:Landroid/view/View;

    const p2, 0x7f0b001d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->aboutPageMidLayout:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->updateViewHeight()V

    return-void
.end method
