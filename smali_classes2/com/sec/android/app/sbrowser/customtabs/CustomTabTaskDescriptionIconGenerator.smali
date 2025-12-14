.class public Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionIconGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mGeneratedIcon:Landroid/graphics/Bitmap;

.field private mGeneratedPageUrl:Ljava/lang/String;

.field private mGenerator:Lcom/sec/android/app/sbrowser/customtabs/RoundedIconGenerator;

.field private final mMinSizePx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionIconGenerator;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    float-to-int p1, p1

    mul-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionIconGenerator;->mMinSizePx:I

    const-string p0, "Create TaskDescriptionIconGenerator - icon min size : "

    const-string v0, "CustomTabTaskDescriptionIconGenerator"

    invoke-static {p1, p0, v0}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    const-string v0, "CustomTabTaskDescriptionIconGenerator"

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionIconGenerator;->mMinSizePx:I

    if-lt v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionIconGenerator;->mMinSizePx:I

    if-lt v1, v2, :cond_0

    const-string p0, "[getBitmap] largestFavicon size is larger than min size"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionIconGenerator;->mGeneratedPageUrl:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "[getBitmap] same url => return previous generated icon"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionIconGenerator;->mGeneratedIcon:Landroid/graphics/Bitmap;

    return-object p0

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionIconGenerator;->mGenerator:Lcom/sec/android/app/sbrowser/customtabs/RoundedIconGenerator;

    if-nez p2, :cond_2

    new-instance p2, Lcom/sec/android/app/sbrowser/customtabs/RoundedIconGenerator;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionIconGenerator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, -0xcdcdce

    const/16 v7, 0x1e

    const/16 v3, 0x40

    const/16 v4, 0x40

    const/4 v5, 0x3

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/customtabs/RoundedIconGenerator;-><init>(Landroid/content/res/Resources;IIIII)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionIconGenerator;->mGenerator:Lcom/sec/android/app/sbrowser/customtabs/RoundedIconGenerator;

    :cond_2
    const-string p2, "[getBitmap] generate icon from page url"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionIconGenerator;->mGeneratedPageUrl:Ljava/lang/String;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionIconGenerator;->mGenerator:Lcom/sec/android/app/sbrowser/customtabs/RoundedIconGenerator;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/customtabs/RoundedIconGenerator;->generateIconForUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionIconGenerator;->mGeneratedIcon:Landroid/graphics/Bitmap;

    return-object p1
.end method
