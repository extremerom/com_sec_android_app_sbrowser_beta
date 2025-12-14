.class public final synthetic Landroidx/recyclerview/widget/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/recyclerview/widget/m1;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/m1;I)V
    .locals 0

    iput p2, p0, Landroidx/recyclerview/widget/l1;->a:I

    iput-object p1, p0, Landroidx/recyclerview/widget/l1;->b:Landroidx/recyclerview/widget/m1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/l1;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    iget-object p0, p0, Landroidx/recyclerview/widget/l1;->b:Landroidx/recyclerview/widget/m1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Landroidx/recyclerview/widget/m1;->a:Landroidx/recyclerview/sesl/drawable/SeslFastScrollerBgDrawable;

    iget-object v0, p0, Landroidx/recyclerview/sesl/drawable/SeslFastScrollerBgDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Float;

    iget-object p0, p0, Landroidx/recyclerview/widget/l1;->b:Landroidx/recyclerview/widget/m1;

    iget v0, p0, Landroidx/recyclerview/widget/m1;->c:F

    iget v1, p0, Landroidx/recyclerview/widget/m1;->b:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr p1, v0

    add-float/2addr p1, v1

    iget-object p0, p0, Landroidx/recyclerview/widget/m1;->a:Landroidx/recyclerview/sesl/drawable/SeslFastScrollerBgDrawable;

    iput p1, p0, Landroidx/recyclerview/sesl/drawable/SeslFastScrollerBgDrawable;->a:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
