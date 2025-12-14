.class public final synthetic Lcom/samsung/android/scs/ai/sdkcommon/asr/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/a;->a:I

    iput p1, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/a;->a:I

    iget p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/a;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->c(ILcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->g(ILcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->a(ILcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Lcom/samsung/android/scs/ai/sdkcommon/asr/SpeechInfo;

    invoke-static {p0, p1}, Lcom/samsung/android/scs/ai/sdkcommon/asr/DialogInfo;->a(ILcom/samsung/android/scs/ai/sdkcommon/asr/SpeechInfo;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
