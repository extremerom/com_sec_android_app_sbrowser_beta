.class public final synthetic LB9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Landroid/view/Surface;

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:F


# direct methods
.method public synthetic constructor <init>(IILandroid/view/Surface;IIFI)V
    .locals 0

    iput p7, p0, LB9/a;->a:I

    iput p1, p0, LB9/a;->b:I

    iput p2, p0, LB9/a;->c:I

    iput-object p3, p0, LB9/a;->d:Landroid/view/Surface;

    iput p4, p0, LB9/a;->e:I

    iput p5, p0, LB9/a;->f:I

    iput p6, p0, LB9/a;->g:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, LB9/a;->a:I

    packed-switch v0, :pswitch_data_0

    move-object v7, p1

    check-cast v7, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;

    iget v4, p0, LB9/a;->e:I

    iget v5, p0, LB9/a;->f:I

    iget v1, p0, LB9/a;->b:I

    iget v2, p0, LB9/a;->c:I

    iget-object v3, p0, LB9/a;->d:Landroid/view/Surface;

    iget v6, p0, LB9/a;->g:F

    invoke-static/range {v1 .. v7}, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;->h(IILandroid/view/Surface;IIFLcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_0
    move-object v6, p1

    check-cast v6, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;

    iget v3, p0, LB9/a;->e:I

    iget v4, p0, LB9/a;->f:I

    iget v0, p0, LB9/a;->b:I

    iget v1, p0, LB9/a;->c:I

    iget-object v2, p0, LB9/a;->d:Landroid/view/Surface;

    iget v5, p0, LB9/a;->g:F

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;->c(IILandroid/view/Surface;IIFLcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;)Ldb/r;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
