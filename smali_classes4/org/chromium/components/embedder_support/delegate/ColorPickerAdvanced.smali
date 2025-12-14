.class public Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mCurrentColor:I

.field private final mCurrentHsvValues:[F

.field mHueDetails:Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;

.field private mOnColorChangedListener:Lorg/chromium/components/embedder_support/delegate/OnColorChangedListener;

.field mSaturationDetails:Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;

.field mValueDetails:Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x3

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->mCurrentHsvValues:[F

    invoke-direct {p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget v0, Lorg/chromium/components/embedder_support/delegate/R$string;->color_picker_hue:I

    const/16 v1, 0x168

    invoke-virtual {p0, v0, v1, p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->createAndAddNewGradient(IILandroid/widget/SeekBar$OnSeekBarChangeListener;)Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->mHueDetails:Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;

    sget v0, Lorg/chromium/components/embedder_support/delegate/R$string;->color_picker_saturation:I

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1, p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->createAndAddNewGradient(IILandroid/widget/SeekBar$OnSeekBarChangeListener;)Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->mSaturationDetails:Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;

    sget v0, Lorg/chromium/components/embedder_support/delegate/R$string;->color_picker_value:I

    invoke-virtual {p0, v0, v1, p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->createAndAddNewGradient(IILandroid/widget/SeekBar$OnSeekBarChangeListener;)Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->mValueDetails:Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;

    invoke-direct {p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->refreshGradientComponents()V

    return-void
.end method

.method private notifyColorChanged()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->mOnColorChangedListener:Lorg/chromium/components/embedder_support/delegate/OnColorChangedListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->getColor()I

    move-result p0

    invoke-interface {v0, p0}, Lorg/chromium/components/embedder_support/delegate/OnColorChangedListener;->onColorChanged(I)V

    :cond_0
    return-void
.end method

.method private refreshGradientComponents()V
    .locals 6

    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->mCurrentHsvValues:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/16 v2, 0x64

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v4, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->mCurrentHsvValues:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->mHueDetails:Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;

    iget-object v4, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->mCurrentHsvValues:[F

    aget v3, v4, v3

    invoke-virtual {v2, v3}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;->setValue(F)V

    iget-object v2, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->mSaturationDetails:Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;->setValue(F)V

    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->mValueDetails:Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;->setValue(F)V

    invoke-direct {p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->updateHueGradient()V

    invoke-direct {p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->updateSaturationGradient()V

    invoke-direct {p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->updateValueGradient()V

    return-void
.end method

.method private updateHueGradient()V
    .locals 7

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget-object v1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->mCurrentHsvValues:[F

    const/4 v2, 0x1

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v2, 0x2

    aget v1, v1, v2

    aput v1, v0, v2

    const/4 v1, 0x7

    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    int-to-float v5, v4

    const/high16 v6, 0x42700000    # 60.0f

    mul-float/2addr v5, v6

    aput v5, v0, v3

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->mHueDetails:Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;

    invoke-virtual {p0, v2}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;->setGradientColors([I)V

    return-void
.end method

.method private updateSaturationGradient()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget-object v1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->mCurrentHsvValues:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v2, 0x2

    aget v1, v1, v2

    aput v1, v0, v2

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v3

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    filled-new-array {v1, v0}, [I

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->mSaturationDetails:Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;

    invoke-virtual {p0, v0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;->setGradientColors([I)V

    return-void
.end method

.method private updateValueGradient()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget-object v1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->mCurrentHsvValues:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v1, v0, v2

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v0, v2

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    filled-new-array {v1, v0}, [I

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->mValueDetails:Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;

    invoke-virtual {p0, v0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;->setGradientColors([I)V

    return-void
.end method


# virtual methods
.method public createAndAddNewGradient(IILandroid/widget/SeekBar$OnSeekBarChangeListener;)Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lorg/chromium/components/embedder_support/delegate/R$layout;->color_picker_advanced_component:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;-><init>(Landroid/view/View;IILandroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-object p0
.end method

.method public getColor()I
    .locals 0

    iget p0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->mCurrentColor:I

    return p0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->mCurrentHsvValues:[F

    iget-object p2, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->mHueDetails:Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;

    invoke-virtual {p2}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;->getValue()F

    move-result p2

    const/4 p3, 0x0

    aput p2, p1, p3

    iget-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->mCurrentHsvValues:[F

    iget-object p2, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->mSaturationDetails:Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;

    invoke-virtual {p2}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;->getValue()F

    move-result p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    const/4 v0, 0x1

    aput p2, p1, v0

    iget-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->mCurrentHsvValues:[F

    iget-object p2, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->mValueDetails:Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;

    invoke-virtual {p2}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;->getValue()F

    move-result p2

    div-float/2addr p2, p3

    const/4 p3, 0x2

    aput p2, p1, p3

    iget-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->mCurrentHsvValues:[F

    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    iput p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->mCurrentColor:I

    invoke-direct {p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->updateHueGradient()V

    invoke-direct {p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->updateSaturationGradient()V

    invoke-direct {p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->updateValueGradient()V

    invoke-direct {p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->notifyColorChanged()V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iput p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->mCurrentColor:I

    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->mCurrentHsvValues:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-direct {p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->refreshGradientComponents()V

    return-void
.end method

.method public setListener(Lorg/chromium/components/embedder_support/delegate/OnColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->mOnColorChangedListener:Lorg/chromium/components/embedder_support/delegate/OnColorChangedListener;

    return-void
.end method
