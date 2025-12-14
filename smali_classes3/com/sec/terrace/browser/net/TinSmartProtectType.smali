.class public Lcom/sec/terrace/browser/net/TinSmartProtectType;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getTypeDescription(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown"

    return-object p0

    :pswitch_0
    const-string p0, "Interstitial Page"

    return-object p0

    :pswitch_1
    const-string p0, "Abnormal Entry Increase"

    return-object p0

    :pswitch_2
    const-string p0, "Abnormal Popup Increase"

    return-object p0

    :pswitch_3
    const-string p0, "Popup On Unload"

    return-object p0

    :pswitch_4
    const-string p0, "Popup And Redirect"

    return-object p0

    :pswitch_5
    const-string p0, "Malicious Push Detected"

    return-object p0

    :pswitch_6
    const-string p0, "Malicious Push Not Detected"

    return-object p0

    :pswitch_7
    const-string p0, "Redirect Blocker"

    return-object p0

    :pswitch_data_0
    .packed-switch -0x3ef
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
