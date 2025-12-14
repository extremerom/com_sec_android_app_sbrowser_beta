.class public final synthetic Lcom/samsung/android/scs/ai/sdkcommon/tts/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/scs/ai/sdkcommon/tts/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/tts/a;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultMetaV2$Companion;->b()Landroid/os/Parcelable$Creator;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultMeta$Companion;->b()Landroid/os/Parcelable$Creator;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Lcom/samsung/android/vexfwk/param/VexFwkOcrAdditionalMeta$Companion;->b()Landroid/os/Parcelable$Creator;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode$Companion;->b()Landroid/os/Parcelable$Creator;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {}, Lcom/samsung/android/vexfwk/param/VexFwkImageTaggerResult$Companion;->b()Landroid/os/Parcelable$Creator;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {}, Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams$Companion;->b()Landroid/os/Parcelable$Creator;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {}, Lcom/samsung/android/vexfwk/param/VexFwkImageEffectParams$Companion;->b()Landroid/os/Parcelable$Creator;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {}, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1$Companion;->b()Landroid/os/Parcelable$Creator;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-static {}, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParams$Companion;->b()Landroid/os/Parcelable$Creator;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {}, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectFeature$Companion;->b()Landroid/os/Parcelable$Creator;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-static {}, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrResultVersion$Companion;->b()Landroid/os/Parcelable$Creator;

    move-result-object p0

    return-object p0

    :pswitch_a
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    :pswitch_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
