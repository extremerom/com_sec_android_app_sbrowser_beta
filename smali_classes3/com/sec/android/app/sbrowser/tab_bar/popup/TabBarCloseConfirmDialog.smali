.class public Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarCloseConfirmDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static getCloseAllDialogDesc(Landroid/content/Context;ZZ)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const p1, 0x7f140308

    goto :goto_0

    :cond_0
    const p1, 0x7f140303

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const p1, 0x7f140305

    goto :goto_0

    :cond_2
    const p1, 0x7f140304

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getCloseAllDialogTitle(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f140304

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getCloseAllOtherDialogDesc(Landroid/content/Context;ZZ)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const p1, 0x7f140309

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f1402ff

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, " "

    invoke-static {p1, p2, p0}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const p1, 0x7f1402fd

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const p1, 0x7f140300

    goto :goto_0

    :cond_2
    const p1, 0x7f1402fc

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static showCloseAllOtherTabsDialog(Landroid/content/Context;Landroid/view/View;ZZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lm/l;
    .locals 9

    const v0, 0x7f1402fe

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p2, p3}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarCloseConfirmDialog;->getCloseAllOtherDialogDesc(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f1402f9

    const v7, 0x7f1402f7

    move-object v1, p0

    move-object v2, p1

    move-object v6, p4

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->showConfirmDialog(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)Lm/l;

    move-result-object p0

    return-object p0
.end method

.method public static showCloseAllTabDialog(Landroid/content/Context;Landroid/view/View;ZZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lm/l;
    .locals 8

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarCloseConfirmDialog;->getCloseAllDialogTitle(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p2, p3}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarCloseConfirmDialog;->getCloseAllDialogDesc(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1402f9

    const v6, 0x7f1402f7

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    move-object v7, p5

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

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->naturalizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f1402f9

    const v6, 0x7f1402f7

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->showConfirmDialog(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)Lm/l;

    move-result-object p0

    return-object p0
.end method
