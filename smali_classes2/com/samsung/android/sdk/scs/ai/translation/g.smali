.class public final synthetic Lcom/samsung/android/sdk/scs/ai/translation/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/g;->a:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lj9/g;->a:Lj9/g;

    invoke-virtual {p0, p1}, Lj9/g;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isClosing()Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->c(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Landroid/view/MenuItem;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->a(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :pswitch_3
    check-cast p1, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;->i(Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;)Z

    move-result p0

    return p0

    :pswitch_4
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->e(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0

    :pswitch_5
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->a(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
