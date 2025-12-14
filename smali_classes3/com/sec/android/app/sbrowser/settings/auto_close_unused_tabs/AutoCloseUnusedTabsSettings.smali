.class public final Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;
.super Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/constants/preference/PreferenceKeys;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings$Companion;,
        Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings$Settings;,
        Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings$TabStatus;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u00182\u00020\u00012\u00020\u0002:\u0003\u0018\u0019\u001aB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\r\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0015\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\r\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0013\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0013\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0016\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;",
        "Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;",
        "Lcom/sec/android/app/sbrowser/common/constants/preference/PreferenceKeys;",
        "<init>",
        "()V",
        "",
        "id",
        "",
        "getString",
        "(I)Ljava/lang/String;",
        "getAutoCloseUnusedTabsSettings",
        "()I",
        "value",
        "Ldb/r;",
        "setAutoCloseUnusedTabsSettings",
        "(Ljava/lang/String;)V",
        "recordSetManually",
        "",
        "isSetManually",
        "()Z",
        "",
        "getTitles",
        "()Ljava/util/List;",
        "getKeys",
        "Companion",
        "Settings",
        "TabStatus",
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
.field public static final Companion:Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;->Companion:Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final getInstance()Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;->Companion:Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings$Companion;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings$Companion;->getInstance()Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;

    move-result-object v0

    return-object v0
.end method

.method private final getString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public final getAutoCloseUnusedTabsSettings()I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;->getKeys()Ljava/util/List;

    move-result-object v0

    const-string v1, "pref_auto_close_unused_tabs"

    const-string v2, "close_never"

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final getKeys()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "close_after_30days"

    const-string v0, "close_automatically"

    const-string v1, "close_never"

    const-string v2, "close_after_7days"

    filled-new-array {v1, v2, p0, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getTitles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const v0, 0x7f140ecd

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f140ecc

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f140ecb

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f140ecf

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final isSetManually()Z
    .locals 2

    const-string v0, "pref_auto_close_unused_tabs_set_manually"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final recordSetManually()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;->isSetManually()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "pref_auto_close_unused_tabs_set_manually"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final setAutoCloseUnusedTabsSettings(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pref_auto_close_unused_tabs"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
