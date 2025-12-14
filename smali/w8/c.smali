.class public final synthetic Lw8/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/samsung/android/imagetranslation/LttEngineClient;

.field public final synthetic c:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslateListener;

.field public final synthetic d:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic e:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic f:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/engine/LttV5ImageTranslationEngine;


# direct methods
.method public synthetic constructor <init>(ILcom/samsung/android/imagetranslation/LttEngineClient;Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslateListener;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/engine/LttV5ImageTranslationEngine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lw8/c;->a:I

    iput-object p2, p0, Lw8/c;->b:Lcom/samsung/android/imagetranslation/LttEngineClient;

    iput-object p3, p0, Lw8/c;->c:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslateListener;

    iput-object p4, p0, Lw8/c;->d:Ljava/util/concurrent/CountDownLatch;

    iput-object p5, p0, Lw8/c;->e:Ljava/util/concurrent/CountDownLatch;

    iput-object p6, p0, Lw8/c;->f:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/engine/LttV5ImageTranslationEngine;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v6, p1

    check-cast v6, Ldb/r;

    iget-object v3, p0, Lw8/c;->d:Ljava/util/concurrent/CountDownLatch;

    iget-object v4, p0, Lw8/c;->e:Ljava/util/concurrent/CountDownLatch;

    iget v0, p0, Lw8/c;->a:I

    iget-object v1, p0, Lw8/c;->b:Lcom/samsung/android/imagetranslation/LttEngineClient;

    iget-object v2, p0, Lw8/c;->c:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslateListener;

    iget-object v5, p0, Lw8/c;->f:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/engine/LttV5ImageTranslationEngine;

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/engine/LttV5ImageTranslationEngine$initLttEngineClient$1;->a(ILcom/samsung/android/imagetranslation/LttEngineClient;Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslateListener;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/engine/LttV5ImageTranslationEngine;Ldb/r;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
