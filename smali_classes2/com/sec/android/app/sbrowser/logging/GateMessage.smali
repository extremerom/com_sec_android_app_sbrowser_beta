.class public Lcom/sec/android/app/sbrowser/logging/GateMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static printGateMessage(I)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "GATE"

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "<GATE-M>BROWSER_CACHE_CLEARED</GATE-M>"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "<GATE-M>BROWSER_BOOKMARK_LOADED</GATE-M>"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p0, "<GATE-M>BROWSER_LOADING_ERROR</GATE-M>"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p0, "<GATE-M>BROWSER_LOAD_COMPLETED</GATE-M>"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string p0, "<GATE-M>BROWSER_LOADING</GATE-M>"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static printGateMessageForErrorCode(I)V
    .locals 2

    const/16 v0, -0x145

    const-string v1, "GATE"

    if-eq p0, v0, :cond_0

    const/16 v0, -0x144

    if-eq p0, v0, :cond_0

    const/16 v0, -0x141

    if-eq p0, v0, :cond_0

    const/16 v0, -0x140

    if-eq p0, v0, :cond_0

    const/16 v0, -0x137

    if-eq p0, v0, :cond_0

    const/16 v0, -0x136

    if-eq p0, v0, :cond_0

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :sswitch_0
    const-string p0, "<GATE-M>BROWSER_NETWORK_ERROR</GATE-M>"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :pswitch_1
    :sswitch_1
    const-string p0, "<GATE-M>BROWSER_SERVER_ERROR</GATE-M>"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x323 -> :sswitch_0
        -0x165 -> :sswitch_0
        -0x8a -> :sswitch_0
        -0x79 -> :sswitch_0
        -0x6f -> :sswitch_0
        -0x6d -> :sswitch_0
        -0x6a -> :sswitch_0
        -0x15 -> :sswitch_0
        -0xf -> :sswitch_0
        -0xc -> :sswitch_1
        -0xa -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch -0x68
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
