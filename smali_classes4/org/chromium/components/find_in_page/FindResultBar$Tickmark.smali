.class Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/find_in_page/FindResultBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Tickmark"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;",
        ">;"
    }
.end annotation


# instance fields
.field mBottom:F

.field mTop:F

.field final synthetic this$0:Lorg/chromium/components/find_in_page/FindResultBar;


# direct methods
.method public constructor <init>(Lorg/chromium/components/find_in_page/FindResultBar;FF)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;->this$0:Lorg/chromium/components/find_in_page/FindResultBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;->mTop:F

    iput p3, p0, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;->mBottom:F

    return-void
.end method


# virtual methods
.method public centerY()F
    .locals 1

    iget v0, p0, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;->mTop:F

    iget p0, p0, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;->mBottom:F

    add-float/2addr v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;

    invoke-virtual {p0, p1}, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;->compareTo(Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;)I
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;->centerY()F

    move-result p0

    invoke-virtual {p1}, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;->centerY()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public height()F
    .locals 1

    iget v0, p0, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;->mBottom:F

    iget p0, p0, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;->mTop:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public toRectF()Landroid/graphics/RectF;
    .locals 5

    iget-object v0, p0, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;->this$0:Lorg/chromium/components/find_in_page/FindResultBar;

    invoke-static {v0}, Lorg/chromium/components/find_in_page/FindResultBar;->b(Lorg/chromium/components/find_in_page/FindResultBar;)I

    move-result v0

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v0

    iget v3, p0, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;->mTop:F

    iget-object v4, p0, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;->this$0:Lorg/chromium/components/find_in_page/FindResultBar;

    invoke-static {v4}, Lorg/chromium/components/find_in_page/FindResultBar;->a(Lorg/chromium/components/find_in_page/FindResultBar;)I

    move-result v4

    add-int/2addr v4, v0

    int-to-float v0, v4

    iget p0, p0, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;->mBottom:F

    invoke-direct {v1, v2, v3, v0, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p0, 0x40000000    # 2.0f

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {v1, p0, v0}, Landroid/graphics/RectF;->inset(FF)V

    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 v0, -0x41000000    # -0.5f

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v1, v0, p0}, Landroid/graphics/RectF;->offset(FF)V

    return-object v1
.end method
