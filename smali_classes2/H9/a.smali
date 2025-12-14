.class public final synthetic LH9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/samsung/android/vexfwk/sdk/imagetranslator/VexFwkImageTranslator;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/samsung/android/vexfwk/sdk/imagetranslator/VexFwkImageTranslator;I)V
    .locals 0

    iput p3, p0, LH9/a;->a:I

    iput-object p1, p0, LH9/a;->b:Ljava/lang/String;

    iput-object p2, p0, LH9/a;->c:Lcom/samsung/android/vexfwk/sdk/imagetranslator/VexFwkImageTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LH9/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LH9/a;->b:Ljava/lang/String;

    iget-object p0, p0, LH9/a;->c:Lcom/samsung/android/vexfwk/sdk/imagetranslator/VexFwkImageTranslator;

    invoke-static {v0, p0}, Lcom/samsung/android/vexfwk/sdk/imagetranslator/VexFwkImageTranslator;->B(Ljava/lang/String;Lcom/samsung/android/vexfwk/sdk/imagetranslator/VexFwkImageTranslator;)Lcom/samsung/android/vexfwk/param/VexFwkLanguageCapabilities;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, LH9/a;->b:Ljava/lang/String;

    iget-object p0, p0, LH9/a;->c:Lcom/samsung/android/vexfwk/sdk/imagetranslator/VexFwkImageTranslator;

    invoke-static {v0, p0}, Lcom/samsung/android/vexfwk/sdk/imagetranslator/VexFwkImageTranslator;->h(Ljava/lang/String;Lcom/samsung/android/vexfwk/sdk/imagetranslator/VexFwkImageTranslator;)Lcom/samsung/android/vexfwk/param/VexFwkLanguageCapabilities;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
