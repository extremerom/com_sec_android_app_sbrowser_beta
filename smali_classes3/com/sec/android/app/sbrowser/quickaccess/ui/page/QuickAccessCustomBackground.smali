.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomBackground;
.super Landroid/widget/ImageView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onFinishInflate(Landroid/view/View$OnLayoutChangeListener;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setQuickAccessBackgroundForNewGUI(ZZZLcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V
    .locals 3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const p1, 0x7f0804ff

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "qa_images"

    invoke-static {p3, v0}, Lcom/sec/android/app/sbrowser/common/utils/ImageFileUtil;->getDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/app/sbrowser/wallpaper/utils/WallpaperUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/wallpaper/utils/WallpaperUtils;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/wallpaper/utils/WallpaperUtils;->getFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_2

    :try_start_0
    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p4, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomBackground;->updateBlurBackgroundBitmap(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "FileNotFoundException: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickAccessCustomBackground"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const p1, 0x7f080155

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateBlurBackgroundBitmap(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Z)V
    .locals 5

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_0

    goto/16 :goto_2

    :cond_0
    const p2, 0x3e4ccccd    # 0.2f

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->captureBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil;->isLightThemedBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget-object v3, Lcom/sec/android/app/sbrowser/common/wallpaper/ChangeWallpaperUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/common/wallpaper/ChangeWallpaperUtil;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/common/wallpaper/ChangeWallpaperUtil;->isSolidColorBitmap(Landroid/graphics/Bitmap;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Bitmap;->getColor(II)Landroid/graphics/Color;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/common/wallpaper/ChangeWallpaperUtil;->isColorLight(Landroid/graphics/Color;)Z

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0608c8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getIsSolidColorLightThemed()Landroidx/lifecycle/S;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v2, v3, :cond_4

    invoke-interface {p1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->setIsSolidColorLightThemed(Z)V

    :cond_4
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getIsLightThemed()Landroidx/lifecycle/S;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v1, v0, :cond_5

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->setIsLightThemed(Z)V

    :cond_5
    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->captureBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p0

    const/high16 p2, 0x41a00000    # 20.0f

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/common/utils/BitmapUtil;->addBlurEffect(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->setBlurBackgroundBitmap(Landroid/graphics/Bitmap;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public updateVisibilityBasedOnEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->isNonNativeEditableView()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->isNonNativeEditableViewExiting()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method
