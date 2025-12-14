.class public final synthetic Lg9/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg9/f;


# direct methods
.method public synthetic constructor <init>(Lg9/f;I)V
    .locals 0

    iput p2, p0, Lg9/e;->a:I

    iput-object p1, p0, Lg9/e;->b:Lg9/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lg9/e;->b:Lg9/f;

    iget p0, p0, Lg9/e;->a:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/samsung/android/sesl/visualeffect/ScanningEffectView;->t:I

    iget-object p0, v0, Lg9/f;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    return-void

    :pswitch_0
    sget p0, Lcom/samsung/android/sesl/visualeffect/ScanningEffectView;->t:I

    iget-object p0, v0, Lg9/f;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    return-void

    :pswitch_1
    sget p0, Lcom/samsung/android/sesl/visualeffect/ScanningEffectView;->t:I

    iget-object p0, v0, Lg9/f;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
