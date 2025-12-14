.class public Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mIcon:Landroid/graphics/Bitmap;

.field private final mId:I

.field private final mIsOnToolbar:Z

.field private final mPendingIntent:Landroid/app/PendingIntent;

.field private final mShouldTint:Z

.field private mTintColor:I


# direct methods
.method private constructor <init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Landroid/app/PendingIntent;ZZ)V
    .locals 2
    .param p4    # Landroid/app/PendingIntent;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "create CustomButtonParamsImpl for "

    const-string v1, "CustomButtonParamsImpl"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->mId:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->mIcon:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->mDescription:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->mPendingIntent:Landroid/app/PendingIntent;

    iput-boolean p5, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->mShouldTint:Z

    iput-boolean p6, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->mIsOnToolbar:Z

    return-void
.end method

.method public static synthetic a(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->lambda$buildBottomBarButton$0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static createShareButton(Landroid/content/Context;IZ)Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;
    .locals 9

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsShareBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x8000000

    invoke-static {}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->getPendingIntentFlagMutable()I

    move-result v2

    or-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const v0, 0x7f080350

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->shouldUseLightForegroundOnBackground(I)Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f0602e3

    goto :goto_0

    :cond_0
    const p1, 0x7f0602e2

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const p1, 0x7f0602e1

    :goto_1
    invoke-static {p1, p0}, LV0/a;->c(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance p0, Landroid/graphics/Canvas;

    invoke-direct {p0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result p2

    invoke-virtual {v0, v2, v2, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v3, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;-><init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Landroid/app/PendingIntent;ZZ)V

    return-object p0
.end method

.method private static doesIconFitToolbar(Landroid/content/Context;Landroid/graphics/Bitmap;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070239

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v1, p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    div-int/2addr v1, p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/2addr v1, p0

    mul-int/lit8 p0, p0, 0x2

    if-gt v1, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "doesIconFitToolbar : error = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CustomButtonParamsImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static fromBundle(Landroid/content/Context;Landroid/os/Bundle;ZZ)Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "android.support.customtabs.customaction.ID"

    if-eqz p3, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    return-object v0

    :cond_1
    const/4 p3, 0x0

    invoke-static {p1, v1, p3}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetInt(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v3

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->parseBitmapFromBundle(Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v4

    const-string v1, "CustomButtonParamsImpl"

    if-nez v4, :cond_2

    const-string p0, "Invalid action button: bitmap not present in bundle!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->parseDescriptionFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p0, "Invalid action button: content description not present in bundle!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->removeBitmapFromBundle(Landroid/os/Bundle;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0

    :cond_3
    if-eqz v3, :cond_5

    const-string v2, "android.support.customtabs.customaction.SHOW_ON_TOOLBAR"

    invoke-static {p1, v2, p3}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    move v2, p3

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_6

    invoke-static {p0, v4}, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->doesIconFitToolbar(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "Button\'s icon not suitable for toolbar, putting it to bottom bar instead.See: https://developer.android.com/reference/android/support/customtabs/SBrowserCustomTabsIntent.html#KEY_ICON"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, p3

    goto :goto_2

    :cond_6
    move v8, v2

    :goto_2
    const-string p0, "android.support.customtabs.customaction.PENDING_INTENT"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Landroid/app/PendingIntent;

    if-eqz v8, :cond_7

    if-nez v6, :cond_7

    const-string p0, "Invalid action button on toolbar: pending intent not present in bundle!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->removeBitmapFromBundle(Landroid/os/Bundle;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0

    :cond_7
    new-instance p0, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;

    move-object v2, p0

    move v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;-><init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Landroid/app/PendingIntent;ZZ)V

    return-object p0
.end method

.method public static fromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v2, "android.support.customtabs.extra.ACTION_BUTTON_BUNDLE"

    invoke-static {p1, v2}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetBundleExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.support.customtabs.extra.TOOLBAR_ITEMS"

    invoke-static {p1, v3}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetParcelableArrayListExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "android.support.customtabs.extra.TINT_ACTION_BUTTON"

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz v2, :cond_1

    invoke-static {p0, v2, p1, v5}, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->fromBundle(Landroid/content/Context;Landroid/os/Bundle;ZZ)Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v3, :cond_4

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-static {p0, v4, p1, v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->fromBundle(Landroid/content/Context;Landroid/os/Bundle;ZZ)Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private static synthetic lambda$buildBottomBarButton$0(Landroid/view/View;)Z
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v6, 0x0

    invoke-static {v5, p0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    aget v5, v3, v6

    sub-int/2addr v0, v5

    div-int/2addr v4, v2

    sub-int/2addr v0, v4

    const/4 v2, 0x1

    aget v3, v3, v2

    sub-int/2addr v1, v3

    const v3, 0x800055

    invoke-virtual {p0, v3, v0, v1}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v2
.end method

.method public static parseBitmapFromBundle(Landroid/os/Bundle;)Landroid/graphics/Bitmap;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.support.customtabs.customaction.ICON"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static parseDescriptionFromBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "android.support.customtabs.customaction.DESCRIPTION"

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    return-object p0
.end method

.method private static removeBitmapFromBundle(Landroid/os/Bundle;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "android.support.customtabs.customaction.ICON"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p0, "CustomButtonParamsImpl"

    const-string v0, "Failed to remove icon extra from the intent"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public buildBottomBarButton(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->mIsOnToolbar:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e01b9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const p2, 0x7f0b038f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const v0, 0x7f0b0390

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    iget v2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->mId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setId(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget v2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->mTintColor:I

    invoke-static {p2, v2}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->setTint(Landroid/graphics/drawable/Drawable;I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->mTintColor:I

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez p0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setEnabledWithAlpha(Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    new-instance p0, Lcom/sec/android/app/sbrowser/customtabs/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p1
.end method

.method public doesIconFitToolbar(Landroid/content/Context;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->doesIconFitToolbar(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->mIcon:Landroid/graphics/Bitmap;

    invoke-direct {v0, p1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->mId:I

    return p0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setTintColor(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->mTintColor:I

    return-void
.end method

.method public shouldTint()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->mShouldTint:Z

    return p0
.end method

.method public showOnToolbar()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->mIsOnToolbar:Z

    return p0
.end method

.method public update(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->mIcon:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->mDescription:Ljava/lang/String;

    return-void
.end method
