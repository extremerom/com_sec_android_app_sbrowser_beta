.class public Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper;
.super Lcom/sec/android/app/sbrowser/context_menu/features/BaseContextMenuItemHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab/Tab;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/tab/Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/features/BaseContextMenuItemHelper;-><init>(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;IFF)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper;->startActivityForImageToolkit(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;IFF)V

    return-void
.end method

.method private startActivityForImageToolkit(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;IFF)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "com.samsung.android.app.sketchbook"

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/ShareImageFileUtil;->getUriForShareImageFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "startActivityForImageToolkit start : "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ContextMenuImageToolkitHelper"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.app.sketchbook.action.GET_CONTENT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p3, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "sourceImage"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "type"

    const-string v1, "image"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p0, p2, v0}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/PopOverUtils;->canSupportPopOver(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    move-object p0, p1

    check-cast p0, Landroid/app/Activity;

    float-to-int p2, p5

    float-to-int p5, p6

    const/4 p6, 0x0

    invoke-static {p1, p6, p6, p2, p5}, Lcom/sec/android/app/sbrowser/common/utils/PopOverUtils;->getPopOverDetails(Landroid/content/Context;IIII)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p3, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "ActivityNotFoundException : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p4}, Landroidx/recyclerview/widget/P;->A(Landroid/content/ActivityNotFoundException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 0

    return-void
.end method

.method public startImageToolkit(Landroid/content/Context;[BZLjava/lang/String;Ljava/lang/String;IFF)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v8, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper$1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move v3, p3

    move-object v4, p1

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper$1;-><init>(Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper;Ljava/lang/String;ZLandroid/content/Context;IFF)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    move-object v0, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, v8

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/utils/ShareImageFileUtil;->saveImage(Landroid/content/Context;Ljava/lang/String;[BZLjava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/ShareImageFileUtil$OnImageSaveListener;)V

    return-void
.end method
