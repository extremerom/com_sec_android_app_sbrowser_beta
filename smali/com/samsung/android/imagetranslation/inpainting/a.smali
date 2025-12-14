.class public final synthetic Lcom/samsung/android/imagetranslation/inpainting/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/imagetranslation/inpainting/InpainterHelper;

.field public final synthetic b:Lcom/samsung/android/imagetranslation/inpainting/InpainterParam;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/imagetranslation/inpainting/InpainterHelper;Lcom/samsung/android/imagetranslation/inpainting/InpainterParam;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/imagetranslation/inpainting/a;->a:Lcom/samsung/android/imagetranslation/inpainting/InpainterHelper;

    iput-object p2, p0, Lcom/samsung/android/imagetranslation/inpainting/a;->b:Lcom/samsung/android/imagetranslation/inpainting/InpainterParam;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroid/graphics/Bitmap;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v0, p0, Lcom/samsung/android/imagetranslation/inpainting/a;->a:Lcom/samsung/android/imagetranslation/inpainting/InpainterHelper;

    iget-object p0, p0, Lcom/samsung/android/imagetranslation/inpainting/a;->b:Lcom/samsung/android/imagetranslation/inpainting/InpainterParam;

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/imagetranslation/inpainting/InpainterHelper;->a(Lcom/samsung/android/imagetranslation/inpainting/InpainterHelper;Lcom/samsung/android/imagetranslation/inpainting/InpainterParam;Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V

    return-void
.end method
