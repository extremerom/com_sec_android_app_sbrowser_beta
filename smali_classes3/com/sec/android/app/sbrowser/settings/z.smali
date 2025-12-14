.class public final synthetic Lcom/sec/android/app/sbrowser/settings/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/z;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/z;->b:Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/z;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/z;->b:Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->i(Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;Ljava/lang/String;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceStyleFragment;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceStyleFragment;->i(Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceStyleFragment;Ljava/util/Map$Entry;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
