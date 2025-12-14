.class public Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->sTypedValue:Landroid/util/TypedValue;

    return-void
.end method

.method public static getFloat(Landroid/content/Context;I)F
    .locals 2

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->sTypedValue:Landroid/util/TypedValue;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    return p0
.end method

.method public static getFloat(Landroid/content/Context;II)F
    .locals 1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->getFloat(Landroid/content/Context;I)F

    move-result p1

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->isTypeDimension(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p2, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method private static isTypeDimension(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x5

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
