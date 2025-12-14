.class public final synthetic Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/d;->a:I

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/d;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/d;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/d;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/d;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/TextTranslator;->b(Ljava/lang/StringBuilder;Ljava/util/concurrent/CountDownLatch;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/d;->b:Ljava/lang/Object;

    check-cast p0, Lorg/json/JSONObject;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessSILogHelper;->a(Lorg/json/JSONObject;Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/d;->c:Ljava/lang/Object;

    check-cast v0, Ls/i;

    check-cast p1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarMenuItem;

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/d;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureToolbar;->a(Ljava/util/ArrayList;Ls/i;Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarMenuItem;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
