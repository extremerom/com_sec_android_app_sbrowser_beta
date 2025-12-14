.class public Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mGradientColors:[I

.field private mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private final mGradientView:Landroid/view/View;

.field private final mSeekBar:Landroid/widget/SeekBar;

.field private final mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;IILandroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lorg/chromium/components/embedder_support/delegate/R$id;->gradient:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;->mGradientView:Landroid/view/View;

    sget v0, Lorg/chromium/components/embedder_support/delegate/R$id;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    sget v0, Lorg/chromium/components/embedder_support/delegate/R$id;->seek_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v0, p3}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lorg/chromium/components/embedder_support/delegate/R$drawable;->color_picker_advanced_select_handle:I

    invoke-static {p1, p3}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getValue()F
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public setGradientColors([I)V
    .locals 1

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;->mGradientColors:[I

    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    iget-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;->mGradientView:Landroid/view/View;

    iget-object p0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setValue(F)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvancedComponent;->mSeekBar:Landroid/widget/SeekBar;

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
