.class public final synthetic Lba/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lba/b;->a:I

    iput-object p2, p0, Lba/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lba/b;->a:I

    iget-object p0, p0, Lba/b;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {p0, p1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->a(Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Ljava/lang/String;

    check-cast p1, Lorg/chromium/components/signin/test/util/AccountHolder;

    invoke-static {p0, p1}, Lorg/chromium/components/signin/test/util/FakeAccountManagerDelegate;->b(Ljava/lang/String;Lorg/chromium/components/signin/test/util/AccountHolder;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p0, LH9/e;

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->d(LH9/e;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p0, LH9/e;

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->b(LH9/e;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_3
    check-cast p0, LK9/f;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;->f(LK9/f;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_4
    check-cast p0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo;

    check-cast p1, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageInfo;

    invoke-static {p0, p1}, Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo;->a(Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo;Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageInfo;)Z

    move-result p0

    return p0

    :pswitch_5
    check-cast p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;

    check-cast p1, Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;

    invoke-static {p0, p1}, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;->a(Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsPackageInfo;)Z

    move-result p0

    return p0

    :pswitch_6
    check-cast p0, LK9/f;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsVoiceUtils;->g(LK9/f;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_7
    check-cast p0, Lba/c;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsVoiceUtils;->e(Lba/c;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_8
    check-cast p0, LK9/f;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsVoiceUtils;->f(LK9/f;Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
