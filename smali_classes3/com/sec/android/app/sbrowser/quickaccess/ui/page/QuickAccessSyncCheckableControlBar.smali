.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/settings/AppBarOffsetChangeCallback;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001b\u0010\u0017\u001a\u00020\u00082\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0019\u0010\u0014R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u001aR\u0014\u0010\u001c\u001a\u00020\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u001f\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010!R\u0014\u0010%\u001a\u00020\"8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$\u00a8\u0006&"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;",
        "Lcom/sec/android/app/sbrowser/common/model/settings/AppBarOffsetChangeCallback;",
        "Lcom/sec/android/app/sbrowser/settings/SettingsActivity;",
        "activity",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;)V",
        "",
        "isCustom",
        "Ldb/r;",
        "setActionBar",
        "(Z)V",
        "",
        "titleAlpha",
        "onTitleBarAlphaChanged",
        "(F)V",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;",
        "syncFragmentItem",
        "setTitleBarInformation",
        "(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;)V",
        "announceCheckboxState",
        "()V",
        "Lkotlin/Function0;",
        "onCheckBoxClick",
        "setCheckBoxClickListener",
        "(Lsb/a;)V",
        "onSelectAllItems",
        "Lcom/sec/android/app/sbrowser/settings/SettingsActivity;",
        "Lm/b;",
        "appBar",
        "Lm/b;",
        "Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncActionBarBinding;",
        "actionBarBinding",
        "Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncActionBarBinding;",
        "Z",
        "",
        "getCheckedText",
        "()Ljava/lang/String;",
        "checkedText",
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
.field private final actionBarBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncActionBarBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final activity:Lcom/sec/android/app/sbrowser/settings/SettingsActivity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final appBar:Lm/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isCustom:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/settings/SettingsActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->activity:Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-virtual {p1}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->appBar:Lm/b;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncActionBarBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncActionBarBinding;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->actionBarBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncActionBarBinding;

    return-void
.end method

.method public static synthetic a(Lsb/a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->setCheckBoxClickListener$lambda$5(Lsb/a;Landroid/view/View;)V

    return-void
.end method

.method private final getCheckedText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->activity:Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->actionBarBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncActionBarBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncActionBarBinding;->checkAllCheckbox:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckbox;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f14067d

    goto :goto_0

    :cond_0
    const p0, 0x7f14067e

    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final setCheckBoxClickListener$lambda$5(Lsb/a;Landroid/view/View;)V
    .locals 0

    invoke-interface {p0}, Lsb/a;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final announceCheckboxState()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->actionBarBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncActionBarBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncActionBarBinding;->checkAllLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->getCheckedText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onSelectAllItems()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->actionBarBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncActionBarBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncActionBarBinding;->checkAllCheckbox:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckbox;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onTitleBarAlphaChanged(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->actionBarBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncActionBarBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncActionBarBinding;->selectItemsText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final setActionBar(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->isCustom:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->appBar:Lm/b;

    invoke-virtual {v0, p1}, Lm/b;->p(Z)V

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lm/b;->n(Z)V

    invoke-virtual {v0, v1}, Lm/b;->r(Z)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->actionBarBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncActionBarBinding;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncActionBarBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lm/b;->l(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->activity:Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getToolbarTitle(Landroid/app/Activity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->activity:Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->setAppBarOffsetChangeCallback(Lcom/sec/android/app/sbrowser/common/model/settings/AppBarOffsetChangeCallback;)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->activity:Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->actionBarBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncActionBarBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncActionBarBinding;->selectItemsText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->actionBarBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncActionBarBinding;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncActionBarBinding;->checkAllLayout:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->activity:Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    const-string v0, "getTitle(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->activity:Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    const p1, 0x7f14006e

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->setTitle(I)V

    :goto_2
    return-void
.end method

.method public final setCheckBoxClickListener(Lsb/a;)V
    .locals 2
    .param p1    # Lsb/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsb/a;",
            ")V"
        }
    .end annotation

    const-string v0, "onCheckBoxClick"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->actionBarBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncActionBarBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncActionBarBinding;->checkAllCheckbox:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckbox;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/J;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/J;-><init>(ILsb/a;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setTitleBarInformation(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;)V
    .locals 5
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "syncFragmentItem"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->actionBarBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncActionBarBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncActionBarBinding;->checkAllCheckbox:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckbox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;->isAllGroupsSelected()Z

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;->isAllGroupsSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;->isAllGroupsDisabled()Z

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;->isAllGroupsDisabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->actionBarBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncActionBarBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncActionBarBinding;->checkAllLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->getCheckedText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->activity:Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    const v3, 0x7f14105f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->activity:Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    const v4, 0x7f140b8f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;->getCheckedItemCount()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->activity:Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    const v0, 0x7f14021e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->activity:Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v1, 0x7f14021d

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "let(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->actionBarBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncActionBarBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncActionBarBinding;->selectItemsText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->isCustom:Z

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->activity:Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method
