.class public final synthetic LH9/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lcom/samsung/android/vexfwk/sdk/imagetranslator/VexFwkImageTranslator;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/samsung/android/vexfwk/param/VexFwkOcrResult;

.field public final synthetic f:Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/samsung/android/vexfwk/sdk/imagetranslator/VexFwkImageTranslator;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/vexfwk/param/VexFwkOcrResult;Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH9/f;->a:Ljava/lang/Object;

    iput-object p2, p0, LH9/f;->b:Lcom/samsung/android/vexfwk/sdk/imagetranslator/VexFwkImageTranslator;

    iput-object p3, p0, LH9/f;->c:Ljava/lang/String;

    iput-object p4, p0, LH9/f;->d:Ljava/lang/String;

    iput-object p5, p0, LH9/f;->e:Lcom/samsung/android/vexfwk/param/VexFwkOcrResult;

    iput-object p6, p0, LH9/f;->f:Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 6

    iget-object v2, p0, LH9/f;->c:Ljava/lang/String;

    iget-object v3, p0, LH9/f;->d:Ljava/lang/String;

    iget-object v0, p0, LH9/f;->a:Ljava/lang/Object;

    iget-object v1, p0, LH9/f;->b:Lcom/samsung/android/vexfwk/sdk/imagetranslator/VexFwkImageTranslator;

    iget-object v4, p0, LH9/f;->e:Lcom/samsung/android/vexfwk/param/VexFwkOcrResult;

    iget-object v5, p0, LH9/f;->f:Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/vexfwk/sdk/imagetranslator/VexFwkImageTranslator;->k(Ljava/lang/Object;Lcom/samsung/android/vexfwk/sdk/imagetranslator/VexFwkImageTranslator;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/vexfwk/param/VexFwkOcrResult;Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;)Lcom/samsung/android/vexfwk/sdk/imagetranslator/VexFwkImageTranslator$TranslationResult;

    move-result-object p0

    return-object p0
.end method
