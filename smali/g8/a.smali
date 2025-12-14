.class public final synthetic Lg8/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:F

.field public final synthetic c:Landroid/graphics/Point;


# direct methods
.method public synthetic constructor <init>(FLandroid/graphics/Point;I)V
    .locals 0

    iput p3, p0, Lg8/a;->a:I

    iput p1, p0, Lg8/a;->b:F

    iput-object p2, p0, Lg8/a;->c:Landroid/graphics/Point;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lg8/a;->a:I

    check-cast p1, Landroid/graphics/Point;

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lg8/a;->b:F

    iget-object p0, p0, Lg8/a;->c:Landroid/graphics/Point;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/util/DrawUtil;->b(FLandroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget v0, p0, Lg8/a;->b:F

    iget-object p0, p0, Lg8/a;->c:Landroid/graphics/Point;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->a(FLandroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
