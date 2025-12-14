.class public final synthetic LK9/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/io/Serializable;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, LK9/c;->a:I

    iput-object p3, p0, LK9/c;->b:Ljava/lang/Object;

    iput-object p2, p0, LK9/c;->c:Ljava/io/Serializable;

    iput-object p4, p0, LK9/c;->d:Ljava/lang/Object;

    iput-object p5, p0, LK9/c;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, LK9/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LK9/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/vexfwk/docscan/VexFwkDocRefineModes$Companion$EnhancementMode;

    iget-object v1, p0, LK9/c;->c:Ljava/io/Serializable;

    check-cast v1, Lcom/samsung/android/vexfwk/docscan/VexFwkDocRefineModes$Companion$ColorFilterType;

    iget-object v2, p0, LK9/c;->d:Ljava/lang/Object;

    iget-object p0, p0, LK9/c;->e:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocRefiner;

    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocRefiner;->c(Lcom/samsung/android/vexfwk/docscan/VexFwkDocRefineModes$Companion$EnhancementMode;Lcom/samsung/android/vexfwk/docscan/VexFwkDocRefineModes$Companion$ColorFilterType;Ljava/lang/Object;Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocRefiner;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, LK9/c;->b:Ljava/lang/Object;

    iget-object v1, p0, LK9/c;->c:Ljava/io/Serializable;

    check-cast v1, Lcom/samsung/android/vexfwk/param/VexFwkDocumentCorners;

    iget-object v2, p0, LK9/c;->d:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/vexfwk/docscan/VexFwkDocDewarpModes$Companion$DewarpMode;

    iget-object p0, p0, LK9/c;->e:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDewarper;

    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDewarper;->d(Ljava/lang/Object;Lcom/samsung/android/vexfwk/param/VexFwkDocumentCorners;Lcom/samsung/android/vexfwk/docscan/VexFwkDocDewarpModes$Companion$DewarpMode;Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDewarper;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v0, p0, LK9/c;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    iget-object v1, p0, LK9/c;->c:Ljava/io/Serializable;

    check-cast v1, [I

    iget-object v2, p0, LK9/c;->d:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkObjRemover;

    iget-object p0, p0, LK9/c;->e:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkObjRemover;->b(Landroid/graphics/Rect;[ILcom/samsung/android/vexfwk/sdk/objeraser/VexFwkObjRemover;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
