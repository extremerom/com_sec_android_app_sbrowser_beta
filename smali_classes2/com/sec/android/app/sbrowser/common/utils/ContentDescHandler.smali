.class public Lcom/sec/android/app/sbrowser/common/utils/ContentDescHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomDescription:Ljava/lang/String;

.field private mIsInnerImage:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ContentDescHandler;-><init>(Landroid/content/Context;Z)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/utils/ContentDescHandler;->mCustomDescription:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/ContentDescHandler;->mCustomDescription:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/ContentDescHandler;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/common/utils/ContentDescHandler;->mIsInnerImage:Z

    return-void
.end method

.method private getStatusBarHeight()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->getInstance()Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/ContentDescHandler;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->getMultiWindow(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindow;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindow;->isScaleWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result p0

    return p0
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 11

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/ContentDescHandler;->mContext:Landroid/content/Context;

    const-string v1, "ContentDescHandler"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "onLongClick : null context"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/ContentDescHandler;->mCustomDescription:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/ContentDescHandler;->mCustomDescription:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [I

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/utils/ContentDescHandler;->mContext:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    :try_start_0
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/common/utils/ContentDescHandler;->mContext:Landroid/content/Context;

    check-cast v8, Landroid/app/Activity;

    invoke-static {v8}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {v6, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    move v1, v2

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_8

    :cond_3
    invoke-virtual {v6, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/ContentDescHandler;->getStatusBarHeight()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v8

    goto :goto_2

    :cond_4
    move v6, v2

    :goto_2
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/common/utils/ContentDescHandler;->mContext:Landroid/content/Context;

    check-cast v9, Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v9

    if-eqz v6, :cond_6

    const/4 v6, 0x3

    if-ne v9, v6, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getNavigationBarHeight()I

    move-result v6

    goto :goto_3

    :cond_5
    move v6, v2

    :goto_3
    aget v7, v5, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    div-int/2addr v9, v4

    add-int/2addr v9, v7

    sub-int/2addr v9, v6

    goto :goto_5

    :cond_6
    if-ne v9, v8, :cond_7

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getNavigationBarHeight()I

    move-result v6

    goto :goto_4

    :cond_7
    move v6, v2

    :goto_4
    iget v7, v7, Landroid/graphics/Point;->x:I

    aget v9, v5, v2

    sub-int/2addr v7, v9

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    div-int/2addr v9, v4

    sub-int/2addr v7, v9

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/common/utils/ContentDescHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0715c7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    div-int/2addr v9, v4

    sub-int/2addr v7, v9

    sub-int v9, v7, v6

    :goto_5
    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/utils/ContentDescHandler;->mIsInnerImage:Z

    if-eqz v6, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_8

    new-array v4, v4, [I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationInWindow([I)V

    aget v4, v4, v8

    sub-int/2addr v4, v1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    :goto_6
    add-int/2addr v1, v4

    goto :goto_7

    :cond_8
    aget v4, v5, v8

    sub-int/2addr v4, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_6

    :goto_7
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/utils/ContentDescHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0715c2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v4, v1

    const v1, 0x800033

    invoke-virtual {v3, v1, v9, v4}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    if-eqz p1, :cond_9

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/ContentDescHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const p0, 0x7f0e08ff

    invoke-virtual {p1, p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_9

    const p1, 0x7f0b075f

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    :cond_9
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return v8

    :goto_8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onLongClick : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method
