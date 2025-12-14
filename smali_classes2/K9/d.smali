.class public final synthetic LK9/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:F

.field public final synthetic c:Landroid/graphics/Bitmap;

.field public final synthetic d:Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkObjectExtractor;


# direct methods
.method public synthetic constructor <init>(FFLandroid/graphics/Bitmap;Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkObjectExtractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LK9/d;->a:F

    iput p2, p0, LK9/d;->b:F

    iput-object p3, p0, LK9/d;->c:Landroid/graphics/Bitmap;

    iput-object p4, p0, LK9/d;->d:Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkObjectExtractor;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, LK9/d;->a:F

    iget v1, p0, LK9/d;->b:F

    iget-object v2, p0, LK9/d;->c:Landroid/graphics/Bitmap;

    iget-object p0, p0, LK9/d;->d:Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkObjectExtractor;

    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkObjectExtractor;->c(FFLandroid/graphics/Bitmap;Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkObjectExtractor;)[I

    move-result-object p0

    return-object p0
.end method
