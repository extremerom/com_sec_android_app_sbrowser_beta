.class public final Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;
.super Lt/x0;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;
.implements Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B-\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000fH\u0003\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u001d\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0011J\u000f\u0010\u0019\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0011J\u001f\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010 R\u001a\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010!R\u0014\u0010\u000c\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\"R\u0016\u0010\u0014\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010#R\u0016\u0010\u0015\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010#R\u0014\u0010%\u001a\u00020$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;",
        "Lt/x0;",
        "Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;",
        "Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;",
        "Landroid/app/Activity;",
        "activity",
        "Landroid/view/View;",
        "anchor",
        "",
        "",
        "groupList",
        "Lcom/sec/android/app/sbrowser/tab_group/TabGroupListListener;",
        "listener",
        "<init>",
        "(Landroid/app/Activity;Landroid/view/View;Ljava/util/List;Lcom/sec/android/app/sbrowser/tab_group/TabGroupListListener;)V",
        "Ldb/r;",
        "inflateMenu",
        "()V",
        "setOnMenuItemClickListener",
        "",
        "xOffset",
        "yOffset",
        "setOffset",
        "(II)V",
        "show",
        "dismiss",
        "newState",
        "onActivityStateChange",
        "(Landroid/app/Activity;I)V",
        "key",
        "onBrowserPreferenceChanged",
        "(Ljava/lang/String;)V",
        "Landroid/app/Activity;",
        "Ljava/util/List;",
        "Lcom/sec/android/app/sbrowser/tab_group/TabGroupListListener;",
        "I",
        "Landroid/content/ComponentCallbacks;",
        "componentCallback",
        "Landroid/content/ComponentCallbacks;",
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
.field private final activity:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final componentCallback:Landroid/content/ComponentCallbacks;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final groupList:Ljava/util/List;
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

.field private final listener:Lcom/sec/android/app/sbrowser/tab_group/TabGroupListListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private xOffset:I

.field private yOffset:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/util/List;Lcom/sec/android/app/sbrowser/tab_group/TabGroupListListener;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/sec/android/app/sbrowser/tab_group/TabGroupListListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/android/app/sbrowser/tab_group/TabGroupListListener;",
            ")V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchor"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupList"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lt/x0;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;->activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;->groupList:Ljava/util/List;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;->listener:Lcom/sec/android/app/sbrowser/tab_group/TabGroupListListener;

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu$componentCallback$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu$componentCallback$1;-><init>(Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;->componentCallback:Landroid/content/ComponentCallbacks;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;->inflateMenu()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;->setOnMenuItemClickListener()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;->setOnMenuItemClickListener$lambda$0(Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method private final inflateMenu()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;->groupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f0b055f

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lt/x0;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;->groupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0}, Lt/x0;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-interface {v4, v2, v1, v1, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lt/x0;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    :goto_1
    invoke-virtual {p0}, Lt/x0;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10002d

    invoke-virtual {p0}, Lt/x0;->getMenu()Landroid/view/Menu;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method private final setOnMenuItemClickListener()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    new-instance v0, LAa/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, LAa/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lt/x0;->setOnMenuItemClickListener(Lt/w0;)V

    return-void
.end method

.method private static final setOnMenuItemClickListener$lambda$0(Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const v1, 0x7f0b0382

    if-eq v0, v1, :cond_1

    const v1, 0x7f0b055f

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;->listener:Lcom/sec/android/app/sbrowser/tab_group/TabGroupListListener;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListListener;->onNewTabInGroup(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;->listener:Lcom/sec/android/app/sbrowser/tab_group/TabGroupListListener;

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;->xOffset:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;->yOffset:I

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListListener;->onCreateGroup(II)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;->componentCallback:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->unregisterActivityStateListener(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;)V

    invoke-super {p0}, Lt/x0;->dismiss()V

    return-void
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;->dismiss()V

    :goto_0
    return-void
.end method

.method public onBrowserPreferenceChanged(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pref_high_contrast_mode"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;->listener:Lcom/sec/android/app/sbrowser/tab_group/TabGroupListListener;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListListener;->onChangedObserved()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    :cond_0
    return-void
.end method

.method public final setOffset(II)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;->xOffset:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;->yOffset:I

    return-void
.end method

.method public show()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;->xOffset:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;->yOffset:I

    invoke-virtual {p0, v0, v1}, Lt/x0;->seslSetOffset(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;->componentCallback:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;->activity:Landroid/app/Activity;

    invoke-static {p0, v0}, Lcom/sec/terrace/TerraceApplicationStatus;->registerStateListenerForActivity(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;Landroid/app/Activity;)V

    invoke-super {p0}, Lt/x0;->show()V

    return-void
.end method
