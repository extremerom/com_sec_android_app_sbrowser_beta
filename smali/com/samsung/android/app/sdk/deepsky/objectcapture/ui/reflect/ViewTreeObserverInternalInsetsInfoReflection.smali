.class public Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/ViewTreeObserverInternalInsetsInfoReflection;
.super Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractBaseReflection;
.source "SourceFile"


# instance fields
.field public TOUCHABLE_INSETS_REGION:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractBaseReflection;-><init>()V

    return-void
.end method


# virtual methods
.method public contentInsetsSetEmpty(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "contentInsets"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractBaseReflection;->getNormalValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_0
    return-void
.end method

.method public getBaseClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "android.view.ViewTreeObserver$InternalInsetsInfo"

    return-object p0
.end method

.method public getTouchableRegion(Ljava/lang/Object;)Landroid/graphics/Region;
    .locals 1

    const-string v0, "touchableRegion"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractBaseReflection;->getNormalValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Landroid/graphics/Region;

    :goto_0
    return-object p0
.end method

.method public loadStaticFields()V
    .locals 1

    const-string v0, "TOUCHABLE_INSETS_REGION"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractBaseReflection;->getIntStaticValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/ViewTreeObserverInternalInsetsInfoReflection;->TOUCHABLE_INSETS_REGION:I

    return-void
.end method

.method public setTouchableInsets(Ljava/lang/Object;I)V
    .locals 2

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "setTouchableInsets"

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTouchableRegion(Ljava/lang/Object;I)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "touchableRegion"

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractBaseReflection;->setNormalValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public visibleInsetsSetEmpty(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "visibleInsets"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractBaseReflection;->getNormalValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_0
    return-void
.end method
