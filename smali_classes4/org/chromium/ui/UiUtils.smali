.class public Lorg/chromium/ui/UiUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final EXTERNAL_IMAGE_FILE_PATH:Ljava/lang/String; = "browser-images"

.field public static final IMAGE_FILE_PATH:Ljava/lang/String; = "images"


# direct methods
.method public static computeListAdapterContentDimensions(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;)[I
    .locals 11

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v0, v4, v0

    const/4 v5, 0x1

    aput v0, v4, v5

    invoke-interface {p0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v6

    new-array v6, v6, [Landroid/view/View;

    move v7, v0

    :goto_0
    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    move-result v8

    if-ge v7, v8, :cond_1

    invoke-interface {p0, v7}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v8

    if-gez v8, :cond_0

    const/4 v8, 0x0

    invoke-interface {p0, v7, v8, p1}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    goto :goto_1

    :cond_0
    aget-object v9, v6, v8

    invoke-interface {p0, v7, v9, p1}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    aput-object v9, v6, v8

    move-object v8, v9

    :goto_1
    invoke-virtual {v8, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v1, v2}, Landroid/view/View;->measure(II)V

    aget v9, v4, v0

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v4, v0

    aget v9, v4, v5

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v9

    aput v8, v4, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method public static getDirectoryForImageCapture(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "images"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Folder cannot be created."

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v1

    :goto_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

.method public static setStatusBarColor(Landroid/view/Window;I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    invoke-static {}, Lorg/chromium/base/BuildInfo;->getInstance()Lorg/chromium/base/BuildInfo;

    move-result-object v0

    iget-boolean v0, v0, Lorg/chromium/base/BuildInfo;->isAutomotive:Z

    if-eqz v0, :cond_1

    const/high16 p1, -0x1000000

    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    :goto_0
    return-void
.end method
