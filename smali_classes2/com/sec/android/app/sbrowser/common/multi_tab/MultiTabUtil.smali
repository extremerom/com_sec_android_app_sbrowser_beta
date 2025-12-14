.class public Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabUtil;->lambda$showCloseGroupDialog$0(Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabUtil;->lambda$showCloseGroupDialog$1(Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabUtil;->lambda$showCloseTabsWithGroupDialog$2(Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d(Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabUtil;->lambda$showCloseTabsWithGroupDialog$3(Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic e(Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabUtil;->lambda$showCloseAllWithGroupDialog$5(Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic f(Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabUtil;->lambda$showCloseAllWithGroupDialog$4(Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static findStartAndEndIndexes(IIZ)Le1/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Le1/b;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    add-int/lit8 p2, p0, 0x6

    const/4 v1, 0x6

    if-gt p1, v1, :cond_3

    :goto_0
    move p0, v0

    goto :goto_2

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x3

    move p2, p0

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p1, -0x1

    if-ne p0, p2, :cond_2

    add-int/lit8 p2, p0, -0x3

    :goto_1
    move v2, p2

    move p2, p0

    move p0, v2

    goto :goto_2

    :cond_2
    add-int/lit8 p2, p0, -0x2

    add-int/lit8 p0, p0, 0x2

    goto :goto_1

    :cond_3
    :goto_2
    if-gez p0, :cond_4

    goto :goto_3

    :cond_4
    move v0, p0

    :goto_3
    if-lt p2, p1, :cond_5

    add-int/lit8 p2, p1, -0x1

    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Le1/b;

    invoke-direct {p2, p0, p1}, Le1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public static synthetic g(Ljava/lang/String;Landroid/widget/ImageView;Landroid/os/Message;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabUtil;->lambda$setGroupFavicon$6(Ljava/lang/String;Landroid/widget/ImageView;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static getFaviconFromFetcher(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v0

    const/4 v1, 0x7

    const/16 v2, 0x40

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getIcon(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getTabTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f140031

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlUrlWithEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f14089e

    goto :goto_0

    :cond_2
    const p1, 0x7f140b92

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->removeHttpHttpsScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setGroupFavicon$6(Ljava/lang/String;Landroid/widget/ImageView;Landroid/os/Message;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabUtil;->getFaviconFromFetcher(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$showCloseAllWithGroupDialog$4(Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "4518"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$showCloseAllWithGroupDialog$5(Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "4519"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$showCloseGroupDialog$0(Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "4518"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$showCloseGroupDialog$1(Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "4519"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$showCloseTabsWithGroupDialog$2(Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "4518"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$showCloseTabsWithGroupDialog$3(Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "4519"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setGroupFavicon(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0b0563

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabUtil;->getFaviconFromFetcher(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    new-instance v2, Lja/a;

    invoke-direct {v2, p1, p0}, Lja/a;-><init>(Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->requestIcon(Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public static setTextHighlight(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Z)V
    .locals 3

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    const/high16 v2, -0x1000000

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {p0, v0, p2, v1, p3}, Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants;->getSpannableStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/text/SpannableString;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static showCloseAllDialog(Landroid/content/Context;Landroid/view/View;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lm/l;
    .locals 8

    if-eqz p2, :cond_0

    const p2, 0x7f140305

    goto :goto_0

    :cond_0
    const p2, 0x7f140304

    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1402f9

    const v6, 0x7f1402f7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->showConfirmDialog(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)Lm/l;

    move-result-object p0

    return-object p0
.end method

.method public static showCloseAllWithGroupDialog(Landroid/content/Context;Landroid/view/View;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lm/l;
    .locals 8

    if-eqz p2, :cond_0

    const p2, 0x7f140308

    goto :goto_0

    :cond_0
    const p2, 0x7f140303

    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isSecretModePreferenceEnabled()Z

    move-result p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "4517"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lja/b;

    const/4 v0, 0x2

    invoke-direct {v5, p3, p2, v0}, Lja/b;-><init>(Landroid/content/DialogInterface$OnClickListener;ZI)V

    new-instance v7, Lja/b;

    const/4 p3, 0x3

    invoke-direct {v7, p4, p2, p3}, Lja/b;-><init>(Landroid/content/DialogInterface$OnClickListener;ZI)V

    const p2, 0x7f140304

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f1402f9

    const v6, 0x7f1402f7

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->showConfirmDialog(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)Lm/l;

    move-result-object p0

    return-object p0
.end method

.method public static showCloseGroupDialog(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lm/l;
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140312

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-eqz p3, :cond_0

    const p3, 0x7f14030b

    goto :goto_0

    :cond_0
    const p3, 0x7f140314

    :goto_0
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isSecretModePreferenceEnabled()Z

    move-result p3

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "4517"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lja/b;

    const/4 v0, 0x4

    invoke-direct {v5, p4, p3, v0}, Lja/b;-><init>(Landroid/content/DialogInterface$OnClickListener;ZI)V

    new-instance v7, Lja/b;

    const/4 p4, 0x5

    invoke-direct {v7, p5, p3, p4}, Lja/b;-><init>(Landroid/content/DialogInterface$OnClickListener;ZI)V

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->naturalizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f1402f9

    const v6, 0x7f1402f7

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->showConfirmDialog(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)Lm/l;

    move-result-object p0

    return-object p0
.end method

.method public static showCloseTabsWithGroupDialog(Landroid/content/Context;Landroid/view/View;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lm/l;
    .locals 8

    if-eqz p2, :cond_0

    const p2, 0x7f140309

    goto :goto_0

    :cond_0
    const p2, 0x7f14030d

    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isSecretModePreferenceEnabled()Z

    move-result p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "4517"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lja/b;

    const/4 v0, 0x0

    invoke-direct {v5, p3, p2, v0}, Lja/b;-><init>(Landroid/content/DialogInterface$OnClickListener;ZI)V

    new-instance v7, Lja/b;

    const/4 p3, 0x1

    invoke-direct {v7, p4, p2, p3}, Lja/b;-><init>(Landroid/content/DialogInterface$OnClickListener;ZI)V

    const p2, 0x7f14030c

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f1402f9

    const v6, 0x7f1402f7

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->showConfirmDialog(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)Lm/l;

    move-result-object p0

    return-object p0
.end method
