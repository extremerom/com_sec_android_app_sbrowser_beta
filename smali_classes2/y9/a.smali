.class public final synthetic Ly9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/nio/IntBuffer;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/IntBuffer;I)V
    .locals 0

    iput p2, p0, Ly9/a;->a:I

    iput-object p1, p0, Ly9/a;->b:Ljava/nio/IntBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ly9/a;->a:I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Ly9/a;->b:Ljava/nio/IntBuffer;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverSupportedModes$Companion;->a(Ljava/nio/IntBuffer;I)Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionSupportedTypes$Companion;->a(Ljava/nio/IntBuffer;I)Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectSupportedFeatures$Companion;->a(Ljava/nio/IntBuffer;I)Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectFeature;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
